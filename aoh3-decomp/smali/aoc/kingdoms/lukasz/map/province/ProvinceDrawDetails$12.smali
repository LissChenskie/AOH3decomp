.class Laoc/kingdoms/lukasz/map/province/ProvinceDrawDetails$12;
.super Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy$ProvinceDrawDetailsINT;
.source "ProvinceDrawDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/map/province/ProvinceDrawDetails;->updateDrawProvinceDetails_ScenarioReligion(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy$ProvinceDrawDetailsINT;-><init>()V

    return-void
.end method


# virtual methods
.method public buildHover(I)Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;
    .locals 5

    sget p1, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result p1

    if-nez p1, :cond_1

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle;

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v2, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_FlagTitle;

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_FlagTitle;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v1, v0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Line;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Line;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v1, v0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/MapScenarios;->editorProvinceReligion:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gez v1, :cond_0

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v3

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligion(I)Laoc/kingdoms/lukasz/map/ReligionManager$Religion;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/ReligionManager$Religion;->Name:Ljava/lang/String;

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v2, v3, v4}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/map/MapScenarios;->editorProvinceReligion:Ljava/util/List;

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligion(I)Laoc/kingdoms/lukasz/map/ReligionManager$Religion;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/ReligionManager$Religion;->Name:Ljava/lang/String;

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v2, v3, v4}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v1, v0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    invoke-direct {v0, p1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;-><init>(Ljava/util/List;)V

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public drawDetails(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V
    .locals 0

    invoke-static {p1, p2}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawDetails;->defaultDrawDetails_Image(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V

    return-void
.end method

.method public drawDetailsSea(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V
    .locals 0

    return-void
.end method
