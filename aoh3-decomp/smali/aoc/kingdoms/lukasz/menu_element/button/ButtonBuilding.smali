.class public Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;
.super Laoc/kingdoms/lukasz/menu_element/MenuElement;
.source "ButtonBuilding.java"


# static fields
.field public static final COLOR_STATS:Lcom/badlogic/gdx/graphics/Color;

.field public static goldIconHeight:I = 0x0

.field public static goldIconWidth:I = 0x0

.field public static iconScale:F = 1.0f

.field public static timeIconHeight:I

.field public static timeIconWidth:I


# instance fields
.field public building:I

.field public buildingID:I

.field public built:Z

.field public colorBG:Lcom/badlogic/gdx/graphics/Color;

.field public colorBGOver:Lcom/badlogic/gdx/graphics/Color;

.field public iCostHeight:I

.field public iCostWidth:I

.field public iRecruitmentTimeHeight:I

.field public iRecruitmentTimeWidth:I

.field public iTextWidth:I

.field public sCost:Ljava/lang/String;

.field public sRecruitmentTime:Ljava/lang/String;

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

    sput-object v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->COLOR_STATS:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method public constructor <init>(ZIIIIIZZ)V
    .locals 5

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->iTextWidth:I

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->built:Z

    sget-object v1, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;->BUTTON:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    iput-object v1, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->typeOfElement:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    iput-boolean p1, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->built:Z

    iput p2, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->building:I

    iput p3, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->buildingID:I

    sget p1, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->fontID:I

    sget p1, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-direct {p0, p1}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->getImageScale(I)F

    move-result p1

    sput p1, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->iconScale:F

    sget p1, Laoc/kingdoms/lukasz/textures/Images;->buildTime:I

    invoke-static {p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result p1

    int-to-float p1, p1

    sget v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->iconScale:F

    mul-float/2addr p1, v1

    float-to-int p1, p1

    sput p1, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->timeIconWidth:I

    sget p1, Laoc/kingdoms/lukasz/textures/Images;->buildTime:I

    invoke-static {p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result p1

    int-to-float p1, p1

    sget v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->iconScale:F

    mul-float/2addr p1, v1

    float-to-int p1, p1

    sput p1, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->timeIconHeight:I

    sget p1, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-static {p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result p1

    int-to-float p1, p1

    sget v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->iconScale:F

    mul-float/2addr p1, v1

    float-to-int p1, p1

    sput p1, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->goldIconWidth:I

    sget p1, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-static {p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result p1

    int-to-float p1, p1

    sget v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->iconScale:F

    mul-float/2addr p1, v1

    float-to-int p1, p1

    sput p1, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->goldIconHeight:I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    const/4 v3, -0x1

    invoke-static {v2, v3, p2, p3}, Laoc/kingdoms/lukasz/jakowski/Game;->getBuildingConstructionTime(IIII)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->sRecruitmentTime:Ljava/lang/String;

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v4, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->sRecruitmentTime:Ljava/lang/String;

    invoke-virtual {p1, v2, v4}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget p1, p1, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int p1, p1

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->iRecruitmentTimeWidth:I

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget p1, p1, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->height:F

    float-to-int p1, p1

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->iRecruitmentTimeHeight:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v1, v3, p2, p3}, Laoc/kingdoms/lukasz/jakowski/Game;->getBuildingConstructionCost(IIII)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->sCost:Ljava/lang/String;

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->sCost:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget p1, p1, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int p1, p1

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->iCostWidth:I

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget p1, p1, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->height:F

    float-to-int p1, p1

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->iCostHeight:I

    invoke-virtual {p0, p4}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->setPosX(I)V

    invoke-virtual {p0, p5}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->setPosY(I)V

    invoke-virtual {p0, p6}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->setWidth(I)V

    sget p1, Laoc/kingdoms/lukasz/textures/Images;->buildingsFrame:I

    invoke-static {p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result p1

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->setHeight(I)V

    sget-object p1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object p1, p1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->Name:[Ljava/lang/String;

    aget-object p1, p1, p3

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->setText(Ljava/lang/String;)V

    invoke-virtual {p0, p7}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->setClickable(Z)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->setVisible(Z)V

    if-eqz p8, :cond_0

    sget-object p2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iput-object p2, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->colorBG:Lcom/badlogic/gdx/graphics/Color;

    sget-object p2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iput-object p2, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->colorBGOver:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_0

    :cond_0
    sget-object p2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG:Lcom/badlogic/gdx/graphics/Color;

    iput-object p2, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->colorBG:Lcom/badlogic/gdx/graphics/Color;

    sget-object p2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER:Lcom/badlogic/gdx/graphics/Color;

    iput-object p2, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->colorBGOver:Lcom/badlogic/gdx/graphics/Color;

    :goto_0
    move p2, v0

    :goto_1
    iget p3, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->iTextWidth:I

    if-le p3, p6, :cond_1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->getText()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    const/4 p4, 0x5

    if-le p3, p4, :cond_1

    add-int/2addr p2, p1

    const/16 p3, 0x64

    if-ge p2, p3, :cond_1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->getText()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->getText()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result p5

    add-int/lit8 p5, p5, -0x3

    invoke-static {p1, p5}, Ljava/lang/Math;->max(II)I

    move-result p5

    invoke-virtual {p4, v0, p5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, ".."

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->setText(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static getBuildingBonuses(IIII)Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)",
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/menu_element/MenuElement;",
            ">;"
        }
    .end annotation

    move/from16 v0, p0

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v11

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x4

    add-int v12, v1, v2

    sget-object v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->MonthlyIncome:[F

    const/16 v13, 0x64

    const-string v14, "+"

    const-string v15, ": "

    const-string v9, ""

    const/16 v16, 0x0

    if-eqz v1, :cond_1

    sget-object v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->MonthlyIncome:[F

    aget v1, v1, p1

    cmpl-float v1, v1, v16

    if-eqz v1, :cond_1

    new-instance v8, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "MonthlyIncome"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->MonthlyIncome:[F

    aget v3, v3, p1

    cmpl-float v3, v3, v16

    if-lez v3, :cond_0

    move-object v3, v14

    goto :goto_0

    :cond_0
    move-object v3, v9

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->MonthlyIncome:[F

    aget v3, v3, p1

    invoke-static {v3, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    const/4 v6, 0x0

    mul-int/lit8 v1, p2, 0x2

    sub-int v7, p3, v1

    move-object v1, v8

    move/from16 v5, p2

    move-object v13, v8

    move v8, v12

    move-object/from16 v17, v14

    move-object v14, v9

    move v9, v11

    invoke-direct/range {v1 .. v9}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    move-object/from16 v17, v14

    move-object v14, v9

    :goto_1
    sget-object v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->TaxEfficiency:[F

    const-string v13, "%"

    if-eqz v1, :cond_3

    sget-object v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->TaxEfficiency:[F

    aget v1, v1, p1

    cmpl-float v1, v1, v16

    if-eqz v1, :cond_3

    new-instance v9, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "TaxEfficiency"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->TaxEfficiency:[F

    aget v3, v3, p1

    cmpl-float v3, v3, v16

    if-lez v3, :cond_2

    move-object/from16 v3, v17

    goto :goto_2

    :cond_2
    move-object v3, v14

    :goto_2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->TaxEfficiency:[F

    aget v3, v3, p1

    const/16 v4, 0x64

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->tax:I

    const/4 v6, 0x0

    mul-int/lit8 v1, p2, 0x2

    sub-int v7, p3, v1

    move-object v1, v9

    move/from16 v5, p2

    move v8, v12

    move-object/from16 v18, v14

    move-object v14, v9

    move v9, v11

    invoke-direct/range {v1 .. v9}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    invoke-interface {v10, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    move-object/from16 v18, v14

    :goto_3
    sget-object v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->LocalTaxEfficiency:[F

    if-eqz v1, :cond_5

    sget-object v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->LocalTaxEfficiency:[F

    aget v1, v1, p1

    cmpl-float v1, v1, v16

    if-eqz v1, :cond_5

    new-instance v14, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "LocalTaxEfficiency"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->LocalTaxEfficiency:[F

    aget v3, v3, p1

    cmpl-float v3, v3, v16

    if-lez v3, :cond_4

    move-object/from16 v9, v17

    goto :goto_4

    :cond_4
    move-object/from16 v9, v18

    :goto_4
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->LocalTaxEfficiency:[F

    aget v3, v3, p1

    const/16 v4, 0x64

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->tax:I

    const/4 v6, 0x0

    mul-int/lit8 v1, p2, 0x2

    sub-int v7, p3, v1

    move-object v1, v14

    move/from16 v5, p2

    move v8, v12

    move v9, v11

    invoke-direct/range {v1 .. v9}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    invoke-interface {v10, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    sget-object v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->MaxInfrastructure:[I

    if-eqz v1, :cond_7

    sget-object v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->MaxInfrastructure:[I

    aget v1, v1, p1

    if-eqz v1, :cond_7

    new-instance v14, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "MaximumInfrastructureLevel"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->MaxInfrastructure:[I

    aget v3, v3, p1

    if-lez v3, :cond_6

    move-object/from16 v9, v17

    goto :goto_5

    :cond_6
    move-object/from16 v9, v18

    :goto_5
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->MaxInfrastructure:[I

    aget v3, v3, p1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->infrastructure:I

    const/4 v6, 0x0

    mul-int/lit8 v1, p2, 0x2

    sub-int v7, p3, v1

    move-object v1, v14

    move/from16 v5, p2

    move v8, v12

    move v9, v11

    invoke-direct/range {v1 .. v9}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    invoke-interface {v10, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    sget-object v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->BuildingSlots:[I

    if-eqz v1, :cond_9

    sget-object v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->BuildingSlots:[I

    aget v1, v1, p1

    if-eqz v1, :cond_9

    new-instance v14, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "BuildingSlots"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->BuildingSlots:[I

    aget v3, v3, p1

    if-lez v3, :cond_8

    move-object/from16 v9, v17

    goto :goto_6

    :cond_8
    move-object/from16 v9, v18

    :goto_6
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->BuildingSlots:[I

    aget v3, v3, p1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->build:I

    const/4 v6, 0x0

    mul-int/lit8 v1, p2, 0x2

    sub-int v7, p3, v1

    move-object v1, v14

    move/from16 v5, p2

    move v8, v12

    move v9, v11

    invoke-direct/range {v1 .. v9}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    invoke-interface {v10, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    sget-object v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->IncomeProduction:[F

    if-eqz v1, :cond_b

    sget-object v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->IncomeProduction:[F

    aget v1, v1, p1

    cmpl-float v1, v1, v16

    if-eqz v1, :cond_b

    new-instance v14, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "IncomeProduction"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->IncomeProduction:[F

    aget v3, v3, p1

    cmpl-float v3, v3, v16

    if-lez v3, :cond_a

    move-object/from16 v9, v17

    goto :goto_7

    :cond_a
    move-object/from16 v9, v18

    :goto_7
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->IncomeProduction:[F

    aget v3, v3, p1

    const/16 v4, 0x64

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->goods:I

    const/4 v6, 0x0

    mul-int/lit8 v1, p2, 0x2

    sub-int v7, p3, v1

    move-object v1, v14

    move/from16 v5, p2

    move v8, v12

    move v9, v11

    invoke-direct/range {v1 .. v9}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    invoke-interface {v10, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    sget-object v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ProductionEfficiency:[F

    if-eqz v1, :cond_d

    sget-object v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ProductionEfficiency:[F

    aget v1, v1, p1

    cmpl-float v1, v1, v16

    if-eqz v1, :cond_d

    new-instance v14, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "ProductionEfficiency"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ProductionEfficiency:[F

    aget v3, v3, p1

    cmpl-float v3, v3, v16

    if-lez v3, :cond_c

    move-object/from16 v9, v17

    goto :goto_8

    :cond_c
    move-object/from16 v9, v18

    :goto_8
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ProductionEfficiency:[F

    aget v3, v3, p1

    const/16 v4, 0x64

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->goods:I

    const/4 v6, 0x0

    mul-int/lit8 v1, p2, 0x2

    sub-int v7, p3, v1

    move-object v1, v14

    move/from16 v5, p2

    move v8, v12

    move v9, v11

    invoke-direct/range {v1 .. v9}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    invoke-interface {v10, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    sget-object v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ProvinceMaintenance:[F

    if-eqz v1, :cond_f

    sget-object v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ProvinceMaintenance:[F

    aget v1, v1, p1

    cmpl-float v1, v1, v16

    if-eqz v1, :cond_f

    new-instance v14, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const/4 v3, 0x0

    sget-object v3, Landroidx/core/internal/oiV/CoLRpi;->klEIP:Ljava/lang/String;

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ProvinceMaintenance:[F

    aget v3, v3, p1

    cmpl-float v3, v3, v16

    if-lez v3, :cond_e

    move-object/from16 v9, v17

    goto :goto_9

    :cond_e
    move-object/from16 v9, v18

    :goto_9
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ProvinceMaintenance:[F

    aget v3, v3, p1

    const/16 v4, 0x64

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    const/4 v6, 0x0

    mul-int/lit8 v1, p2, 0x2

    sub-int v7, p3, v1

    move-object v1, v14

    move/from16 v5, p2

    move v8, v12

    move v9, v11

    invoke-direct/range {v1 .. v9}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    invoke-interface {v10, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f
    sget-object v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->Economy:[F

    if-eqz v1, :cond_11

    sget-object v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->Economy:[F

    aget v1, v1, p1

    cmpl-float v1, v1, v16

    if-eqz v1, :cond_11

    new-instance v14, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "Economy"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->Economy:[F

    aget v3, v3, p1

    cmpl-float v3, v3, v16

    if-lez v3, :cond_10

    move-object/from16 v9, v17

    goto :goto_a

    :cond_10
    move-object/from16 v9, v18

    :goto_a
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->Economy:[F

    aget v3, v3, p1

    const/16 v4, 0x64

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_ECONOMY:I

    const/4 v6, 0x0

    mul-int/lit8 v1, p2, 0x2

    sub-int v7, p3, v1

    move-object v1, v14

    move/from16 v5, p2

    move v8, v12

    move v9, v11

    invoke-direct/range {v1 .. v9}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    invoke-interface {v10, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_11
    sget-object v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ConstructionCost:[I

    if-eqz v1, :cond_13

    sget-object v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ConstructionCost:[I

    aget v1, v1, p1

    if-eqz v1, :cond_13

    new-instance v14, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "ConstructionCost"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ConstructionCost:[I

    aget v3, v3, p1

    if-lez v3, :cond_12

    move-object/from16 v9, v17

    goto :goto_b

    :cond_12
    move-object/from16 v9, v18

    :goto_b
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ConstructionCost:[I

    aget v3, v3, p1

    const/16 v4, 0x64

    mul-int/2addr v3, v4

    int-to-float v3, v3

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->construction:I

    const/4 v6, 0x0

    mul-int/lit8 v1, p2, 0x2

    sub-int v7, p3, v1

    move-object v1, v14

    move/from16 v5, p2

    move v8, v12

    move v9, v11

    invoke-direct/range {v1 .. v9}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    invoke-interface {v10, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_13
    sget-object v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ConstructionTimeBonus:[I

    if-eqz v1, :cond_15

    sget-object v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ConstructionTimeBonus:[I

    aget v1, v1, p1

    if-eqz v1, :cond_15

    new-instance v14, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "ConstructionTime"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ConstructionTimeBonus:[I

    aget v3, v3, p1

    if-lez v3, :cond_14

    move-object/from16 v9, v17

    goto :goto_c

    :cond_14
    move-object/from16 v9, v18

    :goto_c
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ConstructionTimeBonus:[I

    aget v3, v3, p1

    const/16 v4, 0x64

    mul-int/2addr v3, v4

    int-to-float v3, v3

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->buildTime:I

    const/4 v6, 0x0

    mul-int/lit8 v1, p2, 0x2

    sub-int v7, p3, v1

    move-object v1, v14

    move/from16 v5, p2

    move v8, v12

    move v9, v11

    invoke-direct/range {v1 .. v9}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    invoke-interface {v10, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_15
    sget-object v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->LocalGrowthRate:[F

    if-eqz v1, :cond_17

    sget-object v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->LocalGrowthRate:[F

    aget v1, v1, p1

    cmpl-float v1, v1, v16

    if-eqz v1, :cond_17

    new-instance v14, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "LocalGrowthRate"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->LocalGrowthRate:[F

    aget v3, v3, p1

    cmpl-float v3, v3, v16

    if-lez v3, :cond_16

    move-object/from16 v9, v17

    goto :goto_d

    :cond_16
    move-object/from16 v9, v18

    :goto_d
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->LocalGrowthRate:[F

    aget v3, v3, p1

    const/16 v4, 0x64

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->populationGrowth:I

    const/4 v6, 0x0

    mul-int/lit8 v1, p2, 0x2

    sub-int v7, p3, v1

    move-object v1, v14

    move/from16 v5, p2

    move v8, v12

    move v9, v11

    invoke-direct/range {v1 .. v9}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    invoke-interface {v10, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_17
    sget-object v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->InvestInEconomyCost:[F

    const/high16 v14, 0x42c80000    # 100.0f

    if-eqz v1, :cond_19

    sget-object v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->InvestInEconomyCost:[F

    aget v1, v1, p1

    cmpl-float v1, v1, v16

    if-eqz v1, :cond_19

    new-instance v9, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "InvestInEconomyCost"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->InvestInEconomyCost:[F

    aget v3, v3, p1

    cmpl-float v3, v3, v16

    if-lez v3, :cond_18

    move-object/from16 v3, v17

    goto :goto_e

    :cond_18
    move-object/from16 v3, v18

    :goto_e
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->InvestInEconomyCost:[F

    aget v3, v3, p1

    mul-float/2addr v3, v14

    const/16 v4, 0x64

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_ECONOMY_UP:I

    const/4 v6, 0x0

    mul-int/lit8 v1, p2, 0x2

    sub-int v7, p3, v1

    move-object v1, v9

    move/from16 v5, p2

    move v8, v12

    move-object v14, v9

    move v9, v11

    invoke-direct/range {v1 .. v9}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    invoke-interface {v10, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_19
    sget-object v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->IncreaseGrowthRateCost:[F

    if-eqz v1, :cond_1b

    sget-object v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->IncreaseGrowthRateCost:[F

    aget v1, v1, p1

    cmpl-float v1, v1, v16

    if-eqz v1, :cond_1b

    new-instance v14, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "IncreaseGrowthRateCost"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->IncreaseGrowthRateCost:[F

    aget v3, v3, p1

    cmpl-float v3, v3, v16

    if-lez v3, :cond_1a

    move-object/from16 v9, v17

    goto :goto_f

    :cond_1a
    move-object/from16 v9, v18

    :goto_f
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->IncreaseGrowthRateCost:[F

    aget v3, v3, p1

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v3, v4

    const/16 v4, 0x64

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->populationUp:I

    const/4 v6, 0x0

    mul-int/lit8 v1, p2, 0x2

    sub-int v7, p3, v1

    move-object v1, v14

    move/from16 v5, p2

    move v8, v12

    move v9, v11

    invoke-direct/range {v1 .. v9}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    invoke-interface {v10, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1b
    sget-object v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->DevelopInfrastructureCost:[F

    if-eqz v1, :cond_1d

    sget-object v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->DevelopInfrastructureCost:[F

    aget v1, v1, p1

    cmpl-float v1, v1, v16

    if-eqz v1, :cond_1d

    new-instance v14, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "DevelopInfrastructureCost"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->DevelopInfrastructureCost:[F

    aget v3, v3, p1

    cmpl-float v3, v3, v16

    if-lez v3, :cond_1c

    move-object/from16 v9, v17

    goto :goto_10

    :cond_1c
    move-object/from16 v9, v18

    :goto_10
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->DevelopInfrastructureCost:[F

    aget v3, v3, p1

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v3, v4

    const/16 v4, 0x64

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->infrastructureUp:I

    const/4 v6, 0x0

    mul-int/lit8 v1, p2, 0x2

    sub-int v7, p3, v1

    move-object v1, v14

    move/from16 v5, p2

    move v8, v12

    move v9, v11

    invoke-direct/range {v1 .. v9}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    invoke-interface {v10, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1d
    sget-object v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->IncreaseManpowerCost:[F

    if-eqz v1, :cond_1f

    sget-object v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->IncreaseManpowerCost:[F

    aget v1, v1, p1

    cmpl-float v1, v1, v16

    if-eqz v1, :cond_1f

    new-instance v14, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "IncreaseManpowerCost"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->IncreaseManpowerCost:[F

    aget v3, v3, p1

    cmpl-float v3, v3, v16

    if-lez v3, :cond_1e

    move-object/from16 v9, v17

    goto :goto_11

    :cond_1e
    move-object/from16 v9, v18

    :goto_11
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->IncreaseManpowerCost:[F

    aget v3, v3, p1

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v3, v4

    const/16 v4, 0x64

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER_UP:I

    const/4 v6, 0x0

    mul-int/lit8 v1, p2, 0x2

    sub-int v7, p3, v1

    move-object v1, v14

    move/from16 v5, p2

    move v8, v12

    move v9, v11

    invoke-direct/range {v1 .. v9}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    invoke-interface {v10, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1f
    sget-object v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->IncreaseTaxEfficiencyCost:[F

    if-eqz v1, :cond_21

    sget-object v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->IncreaseTaxEfficiencyCost:[F

    aget v1, v1, p1

    cmpl-float v1, v1, v16

    if-eqz v1, :cond_21

    new-instance v14, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "IncreaseTaxEfficiencyCost"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->IncreaseTaxEfficiencyCost:[F

    aget v3, v3, p1

    cmpl-float v3, v3, v16

    if-lez v3, :cond_20

    move-object/from16 v9, v17

    goto :goto_12

    :cond_20
    move-object/from16 v9, v18

    :goto_12
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->IncreaseTaxEfficiencyCost:[F

    aget v3, v3, p1

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v3, v4

    const/16 v4, 0x64

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->taxUp:I

    const/4 v6, 0x0

    mul-int/lit8 v1, p2, 0x2

    sub-int v7, p3, v1

    move-object v1, v14

    move/from16 v5, p2

    move v8, v12

    move v9, v11

    invoke-direct/range {v1 .. v9}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    invoke-interface {v10, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_21
    sget-object v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ResearchPoints:[F

    if-eqz v1, :cond_23

    sget-object v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ResearchPoints:[F

    aget v1, v1, p1

    cmpl-float v1, v1, v16

    if-eqz v1, :cond_23

    new-instance v14, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "ResearchPerMonth"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ResearchPoints:[F

    aget v3, v3, p1

    cmpl-float v3, v3, v16

    if-lez v3, :cond_22

    move-object/from16 v9, v17

    goto :goto_13

    :cond_22
    move-object/from16 v9, v18

    :goto_13
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ResearchPoints:[F

    aget v3, v3, p1

    const/16 v4, 0x64

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_TECHNOLOGY:I

    const/4 v6, 0x0

    mul-int/lit8 v1, p2, 0x2

    sub-int v7, p3, v1

    move-object v1, v14

    move/from16 v5, p2

    move v8, v12

    move v9, v11

    invoke-direct/range {v1 .. v9}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    invoke-interface {v10, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_23
    sget-object v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->MonthlyLegacy:[F

    if-eqz v1, :cond_25

    sget-object v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->MonthlyLegacy:[F

    aget v1, v1, p1

    cmpl-float v1, v1, v16

    if-eqz v1, :cond_25

    new-instance v14, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "MonthlyLegacy"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->MonthlyLegacy:[F

    aget v3, v3, p1

    cmpl-float v3, v3, v16

    if-lez v3, :cond_24

    move-object/from16 v9, v17

    goto :goto_14

    :cond_24
    move-object/from16 v9, v18

    :goto_14
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->MonthlyLegacy:[F

    aget v3, v3, p1

    const/16 v4, 0x64

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->legacy:I

    const/4 v6, 0x0

    mul-int/lit8 v1, p2, 0x2

    sub-int v7, p3, v1

    move-object v1, v14

    move/from16 v5, p2

    move v8, v12

    move v9, v11

    invoke-direct/range {v1 .. v9}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    invoke-interface {v10, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_25
    sget-object v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->MaximumManpower:[I

    const/4 v14, 0x1

    if-eqz v1, :cond_27

    sget-object v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->MaximumManpower:[I

    aget v1, v1, p1

    if-eqz v1, :cond_27

    new-instance v9, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "MaximumManpower"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->MaximumManpower:[I

    aget v3, v3, p1

    if-lez v3, :cond_26

    move-object/from16 v3, v17

    goto :goto_15

    :cond_26
    move-object/from16 v3, v18

    :goto_15
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->MaximumManpower:[I

    aget v3, v3, p1

    int-to-float v3, v3

    invoke-static {v3, v14}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER_UP:I

    const/4 v6, 0x0

    mul-int/lit8 v1, p2, 0x2

    sub-int v7, p3, v1

    move-object v1, v9

    move/from16 v5, p2

    move v8, v12

    move-object v14, v9

    move v9, v11

    invoke-direct/range {v1 .. v9}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    invoke-interface {v10, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_27
    sget-object v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->LocalManpower:[F

    if-eqz v1, :cond_29

    sget-object v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->LocalManpower:[F

    aget v1, v1, p1

    cmpl-float v1, v1, v16

    if-eqz v1, :cond_29

    new-instance v14, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "LocalManpower"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->LocalManpower:[F

    aget v3, v3, p1

    cmpl-float v3, v3, v16

    if-lez v3, :cond_28

    move-object/from16 v9, v17

    goto :goto_16

    :cond_28
    move-object/from16 v9, v18

    :goto_16
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->LocalManpower:[F

    aget v3, v3, p1

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v3, v4

    const/4 v4, 0x1

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER_UP:I

    const/4 v6, 0x0

    mul-int/lit8 v1, p2, 0x2

    sub-int v7, p3, v1

    move-object v1, v14

    move/from16 v5, p2

    move v8, v12

    move v9, v11

    invoke-direct/range {v1 .. v9}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    invoke-interface {v10, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_29
    sget-object v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RecruitArmyCostInProvince:[F

    if-eqz v1, :cond_2b

    sget-object v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RecruitArmyCostInProvince:[F

    aget v1, v1, p1

    cmpl-float v1, v1, v16

    if-eqz v1, :cond_2b

    new-instance v14, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "ArmyRecruitmentCostInProvince"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RecruitArmyCostInProvince:[F

    aget v3, v3, p1

    cmpl-float v3, v3, v16

    if-lez v3, :cond_2a

    move-object/from16 v9, v17

    goto :goto_17

    :cond_2a
    move-object/from16 v9, v18

    :goto_17
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RecruitArmyCostInProvince:[F

    aget v3, v3, p1

    const/16 v4, 0x64

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    const/4 v6, 0x0

    mul-int/lit8 v1, p2, 0x2

    sub-int v7, p3, v1

    move-object v1, v14

    move/from16 v5, p2

    move v8, v12

    move v9, v11

    invoke-direct/range {v1 .. v9}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    invoke-interface {v10, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2b
    sget-object v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->DefenseBonus:[I

    if-eqz v1, :cond_2d

    sget-object v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->DefenseBonus:[I

    aget v1, v1, p1

    if-eqz v1, :cond_2d

    new-instance v14, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "DefenseBonus"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->DefenseBonus:[I

    aget v3, v3, p1

    if-lez v3, :cond_2c

    move-object/from16 v9, v17

    goto :goto_18

    :cond_2c
    move-object/from16 v9, v18

    :goto_18
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->DefenseBonus:[I

    aget v3, v3, p1

    int-to-float v3, v3

    const/16 v4, 0x64

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->defense:I

    const/4 v6, 0x0

    mul-int/lit8 v1, p2, 0x2

    sub-int v7, p3, v1

    move-object v1, v14

    move/from16 v5, p2

    move v8, v12

    move v9, v11

    invoke-direct/range {v1 .. v9}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    invoke-interface {v10, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2d
    sget-object v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->FortLevel:[I

    if-eqz v1, :cond_2f

    sget-object v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->FortLevel:[I

    aget v1, v1, p1

    if-eqz v1, :cond_2f

    new-instance v14, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "DefenseLevel"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->FortLevel:[I

    aget v3, v3, p1

    if-lez v3, :cond_2e

    move-object/from16 v9, v17

    goto :goto_19

    :cond_2e
    move-object/from16 v9, v18

    :goto_19
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->FortLevel:[I

    aget v3, v3, p1

    int-to-float v3, v3

    const/16 v4, 0x64

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->fort:I

    const/4 v6, 0x0

    mul-int/lit8 v1, p2, 0x2

    sub-int v7, p3, v1

    move-object v1, v14

    move/from16 v5, p2

    move v8, v12

    move v9, v11

    invoke-direct/range {v1 .. v9}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    invoke-interface {v10, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2f
    sget-object v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->FortDefense:[I

    if-eqz v1, :cond_31

    sget-object v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->FortDefense:[I

    aget v1, v1, p1

    if-eqz v1, :cond_31

    new-instance v14, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "ProvinceDefense"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v9, v18

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->FortDefense:[I

    aget v3, v3, p1

    if-lez v3, :cond_30

    move-object/from16 v3, v17

    goto :goto_1a

    :cond_30
    move-object v3, v9

    :goto_1a
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->FortDefense:[I

    aget v3, v3, p1

    int-to-float v3, v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_FORT_DEFENSE:I

    const/4 v6, 0x0

    mul-int/lit8 v1, p2, 0x2

    sub-int v7, p3, v1

    move-object v1, v14

    move/from16 v5, p2

    move v8, v12

    move/from16 v18, v12

    move-object v12, v9

    move v9, v11

    invoke-direct/range {v1 .. v9}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    invoke-interface {v10, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    :cond_31
    move-object/from16 v19, v18

    move/from16 v18, v12

    move-object/from16 v12, v19

    :goto_1b
    sget-object v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ArmyMovementSpeed:[F

    if-eqz v1, :cond_33

    sget-object v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ArmyMovementSpeed:[F

    aget v1, v1, p1

    cmpl-float v1, v1, v16

    if-eqz v1, :cond_33

    new-instance v14, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "ArmyMovementSpeed"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ArmyMovementSpeed:[F

    aget v3, v3, p1

    cmpl-float v3, v3, v16

    if-lez v3, :cond_32

    move-object/from16 v9, v17

    goto :goto_1c

    :cond_32
    move-object v9, v12

    :goto_1c
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ArmyMovementSpeed:[F

    aget v3, v3, p1

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v3, v4

    const/16 v4, 0x64

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->movementSpeed:I

    const/4 v6, 0x0

    mul-int/lit8 v1, p2, 0x2

    sub-int v7, p3, v1

    move-object v1, v14

    move/from16 v5, p2

    move/from16 v8, v18

    move v9, v11

    invoke-direct/range {v1 .. v9}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    invoke-interface {v10, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_33
    sget-object v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->CasualtiesNuclearAttacks:[F

    if-eqz v1, :cond_35

    sget-object v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->CasualtiesNuclearAttacks:[F

    aget v1, v1, p1

    cmpl-float v1, v1, v16

    if-eqz v1, :cond_35

    new-instance v14, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "CasualtiesFromNuclearAttacks"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->CasualtiesNuclearAttacks:[F

    aget v3, v3, p1

    cmpl-float v3, v3, v16

    if-lez v3, :cond_34

    move-object/from16 v9, v17

    goto :goto_1d

    :cond_34
    move-object v9, v12

    :goto_1d
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->CasualtiesNuclearAttacks:[F

    aget v3, v3, p1

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v3, v4

    const/16 v4, 0x64

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->nuke:I

    const/4 v6, 0x0

    mul-int/lit8 v1, p2, 0x2

    sub-int v7, p3, v1

    move-object v1, v14

    move/from16 v5, p2

    move/from16 v8, v18

    move v9, v11

    invoke-direct/range {v1 .. v9}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    invoke-interface {v10, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_35
    sget-object v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->DiseaseDeathRate:[F

    if-eqz v1, :cond_37

    sget-object v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->DiseaseDeathRate:[F

    aget v1, v1, p1

    cmpl-float v1, v1, v16

    if-eqz v1, :cond_37

    new-instance v9, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "DiseasesDeathRate"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->DiseaseDeathRate:[F

    aget v3, v3, p1

    cmpl-float v3, v3, v16

    if-lez v3, :cond_36

    move-object/from16 v14, v17

    goto :goto_1e

    :cond_36
    move-object v14, v12

    :goto_1e
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->DiseaseDeathRate:[F

    aget v0, v0, p1

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v0, v3

    const/16 v3, 0x64

    invoke-static {v0, v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->disease:I

    const/4 v5, 0x0

    mul-int/lit8 v0, p2, 0x2

    sub-int v6, p3, v0

    move-object v0, v9

    move/from16 v4, p2

    move/from16 v7, v18

    move v8, v11

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_37
    return-object v10
.end method

.method public static getHoverBuilding(IIZ)Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;
    .locals 22

    move/from16 v0, p0

    move/from16 v1, p1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_0

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle_BG_Center;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v6, "Back"

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    sget-object v7, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v4, v5, v6, v7}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle_BG_Center;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v4, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    :cond_0
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle;

    sget-object v5, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->Name:[Ljava/lang/String;

    aget-object v5, v5, v1

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    sget-object v7, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v4, v5, v6, v7}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v4, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    sget-object v4, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v4, v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredResource:I

    if-gez v4, :cond_1

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text_Desc;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    sget-object v6, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->NameDesc:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v7, Laoc/kingdoms/lukasz/menu/Colors;->BUTTON_TEXT_BRIGHT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v4, v5, v6, v7}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text_Desc;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v4, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    :cond_1
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Line;

    invoke-direct {v4}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Line;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v4, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    sget-object v4, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->MonthlyIncome:[F

    const/16 v5, 0x64

    const-string v6, "+"

    const-string v7, ": "

    const/4 v8, 0x0

    const-string v9, ""

    if-eqz v4, :cond_3

    sget-object v4, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->MonthlyIncome:[F

    aget v4, v4, v1

    cmpl-float v4, v4, v8

    if-eqz v4, :cond_3

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "MonthlyIncome"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->MonthlyIncome:[F

    aget v12, v12, v1

    cmpl-float v12, v12, v8

    if-lez v12, :cond_2

    move-object v12, v6

    goto :goto_0

    :cond_2
    move-object v12, v9

    :goto_0
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v12, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->MonthlyIncome:[F

    aget v12, v12, v1

    invoke-static {v12, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    sget v13, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v15, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v16, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v17, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    move-object v10, v4

    invoke-direct/range {v10 .. v17}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v4, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    :cond_3
    sget-object v4, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->TaxEfficiency:[F

    const-string v10, "%"

    if-eqz v4, :cond_5

    sget-object v4, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->TaxEfficiency:[F

    aget v4, v4, v1

    cmpl-float v4, v4, v8

    if-eqz v4, :cond_5

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const/4 v13, 0x0

    sget-object v13, Lcom/badlogic/gdx/net/otUh/aBEBOpwLZcQFCZ;->quMQZcmT:Ljava/lang/String;

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v13, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->TaxEfficiency:[F

    aget v13, v13, v1

    cmpl-float v13, v13, v8

    if-lez v13, :cond_4

    move-object v13, v6

    goto :goto_1

    :cond_4
    move-object v13, v9

    :goto_1
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v13, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->TaxEfficiency:[F

    aget v13, v13, v1

    invoke-static {v13, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    sget v14, Laoc/kingdoms/lukasz/textures/Images;->tax:I

    sget v15, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v16, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v17, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v18, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    move-object v11, v4

    invoke-direct/range {v11 .. v18}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v4, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    :cond_5
    sget-object v4, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->LocalTaxEfficiency:[F

    if-eqz v4, :cond_7

    sget-object v4, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->LocalTaxEfficiency:[F

    aget v4, v4, v1

    cmpl-float v4, v4, v8

    if-eqz v4, :cond_7

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v13, "LocalTaxEfficiency"

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v13, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->LocalTaxEfficiency:[F

    aget v13, v13, v1

    cmpl-float v13, v13, v8

    if-lez v13, :cond_6

    move-object v13, v6

    goto :goto_2

    :cond_6
    move-object v13, v9

    :goto_2
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v13, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->LocalTaxEfficiency:[F

    aget v13, v13, v1

    invoke-static {v13, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    sget v14, Laoc/kingdoms/lukasz/textures/Images;->tax:I

    sget v15, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v16, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v17, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v18, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    move-object v11, v4

    invoke-direct/range {v11 .. v18}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v4, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    :cond_7
    sget-object v4, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->MaxInfrastructure:[I

    if-eqz v4, :cond_9

    sget-object v4, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->MaxInfrastructure:[I

    aget v4, v4, v1

    if-eqz v4, :cond_9

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v13, "MaximumInfrastructureLevel"

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v13, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->MaxInfrastructure:[I

    aget v13, v13, v1

    if-lez v13, :cond_8

    move-object v13, v6

    goto :goto_3

    :cond_8
    move-object v13, v9

    :goto_3
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v13, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->MaxInfrastructure:[I

    aget v13, v13, v1

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    sget v14, Laoc/kingdoms/lukasz/textures/Images;->infrastructure:I

    sget v15, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v16, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v17, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v18, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    move-object v11, v4

    invoke-direct/range {v11 .. v18}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v4, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    :cond_9
    sget-object v4, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->BuildingSlots:[I

    if-eqz v4, :cond_b

    sget-object v4, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->BuildingSlots:[I

    aget v4, v4, v1

    if-eqz v4, :cond_b

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v13, "BuildingSlots"

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v13, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->BuildingSlots:[I

    aget v13, v13, v1

    if-lez v13, :cond_a

    move-object v13, v6

    goto :goto_4

    :cond_a
    move-object v13, v9

    :goto_4
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v13, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->BuildingSlots:[I

    aget v13, v13, v1

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    sget v14, Laoc/kingdoms/lukasz/textures/Images;->build:I

    sget v15, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v16, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v17, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v18, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    move-object v11, v4

    invoke-direct/range {v11 .. v18}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v4, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    :cond_b
    sget-object v4, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->IncomeProduction:[F

    if-eqz v4, :cond_d

    sget-object v4, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->IncomeProduction:[F

    aget v4, v4, v1

    cmpl-float v4, v4, v8

    if-eqz v4, :cond_d

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v13, "IncomeProduction"

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v13, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->IncomeProduction:[F

    aget v13, v13, v1

    cmpl-float v13, v13, v8

    if-lez v13, :cond_c

    move-object v13, v6

    goto :goto_5

    :cond_c
    move-object v13, v9

    :goto_5
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v13, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->IncomeProduction:[F

    aget v13, v13, v1

    invoke-static {v13, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    sget v14, Laoc/kingdoms/lukasz/textures/Images;->goods:I

    sget v15, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v16, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v17, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v18, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    move-object v11, v4

    invoke-direct/range {v11 .. v18}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v4, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    :cond_d
    sget-object v4, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ProductionEfficiency:[F

    if-eqz v4, :cond_f

    sget-object v4, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ProductionEfficiency:[F

    aget v4, v4, v1

    cmpl-float v4, v4, v8

    if-eqz v4, :cond_f

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v13, "ProductionEfficiency"

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v13, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ProductionEfficiency:[F

    aget v13, v13, v1

    cmpl-float v13, v13, v8

    if-lez v13, :cond_e

    move-object v13, v6

    goto :goto_6

    :cond_e
    move-object v13, v9

    :goto_6
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v13, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ProductionEfficiency:[F

    aget v13, v13, v1

    invoke-static {v13, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    sget v14, Laoc/kingdoms/lukasz/textures/Images;->goods:I

    sget v15, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v16, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v17, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v18, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    move-object v11, v4

    invoke-direct/range {v11 .. v18}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v4, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    :cond_f
    sget-object v4, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ProvinceMaintenance:[F

    if-eqz v4, :cond_11

    sget-object v4, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ProvinceMaintenance:[F

    aget v4, v4, v1

    cmpl-float v4, v4, v8

    if-eqz v4, :cond_11

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v13, "ProvinceMaintenance"

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v13, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ProvinceMaintenance:[F

    aget v13, v13, v1

    cmpl-float v13, v13, v8

    if-lez v13, :cond_10

    move-object v13, v6

    goto :goto_7

    :cond_10
    move-object v13, v9

    :goto_7
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v13, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ProvinceMaintenance:[F

    aget v13, v13, v1

    invoke-static {v13, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    sget v14, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    sget v15, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v16, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v17, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v18, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    move-object v11, v4

    invoke-direct/range {v11 .. v18}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v4, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    :cond_11
    sget-object v4, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->Economy:[F

    if-eqz v4, :cond_13

    sget-object v4, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->Economy:[F

    aget v4, v4, v1

    cmpl-float v4, v4, v8

    if-eqz v4, :cond_13

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v13, "Economy"

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v13, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->Economy:[F

    aget v13, v13, v1

    cmpl-float v13, v13, v8

    if-lez v13, :cond_12

    move-object v13, v6

    goto :goto_8

    :cond_12
    move-object v13, v9

    :goto_8
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v13, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->Economy:[F

    aget v13, v13, v1

    invoke-static {v13, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    sget v14, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_ECONOMY:I

    sget v15, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v16, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v17, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v18, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    move-object v11, v4

    invoke-direct/range {v11 .. v18}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v4, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    :cond_13
    sget-object v4, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ConstructionCost:[I

    if-eqz v4, :cond_15

    sget-object v4, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ConstructionCost:[I

    aget v4, v4, v1

    if-eqz v4, :cond_15

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v13, "ConstructionCost"

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v13, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ConstructionCost:[I

    aget v13, v13, v1

    if-lez v13, :cond_14

    move-object v13, v6

    goto :goto_9

    :cond_14
    move-object v13, v9

    :goto_9
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v13, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ConstructionCost:[I

    aget v13, v13, v1

    mul-int/2addr v13, v5

    int-to-float v13, v13

    invoke-static {v13, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    sget v14, Laoc/kingdoms/lukasz/textures/Images;->construction:I

    sget v15, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v16, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v17, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v18, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    move-object v11, v4

    invoke-direct/range {v11 .. v18}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v4, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    :cond_15
    sget-object v4, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ConstructionTimeBonus:[I

    const-string v11, "ConstructionTime"

    if-eqz v4, :cond_17

    sget-object v4, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ConstructionTimeBonus:[I

    aget v4, v4, v1

    if-eqz v4, :cond_17

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v13, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v14, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ConstructionTimeBonus:[I

    aget v14, v14, v1

    if-lez v14, :cond_16

    move-object v14, v6

    goto :goto_a

    :cond_16
    move-object v14, v9

    :goto_a
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v14, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ConstructionTimeBonus:[I

    aget v14, v14, v1

    mul-int/2addr v14, v5

    int-to-float v14, v14

    invoke-static {v14, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget v15, Laoc/kingdoms/lukasz/textures/Images;->buildTime:I

    sget v16, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v17, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v18, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v19, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    move-object v12, v4

    invoke-direct/range {v12 .. v19}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v4, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    :cond_17
    sget-object v4, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->LocalGrowthRate:[F

    if-eqz v4, :cond_19

    sget-object v4, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->LocalGrowthRate:[F

    aget v4, v4, v1

    cmpl-float v4, v4, v8

    if-eqz v4, :cond_19

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v14, "LocalGrowthRate"

    invoke-virtual {v13, v14}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v14, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->LocalGrowthRate:[F

    aget v14, v14, v1

    cmpl-float v14, v14, v8

    if-lez v14, :cond_18

    move-object v14, v6

    goto :goto_b

    :cond_18
    move-object v14, v9

    :goto_b
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v14, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->LocalGrowthRate:[F

    aget v14, v14, v1

    invoke-static {v14, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget v15, Laoc/kingdoms/lukasz/textures/Images;->populationGrowth:I

    sget v16, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v17, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v18, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v19, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    move-object v12, v4

    invoke-direct/range {v12 .. v19}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v4, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    :cond_19
    sget-object v4, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->InvestInEconomyCost:[F

    const/high16 v12, 0x42c80000    # 100.0f

    if-eqz v4, :cond_1b

    sget-object v4, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->InvestInEconomyCost:[F

    aget v4, v4, v1

    cmpl-float v4, v4, v8

    if-eqz v4, :cond_1b

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v15, "InvestInEconomyCost"

    invoke-virtual {v14, v15}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v15, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v15, v15, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->InvestInEconomyCost:[F

    aget v15, v15, v1

    cmpl-float v15, v15, v8

    if-lez v15, :cond_1a

    move-object v15, v6

    goto :goto_c

    :cond_1a
    move-object v15, v9

    :goto_c
    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v15, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v15, v15, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->InvestInEconomyCost:[F

    aget v15, v15, v1

    mul-float/2addr v15, v12

    invoke-static {v15, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    sget v16, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_ECONOMY_UP:I

    sget v17, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v18, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v19, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v20, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    move-object v13, v4

    invoke-direct/range {v13 .. v20}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v4, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    :cond_1b
    sget-object v4, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->IncreaseGrowthRateCost:[F

    if-eqz v4, :cond_1d

    sget-object v4, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->IncreaseGrowthRateCost:[F

    aget v4, v4, v1

    cmpl-float v4, v4, v8

    if-eqz v4, :cond_1d

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v15, "IncreaseGrowthRateCost"

    invoke-virtual {v14, v15}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v15, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v15, v15, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->IncreaseGrowthRateCost:[F

    aget v15, v15, v1

    cmpl-float v15, v15, v8

    if-lez v15, :cond_1c

    move-object v15, v6

    goto :goto_d

    :cond_1c
    move-object v15, v9

    :goto_d
    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v15, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v15, v15, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->IncreaseGrowthRateCost:[F

    aget v15, v15, v1

    mul-float/2addr v15, v12

    invoke-static {v15, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    sget v16, Laoc/kingdoms/lukasz/textures/Images;->populationUp:I

    sget v17, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v18, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v19, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v20, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    move-object v13, v4

    invoke-direct/range {v13 .. v20}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v4, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    :cond_1d
    sget-object v4, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->DevelopInfrastructureCost:[F

    if-eqz v4, :cond_1f

    sget-object v4, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->DevelopInfrastructureCost:[F

    aget v4, v4, v1

    cmpl-float v4, v4, v8

    if-eqz v4, :cond_1f

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v15, "DevelopInfrastructureCost"

    invoke-virtual {v14, v15}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v15, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v15, v15, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->DevelopInfrastructureCost:[F

    aget v15, v15, v1

    cmpl-float v15, v15, v8

    if-lez v15, :cond_1e

    move-object v15, v6

    goto :goto_e

    :cond_1e
    move-object v15, v9

    :goto_e
    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v15, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v15, v15, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->DevelopInfrastructureCost:[F

    aget v15, v15, v1

    mul-float/2addr v15, v12

    invoke-static {v15, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    sget v16, Laoc/kingdoms/lukasz/textures/Images;->infrastructureUp:I

    sget v17, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v18, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v19, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v20, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    move-object v13, v4

    invoke-direct/range {v13 .. v20}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v4, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    :cond_1f
    sget-object v4, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->IncreaseManpowerCost:[F

    if-eqz v4, :cond_21

    sget-object v4, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->IncreaseManpowerCost:[F

    aget v4, v4, v1

    cmpl-float v4, v4, v8

    if-eqz v4, :cond_21

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v15, "IncreaseManpowerCost"

    invoke-virtual {v14, v15}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v15, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v15, v15, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->IncreaseManpowerCost:[F

    aget v15, v15, v1

    cmpl-float v15, v15, v8

    if-lez v15, :cond_20

    move-object v15, v6

    goto :goto_f

    :cond_20
    move-object v15, v9

    :goto_f
    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v15, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v15, v15, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->IncreaseManpowerCost:[F

    aget v15, v15, v1

    mul-float/2addr v15, v12

    invoke-static {v15, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    sget v16, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER_UP:I

    sget v17, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v18, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v19, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v20, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    move-object v13, v4

    invoke-direct/range {v13 .. v20}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v4, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    :cond_21
    sget-object v4, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->IncreaseTaxEfficiencyCost:[F

    if-eqz v4, :cond_23

    sget-object v4, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->IncreaseTaxEfficiencyCost:[F

    aget v4, v4, v1

    cmpl-float v4, v4, v8

    if-eqz v4, :cond_23

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v15, "IncreaseTaxEfficiencyCost"

    invoke-virtual {v14, v15}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v15, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v15, v15, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->IncreaseTaxEfficiencyCost:[F

    aget v15, v15, v1

    cmpl-float v15, v15, v8

    if-lez v15, :cond_22

    move-object v15, v6

    goto :goto_10

    :cond_22
    move-object v15, v9

    :goto_10
    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v15, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v15, v15, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->IncreaseTaxEfficiencyCost:[F

    aget v15, v15, v1

    mul-float/2addr v15, v12

    invoke-static {v15, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    sget v16, Laoc/kingdoms/lukasz/textures/Images;->taxUp:I

    sget v17, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v18, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v19, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v20, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    move-object v13, v4

    invoke-direct/range {v13 .. v20}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v4, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    :cond_23
    sget-object v4, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ResearchPoints:[F

    if-eqz v4, :cond_25

    sget-object v4, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ResearchPoints:[F

    aget v4, v4, v1

    cmpl-float v4, v4, v8

    if-eqz v4, :cond_25

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v15, "ResearchPerMonth"

    invoke-virtual {v14, v15}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v15, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v15, v15, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ResearchPoints:[F

    aget v15, v15, v1

    cmpl-float v15, v15, v8

    if-lez v15, :cond_24

    move-object v15, v6

    goto :goto_11

    :cond_24
    move-object v15, v9

    :goto_11
    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v15, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v15, v15, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ResearchPoints:[F

    aget v15, v15, v1

    invoke-static {v15, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    sget v16, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_TECHNOLOGY:I

    sget v17, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v18, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v19, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v20, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    move-object v13, v4

    invoke-direct/range {v13 .. v20}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v4, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    :cond_25
    sget-object v4, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->MonthlyLegacy:[F

    if-eqz v4, :cond_27

    sget-object v4, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->MonthlyLegacy:[F

    aget v4, v4, v1

    cmpl-float v4, v4, v8

    if-eqz v4, :cond_27

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const/4 v15, 0x0

    sget-object v15, Lcom/badlogic/gdx/assets/loaders/Wkvw/nEtnPpUF;->hgfOTtNxRMc:Ljava/lang/String;

    invoke-virtual {v14, v15}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v15, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v15, v15, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->MonthlyLegacy:[F

    aget v15, v15, v1

    cmpl-float v15, v15, v8

    if-lez v15, :cond_26

    move-object v15, v6

    goto :goto_12

    :cond_26
    move-object v15, v9

    :goto_12
    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v15, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v15, v15, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->MonthlyLegacy:[F

    aget v15, v15, v1

    invoke-static {v15, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    sget v16, Laoc/kingdoms/lukasz/textures/Images;->legacy:I

    sget v17, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v18, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v19, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v20, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    move-object v13, v4

    invoke-direct/range {v13 .. v20}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v4, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    :cond_27
    sget-object v4, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->MaximumManpower:[I

    const/4 v13, 0x1

    if-eqz v4, :cond_29

    sget-object v4, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->MaximumManpower:[I

    aget v4, v4, v1

    if-eqz v4, :cond_29

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const/4 v5, 0x0

    sget-object v5, Lcom/badlogic/gdx/backends/android/surfaceview/JuyF/CvuNnwgYwe;->vypCQFVieayOqJ:Ljava/lang/String;

    invoke-virtual {v15, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v14, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->MaximumManpower:[I

    aget v14, v14, v1

    if-lez v14, :cond_28

    move-object v14, v6

    goto :goto_13

    :cond_28
    move-object v14, v9

    :goto_13
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v14, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->MaximumManpower:[I

    aget v14, v14, v1

    int-to-float v14, v14

    invoke-static {v14, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    sget v17, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER_UP:I

    sget v18, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v19, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v20, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v21, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    move-object v14, v4

    invoke-direct/range {v14 .. v21}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v4, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    :cond_29
    sget-object v4, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->LocalManpower:[F

    if-eqz v4, :cond_2b

    sget-object v4, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->LocalManpower:[F

    aget v4, v4, v1

    cmpl-float v4, v4, v8

    if-eqz v4, :cond_2b

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v15, "LocalManpower"

    invoke-virtual {v14, v15}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v14, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->LocalManpower:[F

    aget v14, v14, v1

    cmpl-float v14, v14, v8

    if-lez v14, :cond_2a

    move-object v14, v6

    goto :goto_14

    :cond_2a
    move-object v14, v9

    :goto_14
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v14, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->LocalManpower:[F

    aget v14, v14, v1

    mul-float/2addr v14, v12

    invoke-static {v14, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    sget v17, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER_UP:I

    sget v18, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v19, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v20, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v21, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    move-object v14, v4

    invoke-direct/range {v14 .. v21}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v4, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    :cond_2b
    sget-object v4, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RecruitArmyCostInProvince:[F

    if-eqz v4, :cond_2d

    sget-object v4, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RecruitArmyCostInProvince:[F

    aget v4, v4, v1

    cmpl-float v4, v4, v8

    if-eqz v4, :cond_2d

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v15, "ArmyRecruitmentCostInProvince"

    invoke-virtual {v14, v15}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v14, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RecruitArmyCostInProvince:[F

    aget v14, v14, v1

    cmpl-float v14, v14, v8

    if-lez v14, :cond_2c

    move-object v14, v6

    goto :goto_15

    :cond_2c
    move-object v14, v9

    :goto_15
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v14, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RecruitArmyCostInProvince:[F

    aget v14, v14, v1

    const/16 v12, 0x64

    invoke-static {v14, v12}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    sget v17, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    sget v18, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v19, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v20, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v21, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    move-object v14, v4

    invoke-direct/range {v14 .. v21}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v4, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    :cond_2d
    sget-object v4, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->DefenseBonus:[I

    if-eqz v4, :cond_2f

    sget-object v4, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->DefenseBonus:[I

    aget v4, v4, v1

    if-eqz v4, :cond_2f

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v14, "DefenseBonus"

    invoke-virtual {v12, v14}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v12, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->DefenseBonus:[I

    aget v12, v12, v1

    if-lez v12, :cond_2e

    move-object v12, v6

    goto :goto_16

    :cond_2e
    move-object v12, v9

    :goto_16
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v12, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->DefenseBonus:[I

    aget v12, v12, v1

    int-to-float v12, v12

    const/16 v14, 0x64

    invoke-static {v12, v14}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    sget v17, Laoc/kingdoms/lukasz/textures/Images;->defense:I

    sget v18, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v19, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v20, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v21, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    move-object v14, v4

    invoke-direct/range {v14 .. v21}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v4, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    :cond_2f
    sget-object v4, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->FortLevel:[I

    if-eqz v4, :cond_31

    sget-object v4, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->FortLevel:[I

    aget v4, v4, v1

    if-eqz v4, :cond_31

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v14, "DefenseLevel"

    invoke-virtual {v12, v14}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v12, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->FortLevel:[I

    aget v12, v12, v1

    if-lez v12, :cond_30

    move-object v12, v6

    goto :goto_17

    :cond_30
    move-object v12, v9

    :goto_17
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v12, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->FortLevel:[I

    aget v12, v12, v1

    int-to-float v12, v12

    const/16 v14, 0x64

    invoke-static {v12, v14}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    sget v17, Laoc/kingdoms/lukasz/textures/Images;->fort:I

    sget v18, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v19, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v20, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v21, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    move-object v14, v4

    invoke-direct/range {v14 .. v21}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v4, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    :cond_31
    sget-object v4, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->FortDefense:[I

    if-eqz v4, :cond_33

    sget-object v4, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->FortDefense:[I

    aget v4, v4, v1

    if-eqz v4, :cond_33

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v14, "ProvinceDefense"

    invoke-virtual {v12, v14}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v12, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->FortDefense:[I

    aget v12, v12, v1

    if-lez v12, :cond_32

    move-object v12, v6

    goto :goto_18

    :cond_32
    move-object v12, v9

    :goto_18
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v12, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->FortDefense:[I

    aget v12, v12, v1

    int-to-float v12, v12

    invoke-static {v12, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    sget v17, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_FORT_DEFENSE:I

    sget v18, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v19, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v20, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v21, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    move-object v14, v4

    invoke-direct/range {v14 .. v21}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v4, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    :cond_33
    sget-object v4, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ArmyMovementSpeed:[F

    if-eqz v4, :cond_35

    sget-object v4, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ArmyMovementSpeed:[F

    aget v4, v4, v1

    cmpl-float v4, v4, v8

    if-eqz v4, :cond_35

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v13, "ArmyMovementSpeed"

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v12, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ArmyMovementSpeed:[F

    aget v12, v12, v1

    cmpl-float v12, v12, v8

    if-lez v12, :cond_34

    move-object v12, v6

    goto :goto_19

    :cond_34
    move-object v12, v9

    :goto_19
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v12, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ArmyMovementSpeed:[F

    aget v12, v12, v1

    const/high16 v14, 0x42c80000    # 100.0f

    mul-float/2addr v12, v14

    const/16 v14, 0x64

    invoke-static {v12, v14}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget v15, Laoc/kingdoms/lukasz/textures/Images;->movementSpeed:I

    sget v16, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v17, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v18, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v19, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    move-object v12, v4

    invoke-direct/range {v12 .. v19}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v4, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    :cond_35
    sget-object v4, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->CasualtiesNuclearAttacks:[F

    if-eqz v4, :cond_37

    sget-object v4, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->CasualtiesNuclearAttacks:[F

    aget v4, v4, v1

    cmpl-float v4, v4, v8

    if-eqz v4, :cond_37

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v13, "CasualtiesFromNuclearAttacks"

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v12, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->CasualtiesNuclearAttacks:[F

    aget v12, v12, v1

    cmpl-float v12, v12, v8

    if-lez v12, :cond_36

    move-object v12, v6

    goto :goto_1a

    :cond_36
    move-object v12, v9

    :goto_1a
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v12, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->CasualtiesNuclearAttacks:[F

    aget v12, v12, v1

    const/high16 v14, 0x42c80000    # 100.0f

    mul-float/2addr v12, v14

    const/16 v14, 0x64

    invoke-static {v12, v14}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget v15, Laoc/kingdoms/lukasz/textures/Images;->nuke:I

    sget v16, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v17, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v18, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v19, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    move-object v12, v4

    invoke-direct/range {v12 .. v19}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v4, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    :cond_37
    sget-object v4, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->DiseaseDeathRate:[F

    if-eqz v4, :cond_39

    sget-object v4, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->DiseaseDeathRate:[F

    aget v4, v4, v1

    cmpl-float v4, v4, v8

    if-eqz v4, :cond_39

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v13, "DiseasesDeathRate"

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v12, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->DiseaseDeathRate:[F

    aget v12, v12, v1

    cmpl-float v12, v12, v8

    if-lez v12, :cond_38

    goto :goto_1b

    :cond_38
    move-object v6, v9

    :goto_1b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->DiseaseDeathRate:[F

    aget v6, v6, v1

    const/high16 v12, 0x42c80000    # 100.0f

    mul-float/2addr v6, v12

    const/16 v12, 0x64

    invoke-static {v6, v12}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget v15, Laoc/kingdoms/lukasz/textures/Images;->disease:I

    sget v16, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v17, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v18, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v19, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    move-object v12, v4

    invoke-direct/range {v12 .. v19}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v4, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    :cond_39
    sget-object v4, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->MaintenanceCost:[F

    aget v4, v4, v1

    cmpl-float v4, v4, v8

    if-eqz v4, :cond_3a

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "MaintenanceCost"

    invoke-virtual {v6, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->MaintenanceCost:[F

    aget v8, v8, v1

    const/16 v10, 0x3e8

    invoke-static {v8, v10}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, "XPerMonth"

    invoke-virtual {v5, v8, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget v15, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    sget v16, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v17, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v18, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v19, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_NEGATIVE:Lcom/badlogic/gdx/graphics/Color;

    move-object v12, v4

    invoke-direct/range {v12 .. v19}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v4, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    :cond_3a
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Line;

    invoke-direct {v4}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Line;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v4, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "Cost"

    invoke-virtual {v6, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v4, v5, v6}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    const/4 v8, -0x1

    invoke-static {v6, v8, v0, v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getBuildingConstructionCost(IIII)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v9, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v4, v5, v6, v9}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v9, 0x0

    invoke-direct {v4, v5, v6, v9}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v4, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v6, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v4, v5, v6}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v6, v8, v0, v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getBuildingConstructionTime(IIII)I

    move-result v6

    const-string v8, "DaysX"

    invoke-virtual {v5, v8, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v8, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v4, v5, v6, v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->buildTime:I

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    invoke-direct {v4, v5, v6, v9}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v4, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    sget-object v4, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v4, v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredResource:I

    if-ltz v4, :cond_3b

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "RequiredResource"

    invoke-virtual {v6, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v4, v5, v6}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    sget-object v5, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v5, v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredResource:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getResourceName(I)Ljava/lang/String;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v8, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v4, v5, v6, v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Resource;

    sget-object v5, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v5, v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredResource:I

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    invoke-direct {v4, v5, v6, v9}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Resource;-><init>(III)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v4, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    :cond_3b
    sget-object v4, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v4, v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredGovernmentID:I

    if-ltz v4, :cond_3c

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "Government"

    invoke-virtual {v6, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v4, v5, v6}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    sget-object v6, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v6, v6, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredGovernmentID:I

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getIdeology(I)Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;->Name:Ljava/lang/String;

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v8, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v4, v5, v6, v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->government:I

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    invoke-direct {v4, v5, v6, v9}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v4, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    :cond_3c
    sget-object v4, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v4, v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredReligionID:I

    if-ltz v4, :cond_3d

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "Religion"

    invoke-virtual {v6, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v4, v5, v6}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    sget-object v6, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v6, v6, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredReligionID:I

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligion(I)Laoc/kingdoms/lukasz/map/ReligionManager$Religion;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/ReligionManager$Religion;->Name:Ljava/lang/String;

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v7, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v4, v5, v6, v7}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->religion:I

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    invoke-direct {v4, v5, v6, v9}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v4, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    :cond_3d
    sget-object v4, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->FortLevel:[I

    if-eqz v4, :cond_3e

    sget-object v4, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->FortLevel:[I

    aget v0, v0, v1

    if-eqz v0, :cond_3e

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Line;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Line;-><init>()V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v0, v3, v9}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;Z)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text_Desc;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "AfterASuccessfulSiegeAllNeighboringProvincesWithoutDefensiveBuildingsWillBeOccupied"

    invoke-virtual {v1, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v5, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT3:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1, v4, v5}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text_Desc;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v0, v3, v9}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;Z)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    :cond_3e
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    invoke-direct {v0, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;-><init>(Ljava/util/List;)V

    return-object v0
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

    return v0
.end method


# virtual methods
.method public buildElementHover()V
    .locals 3

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->building:I

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->buildingID:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->getHoverBuilding(IIZ)Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    move-result-object v0

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    return-void
.end method

.method public final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->drawButtonBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    invoke-virtual {p0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    return-void
.end method

.method protected drawButtonBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 12

    move-object v0, p0

    move-object v9, p1

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    iget-object v2, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->colorBG:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v3, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->colorBG:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->colorBG:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v7, 0x3ecccccd    # 0.4f

    invoke-direct {v1, v2, v3, v4, v7}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->getInnerPosX()I

    move-result v3

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->getPosY()I

    move-result v2

    add-int v4, v2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->getInnerWidth()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->getHeight()I

    move-result v6

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    iget-object v2, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->colorBG:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v3, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->colorBG:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->colorBG:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v10, 0x3e99999a    # 0.3f

    invoke-direct {v1, v2, v3, v4, v10}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gradientHorizontal:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->getInnerPosX()I

    move-result v3

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->getPosY()I

    move-result v2

    add-int v4, v2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->getInnerWidth()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->getHeight()I

    move-result v6

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v8, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->COLOR_STATS:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v8, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v3, v8, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v4, v8, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v11, 0x3f19999a    # 0.6f

    invoke-direct {v1, v2, v3, v4, v11}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->getInnerPosX()I

    move-result v3

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->getPosY()I

    move-result v2

    add-int v4, v2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->getInnerWidth()I

    move-result v5

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x4

    add-int/2addr v6, v2

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    iget-object v2, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->colorBGOver:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v3, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->colorBGOver:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->colorBGOver:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v1, v2, v3, v4, v11}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gradientHorizontal:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->getInnerPosX()I

    move-result v3

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->getPosY()I

    move-result v2

    add-int v4, v2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->getInnerWidth()I

    move-result v5

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x4

    add-int/2addr v6, v2

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    iget v2, v8, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v3, v8, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v4, v8, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v1, v2, v3, v4, v7}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gradientHorizontal:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->getInnerPosX()I

    move-result v3

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->getPosY()I

    move-result v2

    add-int v4, v2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->getInnerWidth()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->getHeight()I

    move-result v6

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gradientHorizontal:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->getInnerPosX()I

    move-result v3

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->getPosY()I

    move-result v2

    add-int v4, v2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->getInnerWidth()I

    move-result v5

    const/4 v6, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gradientHorizontal:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->getInnerPosX()I

    move-result v3

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v2, v2, -0x1

    add-int v4, v2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->getInnerWidth()I

    move-result v5

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gradientHorizontal:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->getInnerPosX()I

    move-result v3

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->getPosY()I

    move-result v2

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    add-int/2addr v2, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x4

    add-int/2addr v2, v4

    add-int/lit8 v2, v2, -0x1

    add-int v4, v2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->getInnerWidth()I

    move-result v5

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    iget-object v2, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->colorBGOver:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v3, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->colorBGOver:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->colorBGOver:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v5, 0x3f4ccccd    # 0.8f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->getInnerPosX()I

    move-result v3

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->getPosY()I

    move-result v2

    add-int v4, v2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->getInnerWidth()I

    move-result v5

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x4

    add-int/2addr v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    iget-object v2, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->colorBG:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v3, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->colorBG:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->colorBG:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gradientHorizontal:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->getInnerPosX()I

    move-result v3

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->getPosY()I

    move-result v2

    add-int v4, v2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->getInnerWidth()I

    move-result v5

    const/4 v6, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gradientHorizontal:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->getInnerPosX()I

    move-result v3

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->getPosY()I

    move-result v2

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    add-int/2addr v2, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x4

    add-int/2addr v2, v4

    add-int/lit8 v2, v2, -0x1

    add-int v4, v2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->getInnerWidth()I

    move-result v5

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const/4 v7, 0x0

    invoke-direct {v1, v7, v7, v7, v10}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->getInnerPosX()I

    move-result v3

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->getPosY()I

    move-result v2

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    add-int/2addr v2, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x4

    add-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->getInnerWidth()I

    move-result v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3e4ccccd    # 0.2f

    invoke-direct {v1, v7, v7, v7, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->getInnerPosX()I

    move-result v3

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->getInnerWidth()I

    move-result v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v7, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-boolean v1, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->built:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->getIsHovered()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p4, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->setBlackWhite(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    sget-object v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildingImages:Ljava/util/List;

    sget-object v2, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v3, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->building:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ImageID:[I

    iget v3, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->buildingID:I

    aget v2, v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->getPosX()I

    move-result v2

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->getPosY()I

    move-result v2

    add-int v4, v2, p3

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

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->setShaderDefault(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v2, v2, v10}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildingImages:Ljava/util/List;

    sget-object v2, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v3, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->building:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ImageID:[I

    iget v3, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->buildingID:I

    aget v2, v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->getPosX()I

    move-result v2

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->getPosY()I

    move-result v2

    add-int v4, v2, p3

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

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildingImages:Ljava/util/List;

    sget-object v2, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v3, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->building:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ImageID:[I

    iget v3, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->buildingID:I

    aget v2, v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->getPosX()I

    move-result v2

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->getPosY()I

    move-result v2

    add-int v4, v2, p3

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

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    :goto_1
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v2, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->building:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v1, v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredResource:I

    if-ltz v1, :cond_2

    sget-object v1, Laoc/kingdoms/lukasz/map/ResourcesManager;->resourceImages:Ljava/util/List;

    sget-object v2, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v3, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->building:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v2, v2, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredResource:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->getPosX()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->buildingsFrame:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    sget-object v3, Laoc/kingdoms/lukasz/map/ResourcesManager;->resourceImages:Ljava/util/List;

    sget-object v4, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v5, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->building:I

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

    add-int/2addr v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->getPosY()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->buildingsFrame:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget-object v4, Laoc/kingdoms/lukasz/map/ResourcesManager;->resourceImages:Ljava/util/List;

    sget-object v5, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v6, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->building:I

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

    add-int/2addr v3, p3

    invoke-virtual {v1, p1, v2, v3}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    :cond_2
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->buildingsFrame:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->getPosX()I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->getPosY()I

    move-result v3

    add-int/2addr v3, p3

    invoke-virtual {v1, p1, v2, v3}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    if-eqz p4, :cond_3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->getPosX()I

    move-result v1

    add-int v2, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->getPosY()I

    move-result v1

    add-int v3, v1, p3

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

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxLineFrame(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIILcom/badlogic/gdx/graphics/Color;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->getIsHovered()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->getPosX()I

    move-result v1

    add-int v2, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->getPosY()I

    move-result v1

    add-int v3, v1, p3

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

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxLineFrame(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIILcom/badlogic/gdx/graphics/Color;)V

    :cond_4
    :goto_2
    return-void
.end method

.method protected drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 15

    move-object v0, p0

    iget v2, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->fontID:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->getInnerPosX()I

    move-result v4

    add-int/2addr v1, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v4

    add-int v4, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->getPosY()I

    move-result v1

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v1, v5

    add-int v5, v1, p3

    iget-boolean v1, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->built:Z

    if-eqz v1, :cond_0

    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_0

    :cond_0
    move/from16 v1, p4

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    :goto_0
    move-object v6, v1

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->getHeight()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sub-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x4

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->getInnerPosX()I

    move-result v4

    add-int/2addr v2, v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->getInnerWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->iCostWidth:I

    sget v5, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->goldIconWidth:I

    add-int/2addr v4, v5

    iget v5, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->iRecruitmentTimeWidth:I

    add-int/2addr v4, v5

    sget v5, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->timeIconWidth:I

    add-int/2addr v4, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x6

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->iCostWidth:I

    add-int/2addr v2, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v4

    add-int v5, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->getPosY()I

    move-result v2

    add-int/2addr v2, v1

    sget v4, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->timeIconHeight:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    add-int v6, v2, p3

    sget v7, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->goldIconWidth:I

    sget v8, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->goldIconHeight:I

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    iget-object v11, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->sCost:Ljava/lang/String;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->getInnerPosX()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->getInnerWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v3, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->iCostWidth:I

    sget v4, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->goldIconWidth:I

    add-int/2addr v3, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->iRecruitmentTimeWidth:I

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->timeIconWidth:I

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x6

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    add-int v12, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->getPosY()I

    move-result v2

    add-int/2addr v2, v1

    iget v3, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->iRecruitmentTimeHeight:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    add-int v13, v2, p3

    sget-object v14, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT2:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v9, p1

    invoke-static/range {v9 .. v14}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->buildTime:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->getInnerPosX()I

    move-result v4

    add-int/2addr v2, v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->getInnerWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->iCostWidth:I

    sget v5, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->goldIconWidth:I

    add-int/2addr v4, v5

    iget v5, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->iRecruitmentTimeWidth:I

    add-int/2addr v4, v5

    sget v5, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->timeIconWidth:I

    add-int/2addr v4, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x6

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->iCostWidth:I

    add-int/2addr v2, v4

    sget v4, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->goldIconWidth:I

    add-int/2addr v2, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x6

    add-int/2addr v2, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->iRecruitmentTimeWidth:I

    add-int/2addr v2, v4

    add-int v5, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->getPosY()I

    move-result v2

    add-int/2addr v2, v1

    sget v8, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->timeIconHeight:I

    div-int/lit8 v4, v8, 0x2

    sub-int/2addr v2, v4

    add-int v6, v2, p3

    sget v7, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->timeIconWidth:I

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    iget-object v11, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->sRecruitmentTime:Ljava/lang/String;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->getInnerPosX()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->getInnerWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v3, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->iCostWidth:I

    sget v4, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->goldIconWidth:I

    add-int/2addr v3, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->iRecruitmentTimeWidth:I

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->timeIconWidth:I

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x6

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget v3, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->iCostWidth:I

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x5

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->goldIconWidth:I

    add-int/2addr v2, v3

    add-int v12, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->getPosY()I

    move-result v2

    add-int/2addr v2, v1

    iget v1, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->iRecruitmentTimeHeight:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v2, v1

    add-int v13, v2, p3

    sget-object v14, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT2:Lcom/badlogic/gdx/graphics/Color;

    invoke-static/range {v9 .. v14}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method protected getColor(Z)Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->getIsHovered()Z

    move-result v0

    invoke-static {p1, v0}, Laoc/kingdoms/lukasz/menu/Colors;->getColorTopStatsHover(ZZ)Lcom/badlogic/gdx/graphics/Color;

    move-result-object p1

    return-object p1
.end method

.method public getInnerPosX()I
    .locals 1

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->buildingsFrame:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    return v0
.end method

.method public getInnerWidth()I
    .locals 2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->getWidth()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->buildingsFrame:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->sText:Ljava/lang/String;

    return-object v0
.end method

.method public getValue1()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->building:I

    return v0
.end method

.method public getValue2()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->buildingID:I

    return v0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->sText:Ljava/lang/String;

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->fontID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget p1, p1, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int p1, p1

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->iTextWidth:I

    return-void
.end method
