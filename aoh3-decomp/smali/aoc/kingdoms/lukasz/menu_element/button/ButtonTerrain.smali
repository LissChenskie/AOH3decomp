.class public Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;
.super Laoc/kingdoms/lukasz/menu_element/button/Button;
.source "ButtonTerrain.java"


# instance fields
.field public boxH:I

.field public boxW:I

.field public boxW2:I

.field public iDeathsHeight:I

.field public iDeathsWidth:I

.field public iNameHeight:I

.field public iNameWidth:I

.field public iProvinceID:I

.field public lastValue:I

.field public sDeaths:Ljava/lang/String;

.field public sName:Ljava/lang/String;

.field public terrainID2:I


# direct methods
.method public constructor <init>(III)V
    .locals 12

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;-><init>()V

    const v0, -0xf3916

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->lastValue:I

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->iProvinceID:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->fontID:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->terrainManager:Laoc/kingdoms/lukasz/map/terrain/TerrainManager;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;->terrainImages:Ljava/util/List;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getTerrainID()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    rem-int v0, p1, v0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->terrainID2:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->terrainManager:Laoc/kingdoms/lukasz/map/terrain/TerrainManager;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;->terrains:Ljava/util/List;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/Province;->getTerrainID()I

    move-result p1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/map/terrain/Terrain;

    iget-object v1, p1, Laoc/kingdoms/lukasz/map/terrain/Terrain;->Name:Ljava/lang/String;

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->fontID:I

    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->iTextPositionX:I

    sget p1, Laoc/kingdoms/lukasz/textures/Images;->terrainFrame:I

    invoke-static {p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v6

    sget p1, Laoc/kingdoms/lukasz/textures/Images;->terrainFrame:I

    invoke-static {p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v7

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->init(Ljava/lang/String;IIIIIIZZZZ)V

    return-void
.end method


# virtual methods
.method public buildElementHover()V
    .locals 16

    move-object/from16 v1, p0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v6, "Terrain"

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    invoke-direct {v0, v4, v6}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle;-><init>(Ljava/lang/String;I)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->terrainManager:Laoc/kingdoms/lukasz/map/terrain/TerrainManager;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;->terrains:Ljava/util/List;

    iget v6, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->iProvinceID:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getTerrainID()I

    move-result v6

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/terrain/Terrain;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/terrain/Terrain;->Name:Ljava/lang/String;

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    sget-object v7, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v4, v6, v7}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v0, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Line;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Line;-><init>()V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v0, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    iget v0, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->iProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getTerrainID()I

    move-result v0

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->terrainManager:Laoc/kingdoms/lukasz/map/terrain/TerrainManager;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;->terrains:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/terrain/Terrain;

    iget v4, v4, Laoc/kingdoms/lukasz/map/terrain/Terrain;->Defense:I

    const-string v6, "+"

    const/4 v7, 0x0

    const-string v8, ""

    if-eqz v4, :cond_3

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v11, "DefenseBonus"

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v4, v9, v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->terrainManager:Laoc/kingdoms/lukasz/map/terrain/TerrainManager;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;->terrains:Ljava/util/List;

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/terrain/Terrain;

    iget v10, v10, Laoc/kingdoms/lukasz/map/terrain/Terrain;->Defense:I

    if-lez v10, :cond_0

    move-object v10, v6

    goto :goto_0

    :cond_0
    move-object v10, v8

    :goto_0
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->terrainManager:Laoc/kingdoms/lukasz/map/terrain/TerrainManager;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;->terrains:Ljava/util/List;

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/terrain/Terrain;

    iget v10, v10, Laoc/kingdoms/lukasz/map/terrain/Terrain;->Defense:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->terrainManager:Laoc/kingdoms/lukasz/map/terrain/TerrainManager;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;->terrains:Ljava/util/List;

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/terrain/Terrain;

    iget v10, v10, Laoc/kingdoms/lukasz/map/terrain/Terrain;->Defense:I

    if-nez v10, :cond_1

    sget-object v10, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_NEUTRAL:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_1

    :cond_1
    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->terrainManager:Laoc/kingdoms/lukasz/map/terrain/TerrainManager;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;->terrains:Ljava/util/List;

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/terrain/Terrain;

    iget v10, v10, Laoc/kingdoms/lukasz/map/terrain/Terrain;->Defense:I

    if-lez v10, :cond_2

    sget-object v10, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_1

    :cond_2
    sget-object v10, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_NEGATIVE:Lcom/badlogic/gdx/graphics/Color;

    :goto_1
    invoke-direct {v4, v9, v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    sget v9, Laoc/kingdoms/lukasz/textures/Images;->defense:I

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    invoke-direct {v4, v9, v10, v7}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v4, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    :cond_3
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->terrainManager:Laoc/kingdoms/lukasz/map/terrain/TerrainManager;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;->terrains:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/terrain/Terrain;

    iget v4, v4, Laoc/kingdoms/lukasz/map/terrain/Terrain;->MovementSpeed:F

    float-to-double v9, v4

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v9, v11

    const/high16 v9, 0x42c80000    # 100.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const-string v13, "%"

    if-eqz v4, :cond_7

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "MovementSpeed"

    invoke-virtual {v15, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v4, v7, v14}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v14, Laoc/kingdoms/lukasz/jakowski/Game;->terrainManager:Laoc/kingdoms/lukasz/map/terrain/TerrainManager;

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;->terrains:Ljava/util/List;

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/terrain/Terrain;

    iget v14, v14, Laoc/kingdoms/lukasz/map/terrain/Terrain;->MovementSpeed:F

    float-to-double v14, v14

    cmpl-double v14, v14, v11

    if-lez v14, :cond_4

    move-object v14, v6

    goto :goto_2

    :cond_4
    move-object v14, v8

    :goto_2
    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v14, Laoc/kingdoms/lukasz/jakowski/Game;->terrainManager:Laoc/kingdoms/lukasz/map/terrain/TerrainManager;

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;->terrains:Ljava/util/List;

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/terrain/Terrain;

    iget v14, v14, Laoc/kingdoms/lukasz/map/terrain/Terrain;->MovementSpeed:F

    sub-float/2addr v14, v10

    mul-float/2addr v14, v9

    float-to-int v14, v14

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v14, Laoc/kingdoms/lukasz/jakowski/Game;->terrainManager:Laoc/kingdoms/lukasz/map/terrain/TerrainManager;

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;->terrains:Ljava/util/List;

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/terrain/Terrain;

    iget v14, v14, Laoc/kingdoms/lukasz/map/terrain/Terrain;->MovementSpeed:F

    float-to-double v14, v14

    cmpl-double v14, v14, v11

    if-nez v14, :cond_5

    sget-object v14, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_NEUTRAL:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_3

    :cond_5
    sget-object v14, Laoc/kingdoms/lukasz/jakowski/Game;->terrainManager:Laoc/kingdoms/lukasz/map/terrain/TerrainManager;

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;->terrains:Ljava/util/List;

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/terrain/Terrain;

    iget v14, v14, Laoc/kingdoms/lukasz/map/terrain/Terrain;->MovementSpeed:F

    float-to-double v14, v14

    cmpl-double v14, v14, v11

    if-lez v14, :cond_6

    sget-object v14, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_3

    :cond_6
    sget-object v14, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_NEGATIVE:Lcom/badlogic/gdx/graphics/Color;

    :goto_3
    invoke-direct {v4, v7, v14}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->movementSpeed:I

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v15, 0x0

    invoke-direct {v4, v7, v14, v15}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v4, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    :cond_7
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->terrainManager:Laoc/kingdoms/lukasz/map/terrain/TerrainManager;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;->terrains:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/terrain/Terrain;

    iget v4, v4, Laoc/kingdoms/lukasz/map/terrain/Terrain;->PopulationGrowth:I

    if-eqz v4, :cond_b

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v15, "PopulationGrowthModifier"

    invoke-virtual {v14, v15}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v4, v7, v14}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v14, Laoc/kingdoms/lukasz/jakowski/Game;->terrainManager:Laoc/kingdoms/lukasz/map/terrain/TerrainManager;

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;->terrains:Ljava/util/List;

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/terrain/Terrain;

    iget v14, v14, Laoc/kingdoms/lukasz/map/terrain/Terrain;->PopulationGrowth:I

    if-lez v14, :cond_8

    move-object v14, v6

    goto :goto_4

    :cond_8
    move-object v14, v8

    :goto_4
    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v14, Laoc/kingdoms/lukasz/jakowski/Game;->terrainManager:Laoc/kingdoms/lukasz/map/terrain/TerrainManager;

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;->terrains:Ljava/util/List;

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/terrain/Terrain;

    iget v14, v14, Laoc/kingdoms/lukasz/map/terrain/Terrain;->PopulationGrowth:I

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v14, Laoc/kingdoms/lukasz/jakowski/Game;->terrainManager:Laoc/kingdoms/lukasz/map/terrain/TerrainManager;

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;->terrains:Ljava/util/List;

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/terrain/Terrain;

    iget v14, v14, Laoc/kingdoms/lukasz/map/terrain/Terrain;->PopulationGrowth:I

    if-nez v14, :cond_9

    sget-object v14, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_NEUTRAL:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_5

    :cond_9
    sget-object v14, Laoc/kingdoms/lukasz/jakowski/Game;->terrainManager:Laoc/kingdoms/lukasz/map/terrain/TerrainManager;

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;->terrains:Ljava/util/List;

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/terrain/Terrain;

    iget v14, v14, Laoc/kingdoms/lukasz/map/terrain/Terrain;->PopulationGrowth:I

    if-lez v14, :cond_a

    sget-object v14, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_5

    :cond_a
    sget-object v14, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_NEGATIVE:Lcom/badlogic/gdx/graphics/Color;

    :goto_5
    invoke-direct {v4, v7, v14}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->populationGrowth:I

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v15, 0x0

    invoke-direct {v4, v7, v14, v15}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v4, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    :cond_b
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->terrainManager:Laoc/kingdoms/lukasz/map/terrain/TerrainManager;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;->terrains:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/terrain/Terrain;

    iget v4, v4, Laoc/kingdoms/lukasz/map/terrain/Terrain;->IncreaseGrowthRateCost:F

    cmpl-float v4, v4, v10

    if-eqz v4, :cond_e

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v15, "IncreaseGrowthRateCost"

    invoke-virtual {v14, v15}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v4, v7, v14}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v14, Laoc/kingdoms/lukasz/jakowski/Game;->terrainManager:Laoc/kingdoms/lukasz/map/terrain/TerrainManager;

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;->terrains:Ljava/util/List;

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/terrain/Terrain;

    iget v14, v14, Laoc/kingdoms/lukasz/map/terrain/Terrain;->IncreaseGrowthRateCost:F

    mul-float/2addr v14, v9

    float-to-int v14, v14

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v14, Laoc/kingdoms/lukasz/jakowski/Game;->terrainManager:Laoc/kingdoms/lukasz/map/terrain/TerrainManager;

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;->terrains:Ljava/util/List;

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/terrain/Terrain;

    iget v14, v14, Laoc/kingdoms/lukasz/map/terrain/Terrain;->IncreaseGrowthRateCost:F

    cmpl-float v14, v14, v10

    if-nez v14, :cond_c

    sget-object v14, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_NEUTRAL:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_6

    :cond_c
    sget-object v14, Laoc/kingdoms/lukasz/jakowski/Game;->terrainManager:Laoc/kingdoms/lukasz/map/terrain/TerrainManager;

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;->terrains:Ljava/util/List;

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/terrain/Terrain;

    iget v14, v14, Laoc/kingdoms/lukasz/map/terrain/Terrain;->IncreaseGrowthRateCost:F

    cmpg-float v14, v14, v10

    if-gez v14, :cond_d

    sget-object v14, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_6

    :cond_d
    sget-object v14, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_NEGATIVE:Lcom/badlogic/gdx/graphics/Color;

    :goto_6
    invoke-direct {v4, v7, v14}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->populationGrowth:I

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v15, 0x0

    invoke-direct {v4, v7, v14, v15}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v4, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    :cond_e
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->terrainManager:Laoc/kingdoms/lukasz/map/terrain/TerrainManager;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;->terrains:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/terrain/Terrain;

    iget v4, v4, Laoc/kingdoms/lukasz/map/terrain/Terrain;->BuildCost:F

    float-to-double v14, v4

    cmpl-double v4, v14, v11

    if-eqz v4, :cond_12

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "BuildCostModifier"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v4, v7, v11}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->terrainManager:Laoc/kingdoms/lukasz/map/terrain/TerrainManager;

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;->terrains:Ljava/util/List;

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/terrain/Terrain;

    iget v11, v11, Laoc/kingdoms/lukasz/map/terrain/Terrain;->BuildCost:F

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-lez v11, :cond_f

    move-object v11, v6

    goto :goto_7

    :cond_f
    move-object v11, v8

    :goto_7
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->terrainManager:Laoc/kingdoms/lukasz/map/terrain/TerrainManager;

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;->terrains:Ljava/util/List;

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/terrain/Terrain;

    iget v11, v11, Laoc/kingdoms/lukasz/map/terrain/Terrain;->BuildCost:F

    sub-float/2addr v11, v10

    mul-float/2addr v11, v9

    float-to-int v10, v11

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->terrainManager:Laoc/kingdoms/lukasz/map/terrain/TerrainManager;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;->terrains:Ljava/util/List;

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/terrain/Terrain;

    iget v10, v10, Laoc/kingdoms/lukasz/map/terrain/Terrain;->BuildCost:F

    cmpl-float v10, v10, v12

    if-nez v10, :cond_10

    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_NEUTRAL:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_8

    :cond_10
    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->terrainManager:Laoc/kingdoms/lukasz/map/terrain/TerrainManager;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;->terrains:Ljava/util/List;

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/terrain/Terrain;

    iget v0, v0, Laoc/kingdoms/lukasz/map/terrain/Terrain;->BuildCost:F

    cmpg-float v0, v0, v12

    if-gez v0, :cond_11

    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_8

    :cond_11
    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_NEGATIVE:Lcom/badlogic/gdx/graphics/Color;

    :goto_8
    invoke-direct {v4, v7, v0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->build:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v10, 0x0

    invoke-direct {v0, v4, v7, v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v0, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    :cond_12
    :try_start_0
    iget v0, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->iProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/province/Province;->provincePlague:Laoc/kingdoms/lukasz/map/plague/ProvincePlague;

    if-eqz v0, :cond_14

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Line;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Line;-><init>()V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v0, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v10, "Plague"

    invoke-virtual {v7, v10}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    invoke-direct {v0, v4, v7}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Laoc/kingdoms/lukasz/map/plague/PlagueManager;->activePlagues:Ljava/util/List;

    iget v10, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->iProvinceID:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/province/Province;->provincePlague:Laoc/kingdoms/lukasz/map/plague/ProvincePlague;

    iget v10, v10, Laoc/kingdoms/lukasz/map/plague/ProvincePlague;->id:I

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/plague/Plague;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/plague/Plague;->sName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    sget-object v10, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v4, v7, v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Disease;

    sget-object v4, Laoc/kingdoms/lukasz/map/plague/PlagueManager;->activePlagues:Ljava/util/List;

    iget v7, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->iProvinceID:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/province/Province;->provincePlague:Laoc/kingdoms/lukasz/map/plague/ProvincePlague;

    iget v7, v7, Laoc/kingdoms/lukasz/map/plague/ProvincePlague;->id:I

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/plague/Plague;

    iget v4, v4, Laoc/kingdoms/lukasz/map/plague/Plague;->iImageID:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v10, 0x0

    invoke-direct {v0, v4, v7, v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Disease;-><init>(III)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v0, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v10, "Deaths"

    invoke-virtual {v7, v10}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v0, v4, v7}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v10, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->iProvinceID:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/province/Province;->provincePlague:Laoc/kingdoms/lukasz/map/plague/ProvincePlague;

    iget v10, v10, Laoc/kingdoms/lukasz/map/plague/ProvincePlague;->deaths:I

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    iget v10, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->iProvinceID:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/province/Province;->provincePlague:Laoc/kingdoms/lukasz/map/plague/ProvincePlague;

    iget v10, v10, Laoc/kingdoms/lukasz/map/plague/ProvincePlague;->deaths:I

    if-lez v10, :cond_13

    sget-object v10, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_NEGATIVE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_9

    :cond_13
    sget-object v10, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_NEUTRAL:Lcom/badlogic/gdx/graphics/Color;

    :goto_9
    invoke-direct {v0, v4, v7, v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->skull:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v10, 0x0

    invoke-direct {v0, v4, v7, v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v0, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v10, "Day"

    invoke-virtual {v7, v10}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v0, v4, v7}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v7, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    iget v10, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->iProvinceID:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/province/Province;->provincePlague:Laoc/kingdoms/lukasz/map/plague/ProvincePlague;

    iget v10, v10, Laoc/kingdoms/lukasz/map/plague/ProvincePlague;->sinceTurnID:I

    sub-int/2addr v7, v10

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v10, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v4, v7, v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->time:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v10, 0x0

    invoke-direct {v0, v4, v7, v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v0, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_a

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_14
    :goto_a
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Line;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Line;-><init>()V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v0, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v10, "TotalNumberOfAllDiseasesInProvince"

    invoke-virtual {v7, v10}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v0, v4, v7}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v10, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->iProvinceID:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData10(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData10;

    move-result-object v10

    iget v10, v10, Laoc/kingdoms/lukasz/map/province/data/ProvinceData10;->n:I

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v10, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v4, v7, v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->disease:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v10, 0x0

    invoke-direct {v0, v4, v7, v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v0, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v10, "TotalDeathsDueToDiseasesDuringTheGame"

    invoke-virtual {v7, v10}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v0, v4, v7}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v10, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->iProvinceID:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData10(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData10;

    move-result-object v10

    iget v10, v10, Laoc/kingdoms/lukasz/map/province/data/ProvinceData10;->d:I

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    iget v10, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->iProvinceID:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData10(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData10;

    move-result-object v10

    iget v10, v10, Laoc/kingdoms/lukasz/map/province/data/ProvinceData10;->d:I

    if-lez v10, :cond_15

    sget-object v10, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_NEGATIVE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_b

    :cond_15
    sget-object v10, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_NEUTRAL:Lcom/badlogic/gdx/graphics/Color;

    :goto_b
    invoke-direct {v0, v4, v7, v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->skull:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v10, 0x0

    invoke-direct {v0, v4, v7, v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v0, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Line;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Line;-><init>()V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v0, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v0

    if-ltz v0, :cond_16

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v10, "DistanceFromCapital"

    invoke-virtual {v7, v10}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v0, v4, v7}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v7

    iget v10, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->iProvinceID:I

    invoke-static {v7, v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getDistanceFromAToB_Km(II)F

    move-result v7

    const/16 v10, 0xa

    invoke-static {v7, v10}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " km"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v10, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v4, v7, v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->capital:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v10, 0x0

    invoke-direct {v0, v4, v7, v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Flag;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    invoke-direct {v0, v4, v7, v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Flag;-><init>(III)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v0, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    :cond_16
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v10, "Infrastructure"

    invoke-virtual {v7, v10}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    invoke-direct {v0, v4, v7}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->iProvinceID:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getInfrastructure()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " / "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v7, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->iProvinceID:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    iget v7, v7, Laoc/kingdoms/lukasz/map/province/Province;->iInfrastructureMax:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v10, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v4, v7, v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->infrastructure:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v10, 0x0

    invoke-direct {v0, v4, v7, v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v0, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v10, "DiseasesDeathRate"

    invoke-virtual {v7, v10}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v0, v4, v7}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->iProvinceID:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getInfrastructure()I

    move-result v7

    if-lez v7, :cond_17

    goto :goto_c

    :cond_17
    move-object v6, v8

    :goto_c
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/GameValues;->infrastructure:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;->INFRASTRUCTURE_DISEASE_DEATH_RATE_PER_LVL:F

    mul-float/2addr v6, v9

    iget v7, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->iProvinceID:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getInfrastructure()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    const/16 v7, 0x64

    invoke-static {v6, v7}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->iProvinceID:I

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->getInfrastructure()I

    move-result v8

    if-lez v8, :cond_18

    sget-object v8, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_d

    :cond_18
    sget-object v8, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_NEUTRAL:Lcom/badlogic/gdx/graphics/Color;

    :goto_d
    invoke-direct {v0, v4, v6, v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->disease:I

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    invoke-direct {v0, v4, v6, v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "PerLevel"

    invoke-virtual {v6, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->infrastructure:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;->INFRASTRUCTURE_DISEASE_DEATH_RATE_PER_LVL:F

    mul-float/2addr v5, v9

    invoke-static {v5, v7}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT3:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v4, v5, v6}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v0, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain$1;

    invoke-direct {v0, v1, v2}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain$1;-><init>(Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;Ljava/util/List;)V

    iput-object v0, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    return-void
.end method

.method protected drawButtonBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 12

    move-object v1, p0

    move-object v10, p1

    const-string v0, ""

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->terrainManager:Laoc/kingdoms/lukasz/map/terrain/TerrainManager;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;->terrainImages:Ljava/util/List;

    iget v3, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->iProvinceID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getTerrainID()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    iget v3, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->terrainID2:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->getPosX()I

    move-result v3

    add-int v4, v3, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->getPosY()I

    move-result v3

    add-int v5, v3, p3

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->terrainFrame:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v6

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->terrainFrame:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v7

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v2, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo;->provinceIMG:Laoc/kingdoms/lukasz/textures/Image;

    if-eqz v2, :cond_0

    sget-object v2, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo;->provinceIMG:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->getPosX()I

    move-result v3

    add-int v4, v3, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->getPosY()I

    move-result v3

    add-int v5, v3, p3

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->terrainFrame:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v6

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->terrainFrame:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v7

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    :cond_0
    const/high16 v11, 0x3f000000    # 0.5f

    :try_start_0
    iget v2, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->iProvinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->provincePlague:Laoc/kingdoms/lukasz/map/plague/ProvincePlague;

    if-eqz v2, :cond_2

    iget v2, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->lastValue:I

    iget v3, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->iProvinceID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->provincePlague:Laoc/kingdoms/lukasz/map/plague/ProvincePlague;

    iget v3, v3, Laoc/kingdoms/lukasz/map/plague/ProvincePlague;->deaths:I

    if-eq v2, v3, :cond_1

    sget-object v2, Laoc/kingdoms/lukasz/map/plague/PlagueManager;->activePlagues:Ljava/util/List;

    iget v3, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->iProvinceID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->provincePlague:Laoc/kingdoms/lukasz/map/plague/ProvincePlague;

    iget v3, v3, Laoc/kingdoms/lukasz/map/plague/ProvincePlague;->id:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/plague/Plague;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/plague/Plague;->sName:Ljava/lang/String;

    iput-object v2, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->sName:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "Deaths"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->iProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/province/Province;->provincePlague:Laoc/kingdoms/lukasz/map/plague/ProvincePlague;

    iget v0, v0, Laoc/kingdoms/lukasz/map/plague/ProvincePlague;->deaths:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->sDeaths:Ljava/lang/String;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    iget v3, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->fontID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v3, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->sName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int v0, v0

    iput v0, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->iNameWidth:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->height:F

    float-to-int v0, v0

    iput v0, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->iNameHeight:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    iget v3, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->fontID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v3, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->sDeaths:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int v0, v0

    iput v0, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->iDeathsWidth:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->height:F

    float-to-int v0, v0

    iput v0, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->iDeathsHeight:I

    sget-object v0, Laoc/kingdoms/lukasz/map/plague/PlagueManager;->plagueImagesBig:Ljava/util/List;

    sget-object v2, Laoc/kingdoms/lukasz/map/plague/PlagueManager;->activePlagues:Ljava/util/List;

    iget v3, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->iProvinceID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->provincePlague:Laoc/kingdoms/lukasz/map/plague/ProvincePlague;

    iget v3, v3, Laoc/kingdoms/lukasz/map/plague/ProvincePlague;->id:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/plague/Plague;

    iget v2, v2, Laoc/kingdoms/lukasz/map/plague/Plague;->iImageID:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->getPlaguePaddingInnerX()I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v0, v2

    iget v2, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->iNameWidth:I

    iget v3, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->iDeathsWidth:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v0, v2

    iput v0, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->boxW:I

    sget-object v0, Laoc/kingdoms/lukasz/map/plague/PlagueManager;->plagueImagesBig:Ljava/util/List;

    sget-object v2, Laoc/kingdoms/lukasz/map/plague/PlagueManager;->activePlagues:Ljava/util/List;

    iget v3, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->iProvinceID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->provincePlague:Laoc/kingdoms/lukasz/map/plague/ProvincePlague;

    iget v3, v3, Laoc/kingdoms/lukasz/map/plague/ProvincePlague;->id:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/plague/Plague;

    iget v2, v2, Laoc/kingdoms/lukasz/map/plague/Plague;->iImageID:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->getPlaguePaddingInnerX()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    iput v0, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->boxW2:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->getPlaguePaddingInner()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    sget-object v2, Laoc/kingdoms/lukasz/map/plague/PlagueManager;->plagueImagesBig:Ljava/util/List;

    sget-object v3, Laoc/kingdoms/lukasz/map/plague/PlagueManager;->activePlagues:Ljava/util/List;

    iget v4, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->iProvinceID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/province/Province;->provincePlague:Laoc/kingdoms/lukasz/map/plague/ProvincePlague;

    iget v4, v4, Laoc/kingdoms/lukasz/map/plague/ProvincePlague;->id:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/plague/Plague;

    iget v3, v3, Laoc/kingdoms/lukasz/map/plague/Plague;->iImageID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    iget v3, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->iDeathsHeight:I

    iget v4, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->iNameHeight:I

    add-int/2addr v3, v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->getPlaguePaddingInner()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v0, v2

    iput v0, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->boxH:I

    :cond_1
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v0, v2, v3, v4, v11}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v3, Laoc/kingdoms/lukasz/textures/Images;->statsRectBG:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->getPlaguePadding()I

    move-result v2

    add-int/2addr v0, v2

    add-int v4, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->getPlaguePadding()I

    move-result v2

    add-int/2addr v0, v2

    add-int v5, v0, p3

    iget v6, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->boxW:I

    iget v7, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->boxH:I

    const/high16 v8, 0x3f800000    # 1.0f

    move-object v2, p1

    invoke-static/range {v2 .. v8}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/textures/Image;IIIIF)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v5, 0x3e99999a    # 0.3f

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v3, Laoc/kingdoms/lukasz/textures/Images;->statsRectBG:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->getPlaguePadding()I

    move-result v2

    add-int/2addr v0, v2

    add-int v4, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->getPlaguePadding()I

    move-result v2

    add-int/2addr v0, v2

    add-int v5, v0, p3

    iget v6, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->boxW2:I

    iget v7, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->boxH:I

    const/high16 v8, 0x3f800000    # 1.0f

    move-object v2, p1

    invoke-static/range {v2 .. v8}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/textures/Image;IIIIF)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    const/high16 v5, 0x3e800000    # 0.25f

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->getPlaguePadding()I

    move-result v3

    add-int/2addr v0, v3

    add-int v4, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->getPosY()I

    move-result v0

    iget v3, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->boxH:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->getPlaguePadding()I

    move-result v3

    add-int/2addr v0, v3

    add-int v5, v0, p3

    iget v6, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->boxW:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v7, v0, 0x2

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->getPlaguePadding()I

    move-result v3

    add-int/2addr v0, v3

    add-int v4, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->getPlaguePadding()I

    move-result v3

    add-int/2addr v0, v3

    add-int v5, v0, p3

    iget v6, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->boxW:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v7, v0, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v3, p1

    invoke-virtual/range {v2 .. v9}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3ee66666    # 0.45f

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v3, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->getPlaguePadding()I

    move-result v3

    add-int/2addr v0, v3

    add-int v4, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->getPlaguePadding()I

    move-result v3

    add-int/2addr v0, v3

    add-int v5, v0, p3

    iget v6, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->boxW:I

    const/4 v7, 0x1

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->getPlaguePadding()I

    move-result v3

    add-int/2addr v0, v3

    add-int v4, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->getPosY()I

    move-result v0

    iget v3, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->boxH:I

    add-int/2addr v0, v3

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->getPlaguePadding()I

    move-result v3

    add-int/2addr v0, v3

    add-int v5, v0, p3

    iget v6, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->boxW:I

    const/4 v7, 0x1

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v0, Laoc/kingdoms/lukasz/map/plague/PlagueManager;->plagueImagesBig:Ljava/util/List;

    sget-object v2, Laoc/kingdoms/lukasz/map/plague/PlagueManager;->activePlagues:Ljava/util/List;

    iget v3, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->iProvinceID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->provincePlague:Laoc/kingdoms/lukasz/map/plague/ProvincePlague;

    iget v3, v3, Laoc/kingdoms/lukasz/map/plague/ProvincePlague;->id:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/plague/Plague;

    iget v2, v2, Laoc/kingdoms/lukasz/map/plague/Plague;->iImageID:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->getPlaguePadding()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->getPlaguePaddingInnerX()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->getPosY()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->getPlaguePadding()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->boxH:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sget-object v4, Laoc/kingdoms/lukasz/map/plague/PlagueManager;->plagueImagesBig:Ljava/util/List;

    sget-object v5, Laoc/kingdoms/lukasz/map/plague/PlagueManager;->activePlagues:Ljava/util/List;

    iget v6, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->iProvinceID:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/province/Province;->provincePlague:Laoc/kingdoms/lukasz/map/plague/ProvincePlague;

    iget v6, v6, Laoc/kingdoms/lukasz/map/plague/ProvincePlague;->id:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/plague/Plague;

    iget v5, v5, Laoc/kingdoms/lukasz/map/plague/Plague;->iImageID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    add-int/2addr v3, p3

    invoke-virtual {v0, p1, v2, v3}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    iget v3, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->fontID:I

    iget-object v4, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->sName:Ljava/lang/String;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->getPlaguePadding()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->getPlaguePaddingInnerX()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    add-int/2addr v0, v2

    add-int/2addr v0, p2

    sget-object v2, Laoc/kingdoms/lukasz/map/plague/PlagueManager;->plagueImagesBig:Ljava/util/List;

    sget-object v5, Laoc/kingdoms/lukasz/map/plague/PlagueManager;->activePlagues:Ljava/util/List;

    iget v6, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->iProvinceID:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/province/Province;->provincePlague:Laoc/kingdoms/lukasz/map/plague/ProvincePlague;

    iget v6, v6, Laoc/kingdoms/lukasz/map/plague/ProvincePlague;->id:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/plague/Plague;

    iget v5, v5, Laoc/kingdoms/lukasz/map/plague/Plague;->iImageID:I

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    add-int v5, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->getPlaguePadding()I

    move-result v2

    add-int/2addr v0, v2

    iget v2, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->boxH:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    iget v2, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->iNameHeight:I

    iget v6, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->iDeathsHeight:I

    add-int/2addr v2, v6

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->getPlaguePaddingInnerX()I

    move-result v6

    add-int/2addr v2, v6

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    add-int v6, v0, p3

    sget-object v7, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_IMPORTANT:Lcom/badlogic/gdx/graphics/Color;

    move-object v2, p1

    invoke-static/range {v2 .. v7}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    iget v3, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->fontID:I

    iget-object v4, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->sDeaths:Ljava/lang/String;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->getPlaguePadding()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->getPlaguePaddingInnerX()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    add-int/2addr v0, v2

    add-int/2addr v0, p2

    sget-object v2, Laoc/kingdoms/lukasz/map/plague/PlagueManager;->plagueImagesBig:Ljava/util/List;

    sget-object v5, Laoc/kingdoms/lukasz/map/plague/PlagueManager;->activePlagues:Ljava/util/List;

    iget v6, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->iProvinceID:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/province/Province;->provincePlague:Laoc/kingdoms/lukasz/map/plague/ProvincePlague;

    iget v6, v6, Laoc/kingdoms/lukasz/map/plague/ProvincePlague;->id:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/plague/Plague;

    iget v5, v5, Laoc/kingdoms/lukasz/map/plague/Plague;->iImageID:I

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    add-int v5, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->getPlaguePadding()I

    move-result v2

    add-int/2addr v0, v2

    iget v2, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->boxH:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    iget v2, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->iNameHeight:I

    iget v6, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->iDeathsHeight:I

    add-int/2addr v2, v6

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->getPlaguePaddingInnerX()I

    move-result v6

    add-int/2addr v2, v6

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    iget v2, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->iNameHeight:I

    add-int/2addr v0, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->getPlaguePaddingInnerX()I

    move-result v2

    add-int/2addr v0, v2

    add-int v6, v0, p3

    sget-object v7, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_IMPORTANT:Lcom/badlogic/gdx/graphics/Color;

    move-object v2, p1

    invoke-static/range {v2 .. v7}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    goto :goto_0

    :cond_2
    const v0, -0xf3916

    iput v0, v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->lastValue:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_0
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v0, v2, v3, v4, v11}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v2, Laoc/kingdoms/lukasz/menu/MenuManager;->sparksAnimation:Laoc/kingdoms/lukasz/jakowski/Renderer/SparksAnimation;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->getPosX()I

    move-result v0

    add-int v4, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->getPosY()I

    move-result v0

    add-int v5, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->getHeight()I

    move-result v7

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/jakowski/Renderer/SparksAnimation;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->terrainFrame:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->getPosX()I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->getPosY()I

    move-result v3

    add-int/2addr v3, p3

    invoke-virtual {v0, p1, v2, v3}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    if-eqz p4, :cond_3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->getPosX()I

    move-result v0

    add-int v3, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->getPosY()I

    move-result v0

    add-int v4, v0, p3

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->terrainFrame:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v5

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->terrainFrame:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    sget-object v7, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_BOX_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    move-object v2, p1

    invoke-static/range {v2 .. v7}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxLineFrame(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIILcom/badlogic/gdx/graphics/Color;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->getIsHovered()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->getPosX()I

    move-result v0

    add-int v3, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->getPosY()I

    move-result v0

    add-int v4, v0, p3

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->terrainFrame:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v5

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->terrainFrame:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    sget-object v7, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_BOX_HOVER:Lcom/badlogic/gdx/graphics/Color;

    move-object v2, p1

    invoke-static/range {v2 .. v7}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxLineFrame(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIILcom/badlogic/gdx/graphics/Color;)V

    :cond_4
    :goto_1
    return-void
.end method

.method protected drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 11

    new-instance p4, Lcom/badlogic/gdx/graphics/Color;

    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->b:F

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-direct {p4, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v5, Laoc/kingdoms/lukasz/textures/Images;->statsRectBG:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->getPosX()I

    move-result p4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->getWidth()I

    move-result v0

    add-int/2addr p4, v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->getTextWidth()I

    move-result v0

    sub-int/2addr p4, v0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x3

    sub-int/2addr p4, v0

    add-int v6, p4, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->getPosY()I

    move-result p4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->getHeight()I

    move-result v0

    add-int/2addr p4, v0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x3

    sub-int/2addr p4, v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->getTextHeight()I

    move-result v0

    sub-int/2addr p4, v0

    add-int v7, p4, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->getTextWidth()I

    move-result p4

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    add-int v8, p4, v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->getTextHeight()I

    move-result p4

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    add-int v9, p4, v0

    const/high16 v10, 0x3f800000    # 1.0f

    move-object v4, p1

    invoke-static/range {v4 .. v10}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/textures/Image;IIIIF)V

    sget-object p4, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->fontID:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->getPosX()I

    move-result p4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->getWidth()I

    move-result v0

    add-int/2addr p4, v0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr p4, v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->getTextWidth()I

    move-result v0

    sub-int/2addr p4, v0

    add-int v3, p4, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->getPosY()I

    move-result p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->getHeight()I

    move-result p4

    add-int/2addr p2, p4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTerrain;->getTextHeight()I

    move-result p4

    sub-int/2addr p2, p4

    sget p4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 p4, p4, 0x2

    sub-int/2addr p2, p4

    add-int v4, p2, p3

    sget-object v5, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_IMPORTANT:Lcom/badlogic/gdx/graphics/Color;

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public final getPlaguePadding()I
    .locals 1

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    return v0
.end method

.method public final getPlaguePaddingInner()I
    .locals 1

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    return v0
.end method

.method public final getPlaguePaddingInnerX()I
    .locals 2

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method
