.class public Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;
.super Laoc/kingdoms/lukasz/menu_element/MenuElement;
.source "ButtonBuilding2.java"


# static fields
.field public static goldIconHeight:I = 0x0

.field public static goldIconWidth:I = 0x0

.field public static iconScale:F = 1.0f

.field public static timeIconHeight:I

.field public static timeIconWidth:I


# instance fields
.field public building:I

.field public buildingID:I

.field public built:Z

.field public iCostHeight:I

.field public iCostWidth:I

.field public iProgressWidth:I

.field public iRecruitmentTimeHeight:I

.field public iRecruitmentTimeWidth:I

.field public iTextHeight:I

.field public iTextWidth:I

.field public sCost:Ljava/lang/String;

.field public sProgress:Ljava/lang/String;

.field public sRecruitmentTime:Ljava/lang/String;

.field public sText:Ljava/lang/String;

.field public underConstruction:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(IZIIIIIZ)V
    .locals 4

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->iTextWidth:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->iTextHeight:I

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->built:Z

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->underConstruction:F

    const-string v1, ""

    iput-object v1, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->sProgress:Ljava/lang/String;

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->iProgressWidth:I

    sget-object v2, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;->BUTTON:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    iput-object v2, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->typeOfElement:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    iput-boolean p2, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->built:Z

    iput p3, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    iput p4, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->buildingID:I

    sget p2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    iput p2, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->fontID:I

    sget p2, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-direct {p0, p2}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getImageScale(I)F

    move-result p2

    const v2, 0x3f8ccccd    # 1.1f

    mul-float/2addr p2, v2

    sput p2, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->iconScale:F

    sget p2, Laoc/kingdoms/lukasz/textures/Images;->buildTime:I

    invoke-static {p2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p2

    invoke-virtual {p2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result p2

    int-to-float p2, p2

    sget v2, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->iconScale:F

    mul-float/2addr p2, v2

    float-to-int p2, p2

    sput p2, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->timeIconWidth:I

    sget p2, Laoc/kingdoms/lukasz/textures/Images;->buildTime:I

    invoke-static {p2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p2

    invoke-virtual {p2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result p2

    int-to-float p2, p2

    sget v2, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->iconScale:F

    mul-float/2addr p2, v2

    float-to-int p2, p2

    sput p2, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->timeIconHeight:I

    sget p2, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-static {p2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p2

    invoke-virtual {p2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result p2

    int-to-float p2, p2

    sget v2, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->iconScale:F

    mul-float/2addr p2, v2

    float-to-int p2, p2

    sput p2, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->goldIconWidth:I

    sget p2, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-static {p2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p2

    invoke-virtual {p2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result p2

    int-to-float p2, p2

    sget v2, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->iconScale:F

    mul-float/2addr p2, v2

    float-to-int p2, p2

    sput p2, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->goldIconHeight:I

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    const/4 v3, -0x1

    invoke-static {v2, v3, p3, p4}, Laoc/kingdoms/lukasz/jakowski/Game;->getBuildingConstructionTime(IIII)I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->sRecruitmentTime:Ljava/lang/String;

    new-instance p2, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    invoke-direct {p2}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;-><init>()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->sRecruitmentTime:Ljava/lang/String;

    invoke-virtual {p2, v2, v3}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    iget v2, p2, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int v2, v2

    iput v2, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->iRecruitmentTimeWidth:I

    iget v2, p2, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->height:F

    float-to-int v2, v2

    iput v2, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->iRecruitmentTimeHeight:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v1, p1, p3, p4}, Laoc/kingdoms/lukasz/jakowski/Game;->getBuildingConstructionCost(IIII)I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->sCost:Ljava/lang/String;

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->sCost:Ljava/lang/String;

    invoke-virtual {p2, p1, v1}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    iget p1, p2, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int p1, p1

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->iCostWidth:I

    iget p1, p2, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->height:F

    float-to-int p1, p1

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->iCostHeight:I

    sget-object p1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object p1, p1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->Name:[Ljava/lang/String;

    aget-object p1, p1, p4

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->setText(Ljava/lang/String;)V

    invoke-virtual {p0, p5}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->setPosX(I)V

    invoke-virtual {p0, p6}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->setPosY(I)V

    invoke-virtual {p0, p7}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->setWidth(I)V

    sget p1, Laoc/kingdoms/lukasz/textures/Images;->buildingsFrame:I

    invoke-static {p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result p1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getTitleHeight()I

    move-result p2

    add-int/2addr p1, p2

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->setHeight(I)V

    invoke-virtual {p0, p8}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->setClickable(Z)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->setVisible(Z)V

    move p2, v0

    :goto_0
    iget p3, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->iTextWidth:I

    sget p4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 p4, p4, 0x2

    sub-int p4, p7, p4

    if-le p3, p4, :cond_0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getText()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    const/4 p4, 0x5

    if-le p3, p4, :cond_0

    add-int/2addr p2, p1

    const/16 p3, 0x64

    if-ge p2, p3, :cond_0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getText()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getText()Ljava/lang/String;

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

    invoke-virtual {p0, p3}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
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

    return v0
.end method


# virtual methods
.method public buildElementHover()V
    .locals 21

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle;

    sget-object v4, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v5, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->Name:[Ljava/lang/String;

    iget v5, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->buildingID:I

    aget-object v4, v4, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v3, v4, v5, v6}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredResource:I

    if-gez v3, :cond_0

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text_Desc;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    sget-object v5, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v6, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->NameDesc:[Ljava/lang/String;

    iget v6, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->buildingID:I

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->BUTTON_TEXT_BRIGHT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v3, v4, v5, v6}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text_Desc;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredResource:I

    const/4 v4, 0x0

    const-string v5, ": "

    if-ltz v3, :cond_1

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const/4 v8, 0x0

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/FBO/idYW/HjHDSSkYG;->wIHfNxGCjU:Ljava/lang/String;

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v3, v6, v7}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    sget-object v6, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v6, v6, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredResource:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getResourceName(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v8, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v3, v6, v7, v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Resource;

    sget-object v6, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v6, v6, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredResource:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    invoke-direct {v3, v6, v7, v4}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Resource;-><init>(III)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_1
    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v6, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredGovernmentID:I

    if-ltz v3, :cond_2

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "Government"

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v3, v6, v7}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    sget-object v7, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v7, v7, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredGovernmentID:I

    invoke-virtual {v6, v7}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getIdeology(I)Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;

    move-result-object v6

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;->Name:Ljava/lang/String;

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v8, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v3, v6, v7, v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->government:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    invoke-direct {v3, v6, v7, v4}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_2
    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v6, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredReligionID:I

    if-ltz v3, :cond_3

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const/4 v8, 0x0

    sget-object v8, Laoc/kingdoms/lukasz/map/terrain/exjB/uiwPYaNhJS;->LTdI:Ljava/lang/String;

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v3, v6, v7}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    sget-object v7, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v7, v7, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredReligionID:I

    invoke-virtual {v6, v7}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligion(I)Laoc/kingdoms/lukasz/map/ReligionManager$Religion;

    move-result-object v6

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/ReligionManager$Religion;->Name:Ljava/lang/String;

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v8, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v3, v6, v7, v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->religion:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    invoke-direct {v3, v6, v7, v4}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_3
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Line;

    invoke-direct {v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Line;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v6, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->MonthlyIncome:[F

    const/16 v6, 0x64

    const-string v7, "+"

    const/4 v8, 0x0

    const-string v9, ""

    if-eqz v3, :cond_5

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v10, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->MonthlyIncome:[F

    iget v10, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->buildingID:I

    aget v3, v3, v10

    cmpl-float v3, v3, v8

    if-eqz v3, :cond_5

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "MonthlyIncome"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v13, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->MonthlyIncome:[F

    iget v13, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->buildingID:I

    aget v12, v12, v13

    cmpl-float v12, v12, v8

    if-lez v12, :cond_4

    move-object v12, v7

    goto :goto_0

    :cond_4
    move-object v12, v9

    :goto_0
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v12, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v13, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->MonthlyIncome:[F

    iget v13, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->buildingID:I

    aget v12, v12, v13

    invoke-static {v12, v6}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

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

    move-object v10, v3

    invoke-direct/range {v10 .. v17}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_5
    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v10, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->TaxEfficiency:[F

    const-string v10, "%"

    if-eqz v3, :cond_7

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v11, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->TaxEfficiency:[F

    iget v11, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->buildingID:I

    aget v3, v3, v11

    cmpl-float v3, v3, v8

    if-eqz v3, :cond_7

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v13, "TaxEfficiency"

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v13, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v14, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->TaxEfficiency:[F

    iget v14, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->buildingID:I

    aget v13, v13, v14

    cmpl-float v13, v13, v8

    if-lez v13, :cond_6

    move-object v13, v7

    goto :goto_1

    :cond_6
    move-object v13, v9

    :goto_1
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v13, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v14, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->TaxEfficiency:[F

    iget v14, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->buildingID:I

    aget v13, v13, v14

    invoke-static {v13, v6}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

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

    move-object v11, v3

    invoke-direct/range {v11 .. v18}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_7
    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v11, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->LocalTaxEfficiency:[F

    if-eqz v3, :cond_9

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v11, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->LocalTaxEfficiency:[F

    iget v11, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->buildingID:I

    aget v3, v3, v11

    cmpl-float v3, v3, v8

    if-eqz v3, :cond_9

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v13, "LocalTaxEfficiency"

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v13, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v14, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->LocalTaxEfficiency:[F

    iget v14, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->buildingID:I

    aget v13, v13, v14

    cmpl-float v13, v13, v8

    if-lez v13, :cond_8

    move-object v13, v7

    goto :goto_2

    :cond_8
    move-object v13, v9

    :goto_2
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v13, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v14, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->LocalTaxEfficiency:[F

    iget v14, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->buildingID:I

    aget v13, v13, v14

    invoke-static {v13, v6}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

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

    move-object v11, v3

    invoke-direct/range {v11 .. v18}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_9
    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v11, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->MaxInfrastructure:[I

    if-eqz v3, :cond_b

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v11, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->MaxInfrastructure:[I

    iget v11, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->buildingID:I

    aget v3, v3, v11

    if-eqz v3, :cond_b

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v13, "MaximumInfrastructureLevel"

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v13, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v14, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->MaxInfrastructure:[I

    iget v14, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->buildingID:I

    aget v13, v13, v14

    if-lez v13, :cond_a

    move-object v13, v7

    goto :goto_3

    :cond_a
    move-object v13, v9

    :goto_3
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v13, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v14, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->MaxInfrastructure:[I

    iget v14, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->buildingID:I

    aget v13, v13, v14

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    sget v14, Laoc/kingdoms/lukasz/textures/Images;->infrastructure:I

    sget v15, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v16, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v17, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v18, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    move-object v11, v3

    invoke-direct/range {v11 .. v18}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_b
    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v11, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->BuildingSlots:[I

    if-eqz v3, :cond_d

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v11, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->BuildingSlots:[I

    iget v11, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->buildingID:I

    aget v3, v3, v11

    if-eqz v3, :cond_d

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v13, "BuildingSlots"

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v13, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v14, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->BuildingSlots:[I

    iget v14, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->buildingID:I

    aget v13, v13, v14

    if-lez v13, :cond_c

    move-object v13, v7

    goto :goto_4

    :cond_c
    move-object v13, v9

    :goto_4
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v13, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v14, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->BuildingSlots:[I

    iget v14, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->buildingID:I

    aget v13, v13, v14

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    sget v14, Laoc/kingdoms/lukasz/textures/Images;->build:I

    sget v15, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v16, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v17, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v18, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    move-object v11, v3

    invoke-direct/range {v11 .. v18}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_d
    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v11, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->IncomeProduction:[F

    if-eqz v3, :cond_f

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v11, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->IncomeProduction:[F

    iget v11, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->buildingID:I

    aget v3, v3, v11

    cmpl-float v3, v3, v8

    if-eqz v3, :cond_f

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v13, "IncomeProduction"

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v13, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v14, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->IncomeProduction:[F

    iget v14, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->buildingID:I

    aget v13, v13, v14

    cmpl-float v13, v13, v8

    if-lez v13, :cond_e

    move-object v13, v7

    goto :goto_5

    :cond_e
    move-object v13, v9

    :goto_5
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v13, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v14, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->IncomeProduction:[F

    iget v14, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->buildingID:I

    aget v13, v13, v14

    invoke-static {v13, v6}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

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

    move-object v11, v3

    invoke-direct/range {v11 .. v18}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_f
    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v11, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ProductionEfficiency:[F

    if-eqz v3, :cond_11

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v11, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ProductionEfficiency:[F

    iget v11, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->buildingID:I

    aget v3, v3, v11

    cmpl-float v3, v3, v8

    if-eqz v3, :cond_11

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v13, "ProductionEfficiency"

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v13, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v14, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ProductionEfficiency:[F

    iget v14, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->buildingID:I

    aget v13, v13, v14

    cmpl-float v13, v13, v8

    if-lez v13, :cond_10

    move-object v13, v7

    goto :goto_6

    :cond_10
    move-object v13, v9

    :goto_6
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v13, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v14, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ProductionEfficiency:[F

    iget v14, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->buildingID:I

    aget v13, v13, v14

    invoke-static {v13, v6}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

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

    move-object v11, v3

    invoke-direct/range {v11 .. v18}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_11
    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v11, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ProvinceMaintenance:[F

    if-eqz v3, :cond_13

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v11, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ProvinceMaintenance:[F

    iget v11, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->buildingID:I

    aget v3, v3, v11

    cmpl-float v3, v3, v8

    if-eqz v3, :cond_13

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v13, "ProvinceMaintenance"

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v13, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v14, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ProvinceMaintenance:[F

    iget v14, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->buildingID:I

    aget v13, v13, v14

    cmpl-float v13, v13, v8

    if-lez v13, :cond_12

    move-object v13, v7

    goto :goto_7

    :cond_12
    move-object v13, v9

    :goto_7
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v13, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v14, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ProvinceMaintenance:[F

    iget v14, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->buildingID:I

    aget v13, v13, v14

    invoke-static {v13, v6}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

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

    move-object v11, v3

    invoke-direct/range {v11 .. v18}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_13
    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v11, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->Economy:[F

    if-eqz v3, :cond_15

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v11, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->Economy:[F

    iget v11, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->buildingID:I

    aget v3, v3, v11

    cmpl-float v3, v3, v8

    if-eqz v3, :cond_15

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v13, "Economy"

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v13, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v14, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->Economy:[F

    iget v14, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->buildingID:I

    aget v13, v13, v14

    cmpl-float v13, v13, v8

    if-lez v13, :cond_14

    move-object v13, v7

    goto :goto_8

    :cond_14
    move-object v13, v9

    :goto_8
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v13, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v14, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->Economy:[F

    iget v14, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->buildingID:I

    aget v13, v13, v14

    invoke-static {v13, v6}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

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

    move-object v11, v3

    invoke-direct/range {v11 .. v18}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_15
    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v11, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ConstructionCost:[I

    if-eqz v3, :cond_17

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v11, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ConstructionCost:[I

    iget v11, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->buildingID:I

    aget v3, v3, v11

    if-eqz v3, :cond_17

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v13, "ConstructionCost"

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v13, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v14, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ConstructionCost:[I

    iget v14, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->buildingID:I

    aget v13, v13, v14

    if-lez v13, :cond_16

    move-object v13, v7

    goto :goto_9

    :cond_16
    move-object v13, v9

    :goto_9
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v13, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v14, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ConstructionCost:[I

    iget v14, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->buildingID:I

    aget v13, v13, v14

    mul-int/2addr v13, v6

    int-to-float v13, v13

    invoke-static {v13, v6}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

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

    move-object v11, v3

    invoke-direct/range {v11 .. v18}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_17
    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v11, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ConstructionTimeBonus:[I

    const-string v11, "ConstructionTime"

    if-eqz v3, :cond_19

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ConstructionTimeBonus:[I

    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->buildingID:I

    aget v3, v3, v12

    if-eqz v3, :cond_19

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v13, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v14, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v15, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ConstructionTimeBonus:[I

    iget v15, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->buildingID:I

    aget v14, v14, v15

    if-lez v14, :cond_18

    move-object v14, v7

    goto :goto_a

    :cond_18
    move-object v14, v9

    :goto_a
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v14, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v15, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ConstructionTimeBonus:[I

    iget v15, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->buildingID:I

    aget v14, v14, v15

    mul-int/2addr v14, v6

    int-to-float v14, v14

    invoke-static {v14, v6}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

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

    move-object v12, v3

    invoke-direct/range {v12 .. v19}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_19
    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->LocalGrowthRate:[F

    if-eqz v3, :cond_1b

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->LocalGrowthRate:[F

    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->buildingID:I

    aget v3, v3, v12

    cmpl-float v3, v3, v8

    if-eqz v3, :cond_1b

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const/4 v14, 0x0

    sget-object v14, Laoc/kingdoms/lukasz/menusEditor/RJR/ATsAGKCnv;->vSjAb:Ljava/lang/String;

    invoke-virtual {v13, v14}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v14, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v15, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->LocalGrowthRate:[F

    iget v15, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->buildingID:I

    aget v14, v14, v15

    cmpl-float v14, v14, v8

    if-lez v14, :cond_1a

    move-object v14, v7

    goto :goto_b

    :cond_1a
    move-object v14, v9

    :goto_b
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v14, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v15, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->LocalGrowthRate:[F

    iget v15, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->buildingID:I

    aget v14, v14, v15

    invoke-static {v14, v6}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

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

    move-object v12, v3

    invoke-direct/range {v12 .. v19}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_1b
    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->InvestInEconomyCost:[F

    const/high16 v12, 0x42c80000    # 100.0f

    if-eqz v3, :cond_1d

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v13, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->InvestInEconomyCost:[F

    iget v13, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->buildingID:I

    aget v3, v3, v13

    cmpl-float v3, v3, v8

    if-eqz v3, :cond_1d

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v15, "InvestInEconomyCost"

    invoke-virtual {v14, v15}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v15, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v15, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->InvestInEconomyCost:[F

    iget v15, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->buildingID:I

    aget v4, v4, v15

    cmpl-float v4, v4, v8

    if-lez v4, :cond_1c

    move-object v4, v7

    goto :goto_c

    :cond_1c
    move-object v4, v9

    :goto_c
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v13, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v15, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->InvestInEconomyCost:[F

    iget v15, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->buildingID:I

    aget v13, v13, v15

    mul-float/2addr v13, v12

    invoke-static {v13, v6}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    sget v16, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_ECONOMY_UP:I

    sget v17, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v18, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v19, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v20, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    move-object v13, v3

    invoke-direct/range {v13 .. v20}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_1d
    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->IncreaseGrowthRateCost:[F

    if-eqz v3, :cond_1f

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->IncreaseGrowthRateCost:[F

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->buildingID:I

    aget v3, v3, v4

    cmpl-float v3, v3, v8

    if-eqz v3, :cond_1f

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v14, "IncreaseGrowthRateCost"

    invoke-virtual {v13, v14}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v13, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v15, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->IncreaseGrowthRateCost:[F

    iget v15, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->buildingID:I

    aget v13, v13, v15

    cmpl-float v13, v13, v8

    if-lez v13, :cond_1e

    move-object v13, v7

    goto :goto_d

    :cond_1e
    move-object v13, v9

    :goto_d
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v13, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v15, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->IncreaseGrowthRateCost:[F

    iget v15, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->buildingID:I

    aget v13, v13, v15

    mul-float/2addr v13, v12

    invoke-static {v13, v6}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    sget v16, Laoc/kingdoms/lukasz/textures/Images;->populationUp:I

    sget v17, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v18, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v19, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v20, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    move-object v13, v3

    invoke-direct/range {v13 .. v20}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_1f
    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->DevelopInfrastructureCost:[F

    if-eqz v3, :cond_21

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->DevelopInfrastructureCost:[F

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->buildingID:I

    aget v3, v3, v4

    cmpl-float v3, v3, v8

    if-eqz v3, :cond_21

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v14, "DevelopInfrastructureCost"

    invoke-virtual {v13, v14}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v13, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v15, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->DevelopInfrastructureCost:[F

    iget v15, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->buildingID:I

    aget v13, v13, v15

    cmpl-float v13, v13, v8

    if-lez v13, :cond_20

    move-object v13, v7

    goto :goto_e

    :cond_20
    move-object v13, v9

    :goto_e
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v13, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v15, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->DevelopInfrastructureCost:[F

    iget v15, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->buildingID:I

    aget v13, v13, v15

    mul-float/2addr v13, v12

    invoke-static {v13, v6}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    sget v16, Laoc/kingdoms/lukasz/textures/Images;->infrastructureUp:I

    sget v17, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v18, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v19, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v20, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    move-object v13, v3

    invoke-direct/range {v13 .. v20}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_21
    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->IncreaseManpowerCost:[F

    if-eqz v3, :cond_23

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->IncreaseManpowerCost:[F

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->buildingID:I

    aget v3, v3, v4

    cmpl-float v3, v3, v8

    if-eqz v3, :cond_23

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const/4 v14, 0x0

    sget-object v14, Laoc/kingdoms/lukasz/menusEditor/RJR/ATsAGKCnv;->LQVAdgppEOSrZT:Ljava/lang/String;

    invoke-virtual {v13, v14}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v13, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v15, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->IncreaseManpowerCost:[F

    iget v15, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->buildingID:I

    aget v13, v13, v15

    cmpl-float v13, v13, v8

    if-lez v13, :cond_22

    move-object v13, v7

    goto :goto_f

    :cond_22
    move-object v13, v9

    :goto_f
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v13, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v15, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->IncreaseManpowerCost:[F

    iget v15, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->buildingID:I

    aget v13, v13, v15

    mul-float/2addr v13, v12

    invoke-static {v13, v6}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    sget v16, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER_UP:I

    sget v17, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v18, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v19, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v20, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    move-object v13, v3

    invoke-direct/range {v13 .. v20}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_23
    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->IncreaseTaxEfficiencyCost:[F

    if-eqz v3, :cond_25

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->IncreaseTaxEfficiencyCost:[F

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->buildingID:I

    aget v3, v3, v4

    cmpl-float v3, v3, v8

    if-eqz v3, :cond_25

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v14, "IncreaseTaxEfficiencyCost"

    invoke-virtual {v13, v14}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v13, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v15, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->IncreaseTaxEfficiencyCost:[F

    iget v15, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->buildingID:I

    aget v13, v13, v15

    cmpl-float v13, v13, v8

    if-lez v13, :cond_24

    move-object v13, v7

    goto :goto_10

    :cond_24
    move-object v13, v9

    :goto_10
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v13, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v15, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->IncreaseTaxEfficiencyCost:[F

    iget v15, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->buildingID:I

    aget v13, v13, v15

    mul-float/2addr v13, v12

    invoke-static {v13, v6}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    sget v16, Laoc/kingdoms/lukasz/textures/Images;->taxUp:I

    sget v17, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v18, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v19, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v20, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    move-object v13, v3

    invoke-direct/range {v13 .. v20}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_25
    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ResearchPoints:[F

    if-eqz v3, :cond_27

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ResearchPoints:[F

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->buildingID:I

    aget v3, v3, v4

    cmpl-float v3, v3, v8

    if-eqz v3, :cond_27

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v14, "ResearchPerMonth"

    invoke-virtual {v13, v14}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v13, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v15, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ResearchPoints:[F

    iget v15, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->buildingID:I

    aget v13, v13, v15

    cmpl-float v13, v13, v8

    if-lez v13, :cond_26

    move-object v13, v7

    goto :goto_11

    :cond_26
    move-object v13, v9

    :goto_11
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v13, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v15, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ResearchPoints:[F

    iget v15, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->buildingID:I

    aget v13, v13, v15

    invoke-static {v13, v6}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    sget v16, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_TECHNOLOGY:I

    sget v17, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v18, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v19, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v20, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    move-object v13, v3

    invoke-direct/range {v13 .. v20}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_27
    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->MonthlyLegacy:[F

    if-eqz v3, :cond_29

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->MonthlyLegacy:[F

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->buildingID:I

    aget v3, v3, v4

    cmpl-float v3, v3, v8

    if-eqz v3, :cond_29

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v14, "MonthlyLegacy"

    invoke-virtual {v13, v14}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v13, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v15, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->MonthlyLegacy:[F

    iget v15, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->buildingID:I

    aget v13, v13, v15

    cmpl-float v13, v13, v8

    if-lez v13, :cond_28

    move-object v13, v7

    goto :goto_12

    :cond_28
    move-object v13, v9

    :goto_12
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v13, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v15, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->MonthlyLegacy:[F

    iget v15, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->buildingID:I

    aget v13, v13, v15

    invoke-static {v13, v6}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    sget v16, Laoc/kingdoms/lukasz/textures/Images;->legacy:I

    sget v17, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v18, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v19, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v20, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    move-object v13, v3

    invoke-direct/range {v13 .. v20}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_29
    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->MaximumManpower:[I

    const/4 v4, 0x1

    if-eqz v3, :cond_2b

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v13, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->MaximumManpower:[I

    iget v13, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->buildingID:I

    aget v3, v3, v13

    if-eqz v3, :cond_2b

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const/4 v15, 0x0

    sget-object v15, Laoc/kingdoms/lukasz/map/plague/KMTV/fTNtCctcBZcqKK;->PMtWF:Ljava/lang/String;

    invoke-virtual {v14, v15}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v15, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v6, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v15, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->MaximumManpower:[I

    iget v15, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->buildingID:I

    aget v6, v6, v15

    if-lez v6, :cond_2a

    move-object v6, v7

    goto :goto_13

    :cond_2a
    move-object v6, v9

    :goto_13
    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v13, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v15, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->MaximumManpower:[I

    iget v15, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->buildingID:I

    aget v13, v13, v15

    int-to-float v13, v13

    invoke-static {v13, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    sget v16, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER_UP:I

    sget v17, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v18, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v19, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v20, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    move-object v13, v3

    invoke-direct/range {v13 .. v20}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_2b
    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v6, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->LocalManpower:[F

    if-eqz v3, :cond_2d

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v6, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->LocalManpower:[F

    iget v6, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->buildingID:I

    aget v3, v3, v6

    cmpl-float v3, v3, v8

    if-eqz v3, :cond_2d

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v14, "LocalManpower"

    invoke-virtual {v13, v14}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v13, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v15, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->LocalManpower:[F

    iget v15, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->buildingID:I

    aget v13, v13, v15

    cmpl-float v13, v13, v8

    if-lez v13, :cond_2c

    move-object v13, v7

    goto :goto_14

    :cond_2c
    move-object v13, v9

    :goto_14
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v13, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v15, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->LocalManpower:[F

    iget v15, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->buildingID:I

    aget v13, v13, v15

    mul-float/2addr v13, v12

    invoke-static {v13, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    sget v16, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER_UP:I

    sget v17, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v18, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v19, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v20, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    move-object v13, v3

    invoke-direct/range {v13 .. v20}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_2d
    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v6, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RecruitArmyCostInProvince:[F

    if-eqz v3, :cond_2f

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v6, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RecruitArmyCostInProvince:[F

    iget v6, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->buildingID:I

    aget v3, v3, v6

    cmpl-float v3, v3, v8

    if-eqz v3, :cond_2f

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v14, "ArmyRecruitmentCostInProvince"

    invoke-virtual {v13, v14}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v13, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v15, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RecruitArmyCostInProvince:[F

    iget v15, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->buildingID:I

    aget v13, v13, v15

    cmpl-float v13, v13, v8

    if-lez v13, :cond_2e

    move-object v13, v7

    goto :goto_15

    :cond_2e
    move-object v13, v9

    :goto_15
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v13, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v15, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RecruitArmyCostInProvince:[F

    iget v15, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->buildingID:I

    aget v13, v13, v15

    const/16 v15, 0x64

    invoke-static {v13, v15}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    sget v16, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    sget v17, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v18, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v19, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v20, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    move-object v13, v3

    invoke-direct/range {v13 .. v20}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_2f
    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v6, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->DefenseBonus:[I

    if-eqz v3, :cond_31

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v6, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->DefenseBonus:[I

    iget v6, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->buildingID:I

    aget v3, v3, v6

    if-eqz v3, :cond_31

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v14, "DefenseBonus"

    invoke-virtual {v13, v14}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v13, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v15, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->DefenseBonus:[I

    iget v15, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->buildingID:I

    aget v13, v13, v15

    if-lez v13, :cond_30

    move-object v13, v7

    goto :goto_16

    :cond_30
    move-object v13, v9

    :goto_16
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v13, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v15, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->DefenseBonus:[I

    iget v15, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->buildingID:I

    aget v13, v13, v15

    int-to-float v13, v13

    const/16 v15, 0x64

    invoke-static {v13, v15}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    sget v16, Laoc/kingdoms/lukasz/textures/Images;->defense:I

    sget v17, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v18, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v19, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v20, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    move-object v13, v3

    invoke-direct/range {v13 .. v20}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_31
    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v6, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->FortLevel:[I

    if-eqz v3, :cond_33

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v6, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->FortLevel:[I

    iget v6, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->buildingID:I

    aget v3, v3, v6

    if-eqz v3, :cond_33

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v14, "DefenseLevel"

    invoke-virtual {v13, v14}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v13, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v15, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->FortLevel:[I

    iget v15, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->buildingID:I

    aget v13, v13, v15

    if-lez v13, :cond_32

    move-object v13, v7

    goto :goto_17

    :cond_32
    move-object v13, v9

    :goto_17
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v13, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v15, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->FortLevel:[I

    iget v15, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->buildingID:I

    aget v13, v13, v15

    int-to-float v13, v13

    const/16 v15, 0x64

    invoke-static {v13, v15}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    sget v16, Laoc/kingdoms/lukasz/textures/Images;->fort:I

    sget v17, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v18, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v19, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v20, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    move-object v13, v3

    invoke-direct/range {v13 .. v20}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_33
    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v6, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->FortDefense:[I

    if-eqz v3, :cond_35

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v6, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->FortDefense:[I

    iget v6, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->buildingID:I

    aget v3, v3, v6

    if-eqz v3, :cond_35

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const/4 v14, 0x0

    sget-object v14, Lcom/google/android/gms/internal/tasks/Vhe/SwmJtrccN;->wzAw:Ljava/lang/String;

    invoke-virtual {v13, v14}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v13, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v15, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->FortDefense:[I

    iget v15, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->buildingID:I

    aget v13, v13, v15

    if-lez v13, :cond_34

    move-object v13, v7

    goto :goto_18

    :cond_34
    move-object v13, v9

    :goto_18
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v13, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v15, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->FortDefense:[I

    iget v15, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->buildingID:I

    aget v13, v13, v15

    int-to-float v13, v13

    invoke-static {v13, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    sget v16, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_FORT_DEFENSE:I

    sget v17, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v18, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v19, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v20, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    move-object v13, v3

    invoke-direct/range {v13 .. v20}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_35
    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ArmyMovementSpeed:[F

    if-eqz v3, :cond_37

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ArmyMovementSpeed:[F

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->buildingID:I

    aget v3, v3, v4

    cmpl-float v3, v3, v8

    if-eqz v3, :cond_37

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v13, "ArmyMovementSpeed"

    invoke-virtual {v6, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v13, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v6, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ArmyMovementSpeed:[F

    iget v13, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->buildingID:I

    aget v6, v6, v13

    cmpl-float v6, v6, v8

    if-lez v6, :cond_36

    move-object v6, v7

    goto :goto_19

    :cond_36
    move-object v6, v9

    :goto_19
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v6, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v13, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v6, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ArmyMovementSpeed:[F

    iget v13, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->buildingID:I

    aget v6, v6, v13

    mul-float/2addr v6, v12

    const/16 v13, 0x64

    invoke-static {v6, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    sget v16, Laoc/kingdoms/lukasz/textures/Images;->movementSpeed:I

    sget v17, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v18, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v19, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v20, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    move-object v13, v3

    invoke-direct/range {v13 .. v20}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_37
    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->CasualtiesNuclearAttacks:[F

    if-eqz v3, :cond_39

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->CasualtiesNuclearAttacks:[F

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->buildingID:I

    aget v3, v3, v4

    cmpl-float v3, v3, v8

    if-eqz v3, :cond_39

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v13, "CasualtiesFromNuclearAttacks"

    invoke-virtual {v6, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v13, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v6, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->CasualtiesNuclearAttacks:[F

    iget v13, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->buildingID:I

    aget v6, v6, v13

    cmpl-float v6, v6, v8

    if-lez v6, :cond_38

    move-object v6, v7

    goto :goto_1a

    :cond_38
    move-object v6, v9

    :goto_1a
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v6, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v13, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v6, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->CasualtiesNuclearAttacks:[F

    iget v13, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->buildingID:I

    aget v6, v6, v13

    mul-float/2addr v6, v12

    const/16 v13, 0x64

    invoke-static {v6, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    sget v16, Laoc/kingdoms/lukasz/textures/Images;->nuke:I

    sget v17, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v18, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v19, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v20, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    move-object v13, v3

    invoke-direct/range {v13 .. v20}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_39
    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->DiseaseDeathRate:[F

    if-eqz v3, :cond_3b

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->DiseaseDeathRate:[F

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->buildingID:I

    aget v3, v3, v4

    cmpl-float v3, v3, v8

    if-eqz v3, :cond_3b

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v13, "DiseasesDeathRate"

    invoke-virtual {v6, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v13, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v6, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->DiseaseDeathRate:[F

    iget v13, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->buildingID:I

    aget v6, v6, v13

    cmpl-float v6, v6, v8

    if-lez v6, :cond_3a

    goto :goto_1b

    :cond_3a
    move-object v7, v9

    :goto_1b
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v6, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->DiseaseDeathRate:[F

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->buildingID:I

    aget v6, v6, v7

    mul-float/2addr v6, v12

    const/16 v7, 0x64

    invoke-static {v6, v7}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    sget v16, Laoc/kingdoms/lukasz/textures/Images;->disease:I

    sget v17, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v18, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v19, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v20, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    move-object v13, v3

    invoke-direct/range {v13 .. v20}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_3b
    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->MaintenanceCost:[F

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->buildingID:I

    aget v3, v3, v4

    cmpl-float v3, v3, v8

    if-eqz v3, :cond_3c

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "MaintenanceCost"

    invoke-virtual {v6, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->MaintenanceCost:[F

    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->buildingID:I

    aget v7, v7, v8

    const/16 v8, 0x3e8

    invoke-static {v7, v8}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "XPerMonth"

    invoke-virtual {v4, v7, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget v15, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    sget v16, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v17, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v18, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v19, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_NEGATIVE:Lcom/badlogic/gdx/graphics/Color;

    move-object v12, v3

    invoke-direct/range {v12 .. v19}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_3c
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Line;

    invoke-direct {v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Line;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "Cost"

    invoke-virtual {v6, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v3, v4, v6}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    iget-object v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->sCost:Ljava/lang/String;

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v7, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v3, v4, v6, v7}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v7, 0x0

    invoke-direct {v3, v4, v6, v7}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v6, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v3, v4, v5}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    iget v6, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->buildingID:I

    const/4 v8, -0x1

    invoke-static {v5, v8, v6, v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getBuildingConstructionTime(IIII)I

    move-result v5

    const-string v6, "DaysX"

    invoke-virtual {v4, v6, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v3, v4, v5, v6}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->buildTime:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->FortLevel:[I

    if-eqz v3, :cond_3d

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->FortLevel:[I

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->buildingID:I

    aget v3, v3, v4

    if-eqz v3, :cond_3d

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Line;

    invoke-direct {v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Line;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;Z)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text_Desc;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "AfterASuccessfulSiegeAllNeighboringProvincesWithoutDefensiveBuildingsWillBeOccupied"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT3:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v3, v4, v5, v6}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text_Desc;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;Z)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_3d
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;-><init>(Ljava/util/List;)V

    iput-object v2, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    return-void
.end method

.method public final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->drawButtonBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    invoke-virtual {p0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    return-void
.end method

.method protected drawButtonBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    iget-boolean v1, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->built:Z

    const/4 v10, 0x0

    if-eqz v1, :cond_0

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->underConstruction:F

    goto :goto_0

    :cond_0
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->iProvinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    iget v2, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    iget v3, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->buildingID:I

    invoke-virtual {v1, v2, v3}, Laoc/kingdoms/lukasz/map/province/Province;->underConstruction(II)F

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->underConstruction:F

    cmpg-float v1, v1, v10

    if-gez v1, :cond_1

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->iProvinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    iget v2, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    iget v3, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->buildingID:I

    invoke-virtual {v1, v2, v3}, Laoc/kingdoms/lukasz/map/province/Province;->buildingBuilt(II)Z

    move-result v1

    iput-boolean v1, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->built:Z

    if-eqz v1, :cond_1

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2$1;

    const-string v2, "rebuildBuildings"

    invoke-direct {v1, v0, v2}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2$1;-><init>(Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;Ljava/lang/String;)V

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getIsHovered()Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p4, :cond_3

    :cond_2
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getPosX()I

    move-result v1

    add-int v1, v1, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getPosY()I

    move-result v2

    add-int v2, v2, p3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getHeight()I

    move-result v4

    invoke-static {v9, v1, v2, v3, v4}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    :cond_3
    iget-boolean v1, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->built:Z

    const/high16 v11, 0x3f000000    # 0.5f

    const v12, 0x3f666666    # 0.9f

    const v7, 0x3e99999a    # 0.3f

    const v8, 0x3f4ccccd    # 0.8f

    const v14, 0x3e4ccccd    # 0.2f

    const/high16 v15, 0x3f400000    # 0.75f

    const v6, 0x3ecccccd    # 0.4f

    if-eqz v1, :cond_4

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_GREEN:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_GREEN:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_GREEN:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v1, v2, v3, v4, v6}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getPosX()I

    move-result v2

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getPosY()I

    move-result v2

    add-int v4, v2, p3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getHeight()I

    move-result v16

    move-object/from16 v2, p1

    move v13, v6

    move/from16 v6, v16

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_GREEN:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_GREEN:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_GREEN:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v1, v2, v3, v4, v15}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gradientHorizontal:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getPosX()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getInnerPosX()I

    move-result v3

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getPosY()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getTitleHeight()I

    move-result v4

    add-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getInnerWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getImageHeight()I

    move-result v6

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->BUTTON_BUILDING_COLORS_STATS:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->BUTTON_BUILDING_COLORS_STATS:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->BUTTON_BUILDING_COLORS_STATS:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v1, v2, v3, v4, v13}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gradientHorizontal:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getPosX()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getInnerPosX()I

    move-result v3

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getPosY()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getTitleHeight()I

    move-result v4

    add-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getInnerWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getImageHeight()I

    move-result v6

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gradientHorizontal:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getPosX()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getInnerPosX()I

    move-result v3

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getPosY()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getTitleHeight()I

    move-result v4

    add-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getInnerWidth()I

    move-result v5

    const/4 v6, 0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gradientHorizontal:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getPosX()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getInnerPosX()I

    move-result v3

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getPosY()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getTitleHeight()I

    move-result v4

    add-int/2addr v2, v4

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getImageHeight()I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v2, v2, -0x1

    add-int v4, v2, p3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getInnerWidth()I

    move-result v5

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gradientHorizontal:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getPosX()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getInnerPosX()I

    move-result v3

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getPosY()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getTitleHeight()I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v2, v2, -0x1

    add-int v4, v2, p3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getInnerWidth()I

    move-result v5

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_GREEN:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_GREEN:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_GREEN:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v1, v2, v3, v4, v8}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getPosX()I

    move-result v2

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getPosY()I

    move-result v2

    add-int v4, v2, p3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getWidth()I

    move-result v5

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v10, v10, v10, v7}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getPosX()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getInnerPosX()I

    move-result v3

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getPosY()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getTitleHeight()I

    move-result v4

    add-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getInnerWidth()I

    move-result v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v10, v10, v10, v14}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getPosX()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getInnerPosX()I

    move-result v3

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getPosY()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getTitleHeight()I

    move-result v4

    add-int/2addr v2, v4

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getImageHeight()I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getInnerWidth()I

    move-result v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_GREEN:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_GREEN:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_GREEN:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v1, v2, v3, v4, v12}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getPosX()I

    move-result v2

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getPosY()I

    move-result v2

    add-int v4, v2, p3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getTitleHeight()I

    move-result v6

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_GREEN:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_GREEN:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_GREEN:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v1, v2, v3, v4, v11}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getPosX()I

    move-result v2

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getPosY()I

    move-result v2

    add-int v4, v2, p3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getTitleHeight()I

    move-result v6

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_GREEN:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_GREEN:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_GREEN:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v1, v2, v3, v4, v15}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gradientHorizontal:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getPosX()I

    move-result v2

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getPosY()I

    move-result v2

    add-int v4, v2, p3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getTitleHeight()I

    move-result v6

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v10, v10, v10, v14}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getPosX()I

    move-result v2

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getPosY()I

    move-result v2

    add-int v4, v2, p3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getWidth()I

    move-result v5

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v2, 0x2

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_GREEN:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_GREEN:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_GREEN:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gradientHorizontal:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getPosX()I

    move-result v2

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getPosY()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int v4, v2, p3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getWidth()I

    move-result v5

    const/4 v6, 0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gradientHorizontal:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getPosX()I

    move-result v2

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getPosY()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getTitleHeight()I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v2, v2, -0x2

    add-int v4, v2, p3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getWidth()I

    move-result v5

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    goto/16 :goto_1

    :cond_4
    move v13, v6

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v1, v2, v3, v4, v13}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getPosX()I

    move-result v2

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getPosY()I

    move-result v2

    add-int v4, v2, p3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getHeight()I

    move-result v6

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v1, v2, v3, v4, v15}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gradientHorizontal:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getPosX()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getInnerPosX()I

    move-result v3

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getPosY()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getTitleHeight()I

    move-result v4

    add-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getInnerWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getImageHeight()I

    move-result v6

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->BUTTON_BUILDING_COLORS_STATS:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->BUTTON_BUILDING_COLORS_STATS:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->BUTTON_BUILDING_COLORS_STATS:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v1, v2, v3, v4, v13}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gradientHorizontal:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getPosX()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getInnerPosX()I

    move-result v3

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getPosY()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getTitleHeight()I

    move-result v4

    add-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getInnerWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getImageHeight()I

    move-result v6

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gradientHorizontal:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getPosX()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getInnerPosX()I

    move-result v3

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getPosY()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getTitleHeight()I

    move-result v4

    add-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getInnerWidth()I

    move-result v5

    const/4 v6, 0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gradientHorizontal:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getPosX()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getInnerPosX()I

    move-result v3

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getPosY()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getTitleHeight()I

    move-result v4

    add-int/2addr v2, v4

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getImageHeight()I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v2, v2, -0x1

    add-int v4, v2, p3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getInnerWidth()I

    move-result v5

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gradientHorizontal:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getPosX()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getInnerPosX()I

    move-result v3

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getPosY()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getTitleHeight()I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v2, v2, -0x1

    add-int v4, v2, p3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getInnerWidth()I

    move-result v5

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v1, v2, v3, v4, v8}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getPosX()I

    move-result v2

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getPosY()I

    move-result v2

    add-int v4, v2, p3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getWidth()I

    move-result v5

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v10, v10, v10, v7}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getPosX()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getInnerPosX()I

    move-result v3

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getPosY()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getTitleHeight()I

    move-result v4

    add-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getInnerWidth()I

    move-result v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v10, v10, v10, v14}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getPosX()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getInnerPosX()I

    move-result v3

    add-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getPosY()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getTitleHeight()I

    move-result v4

    add-int/2addr v2, v4

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getImageHeight()I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getInnerWidth()I

    move-result v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v1, v2, v3, v4, v12}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getPosX()I

    move-result v2

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getPosY()I

    move-result v2

    add-int v4, v2, p3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getTitleHeight()I

    move-result v6

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v1, v2, v3, v4, v11}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getPosX()I

    move-result v2

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getPosY()I

    move-result v2

    add-int v4, v2, p3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getTitleHeight()I

    move-result v6

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v1, v2, v3, v4, v15}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gradientHorizontal:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getPosX()I

    move-result v2

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getPosY()I

    move-result v2

    add-int v4, v2, p3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getTitleHeight()I

    move-result v6

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v10, v10, v10, v14}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getPosX()I

    move-result v2

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getPosY()I

    move-result v2

    add-int v4, v2, p3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getWidth()I

    move-result v5

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v2, 0x2

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gradientHorizontal:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getPosX()I

    move-result v2

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getPosY()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int v4, v2, p3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getWidth()I

    move-result v5

    const/4 v6, 0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gradientHorizontal:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getPosX()I

    move-result v2

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getPosY()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getTitleHeight()I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v2, v2, -0x2

    add-int v4, v2, p3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getWidth()I

    move-result v5

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    :goto_1
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v10, v10, v10, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gradientHorizontal:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getPosX()I

    move-result v2

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getPosY()I

    move-result v2

    add-int v4, v2, p3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getWidth()I

    move-result v5

    const/4 v6, 0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gradientHorizontal:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getPosX()I

    move-result v2

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getPosY()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getTitleHeight()I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v2, v2, -0x1

    add-int v4, v2, p3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getWidth()I

    move-result v5

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :try_start_0
    sget-object v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildingImages:Ljava/util/List;

    sget-object v2, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v3, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ImageID:[I

    iget v3, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->buildingID:I

    aget v2, v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getPosX()I

    move-result v2

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getPosY()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getTitleHeight()I

    move-result v4

    add-int/2addr v2, v4

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

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v2, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v1, v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredResource:I

    if-ltz v1, :cond_5

    sget-object v1, Laoc/kingdoms/lukasz/map/ResourcesManager;->resourceImages:Ljava/util/List;

    sget-object v2, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v3, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v2, v2, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredResource:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getPosX()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->buildingsFrame:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    sget-object v3, Laoc/kingdoms/lukasz/map/ResourcesManager;->resourceImages:Ljava/util/List;

    sget-object v4, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v5, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

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

    add-int v2, v2, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getPosY()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->buildingsFrame:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget-object v4, Laoc/kingdoms/lukasz/map/ResourcesManager;->resourceImages:Ljava/util/List;

    sget-object v5, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v6, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

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

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getTitleHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v3, v4

    add-int v3, v3, p3

    invoke-virtual {v1, v9, v2, v3}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    :cond_5
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->buildingsFrame:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getPosX()I

    move-result v2

    add-int v2, v2, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getPosY()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getTitleHeight()I

    move-result v4

    add-int/2addr v3, v4

    add-int v3, v3, p3

    invoke-virtual {v1, v9, v2, v3}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    if-eqz p4, :cond_6

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getPosX()I

    move-result v1

    add-int v2, v1, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getPosY()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getTitleHeight()I

    move-result v3

    add-int/2addr v1, v3

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

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxLineFrame(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIILcom/badlogic/gdx/graphics/Color;)V

    goto :goto_2

    :cond_6
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getIsHovered()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getPosX()I

    move-result v1

    add-int v2, v1, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getPosY()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getTitleHeight()I

    move-result v3

    add-int/2addr v1, v3

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

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxLineFrame(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIILcom/badlogic/gdx/graphics/Color;)V

    :cond_7
    :goto_2
    iget v1, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->underConstruction:F

    cmpl-float v1, v1, v10

    if-ltz v1, :cond_8

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->progressBarBG:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->progressBarFrameMask:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getPosX()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->buildingsFrame:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->progressBarFrameMask:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    add-int v2, v2, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getPosY()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->progressBarFrame:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->progressBarFrameMask:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    add-int v3, v3, p3

    invoke-virtual {v1, v9, v2, v3}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->progressBar:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->progressBarFrameMask:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getPosX()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->buildingsFrame:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->progressBarFrameMask:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getPosY()I

    move-result v2

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->progressBarFrame:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->progressBarFrameMask:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->progressBarFrameMask:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v5, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->underConstruction:F

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v13, v6, v5

    mul-float/2addr v2, v13

    float-to-int v5, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->progressBarFrameMask:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->progressBarFrame:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getPosX()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->buildingsFrame:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->progressBarFrame:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    add-int v2, v2, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getPosY()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->progressBarFrame:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    add-int v3, v3, p3

    invoke-virtual {v1, v9, v2, v3}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    :cond_8
    return-void
.end method

.method protected drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 14

    move-object v0, p0

    iget v2, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->fontID:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getPosX()I

    move-result v1

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v4

    add-int v4, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getTitleHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v1, v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getTextHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v1, v5

    add-int v5, v1, p3

    move/from16 v1, p4

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v6

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    iget-boolean v1, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->built:Z

    if-nez v1, :cond_1

    iget v1, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->underConstruction:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->underConstruction:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->sProgress:Ljava/lang/String;

    new-instance v1, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;-><init>()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v3, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->sProgress:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int v1, v1

    iput v1, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->iProgressWidth:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    iget-object v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->sProgress:Ljava/lang/String;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getInnerPosX()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getInnerWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget v2, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->iProgressWidth:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    add-int v5, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getTitleHeight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getImageHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    add-int v6, v1, p3

    sget-object v7, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    move-object v2, p1

    invoke-static/range {v2 .. v7}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    goto/16 :goto_0

    :cond_0
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getInnerPosX()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getInnerWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    iget v3, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->iCostWidth:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->goldIconWidth:I

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    add-int v4, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getTitleHeight()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getImageHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x4

    add-int/2addr v1, v3

    sget v7, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->goldIconHeight:I

    div-int/lit8 v3, v7, 0x2

    sub-int/2addr v1, v3

    add-int v5, v1, p3

    sget v6, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->goldIconWidth:I

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    iget-object v10, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->sCost:Ljava/lang/String;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getInnerPosX()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getInnerWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget v2, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->iCostWidth:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->goldIconWidth:I

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    add-int/2addr v1, v3

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int v11, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getTitleHeight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getImageHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT_SMALL:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    add-int v12, v1, p3

    sget-object v13, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT2:Lcom/badlogic/gdx/graphics/Color;

    move-object v8, p1

    invoke-static/range {v8 .. v13}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->buildTime:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getInnerPosX()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getInnerWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    iget v3, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->iRecruitmentTimeWidth:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->timeIconWidth:I

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    add-int v4, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getTitleHeight()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getImageHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getImageHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x4

    add-int/2addr v1, v3

    sget v7, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->timeIconHeight:I

    div-int/lit8 v3, v7, 0x2

    sub-int/2addr v1, v3

    add-int v5, v1, p3

    sget v6, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->timeIconWidth:I

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    iget-object v10, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->sRecruitmentTime:Ljava/lang/String;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getInnerPosX()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getInnerWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget v2, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->iRecruitmentTimeWidth:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->timeIconWidth:I

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->timeIconWidth:I

    add-int/2addr v1, v2

    add-int v11, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getTitleHeight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getImageHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getImageHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT_SMALL:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    add-int v12, v1, p3

    sget-object v13, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT2:Lcom/badlogic/gdx/graphics/Color;

    invoke-static/range {v8 .. v13}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    goto :goto_0

    :cond_1
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->x:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getInnerPosX()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getInnerWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->x:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    add-int v2, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getPosY()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getTitleHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getImageHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->x:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    add-int v3, v3, p3

    move-object v4, p1

    invoke-virtual {v1, p1, v2, v3}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    :goto_0
    return-void
.end method

.method protected getColor(Z)Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getIsHovered()Z

    move-result v0

    invoke-static {p1, v0}, Laoc/kingdoms/lukasz/menu/Colors;->getColorTopStatsHover(ZZ)Lcom/badlogic/gdx/graphics/Color;

    move-result-object p1

    return-object p1
.end method

.method public getImageHeight()I
    .locals 1

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->buildingsFrame:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    return v0
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

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getWidth()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->buildingsFrame:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getSFX()I
    .locals 1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getBuild()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getSFX()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->sText:Ljava/lang/String;

    return-object v0
.end method

.method public getTextHeight()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->iTextHeight:I

    return v0
.end method

.method public getTitleHeight()I
    .locals 2

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->iTextHeight:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    return v0
.end method

.method public getValue1()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->building:I

    return v0
.end method

.method public getValue2()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->buildingID:I

    return v0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->sText:Ljava/lang/String;

    new-instance p1, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    invoke-direct {p1}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;-><init>()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->fontID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    iget v0, p1, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->iTextWidth:I

    iget p1, p1, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->height:F

    float-to-int p1, p1

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->iTextHeight:I

    return-void
.end method
