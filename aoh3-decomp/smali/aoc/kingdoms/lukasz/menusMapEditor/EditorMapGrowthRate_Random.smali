.class public Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGrowthRate_Random;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "EditorMapGrowthRate_Random.java"


# static fields
.field public static iRandom:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 20

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v9, v0, 0x2

    sget v16, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->LEFT_MENU_WIDTH:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v17, v0, 0x5

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sub-int v0, v0, v17

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x4

    sub-int v18, v0, v1

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x4

    add-int v19, v0, v1

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    new-instance v1, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGrowthRate_Random$1;

    mul-int/lit8 v2, v9, 0x2

    sub-int v11, v17, v2

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    const/4 v13, 0x0

    const/16 v14, 0x14

    sget v15, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGrowthRate_Random;->iRandom:I

    move-object v7, v1

    move-object/from16 v8, p0

    move v10, v0

    invoke-direct/range {v7 .. v15}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGrowthRate_Random$1;-><init>(Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGrowthRate_Random;IIIIIII)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    add-int/2addr v1, v0

    add-int v7, v0, v1

    new-instance v8, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "Random"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, v8

    move/from16 v3, v16

    invoke-direct/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;-><init>(Ljava/lang/String;FIZZ)V

    add-int v3, v16, v19

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int v0, v0, v16

    mul-int/lit8 v19, v19, 0x2

    sub-int v0, v0, v19

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/4 v7, 0x1

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object v1, v8

    move/from16 v2, v18

    move/from16 v4, v17

    move v8, v9

    invoke-virtual/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGrowthRate_Random;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .locals 8

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGrowthRate_Random;->getPosX()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGrowthRate_Random;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGrowthRate_Random;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGrowthRate_Random;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGrowthRate_Random;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGrowthRate_Random;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    invoke-static {p1, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGrowthRate_Random;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGrowthRate_Random;->getPosY()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGrowthRate_Random;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGrowthRate_Random;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v5, v0, v1

    move-object v1, p1

    move v6, p2

    move v7, p3

    invoke-static/range {v1 .. v7}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawEditorMenuBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIII)V

    invoke-super/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    return-void
.end method
