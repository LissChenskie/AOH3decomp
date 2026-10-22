.class public Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEconomy;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "EditorMapEconomy.java"


# static fields
.field public static currentEconomy:F = 50.0f

.field public static lUndo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGrowthRate$UndoGrowthRate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEconomy;->lUndo:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 26

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEconomy$1;

    const-string v9, "-"

    const/4 v10, 0x1

    const/4 v11, -0x1

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sub-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v13, v1, v2

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    const/4 v15, 0x1

    move-object v7, v0

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v15}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEconomy$1;-><init>(Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEconomy;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEconomy$2;

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int v18, v1, v2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sub-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v19, v1, v2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x4

    sub-int v20, v1, v2

    sget v21, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    const/16 v22, 0x0

    const/16 v23, 0x64

    const/16 v24, 0x32

    move-object/from16 v16, v0

    move-object/from16 v17, p0

    invoke-direct/range {v16 .. v24}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEconomy$2;-><init>(Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEconomy;IIIIIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEconomy$3;

    const-string v9, "+"

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sub-int v12, v1, v2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sub-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v13, v1, v2

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    move-object v7, v0

    invoke-direct/range {v7 .. v15}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEconomy$3;-><init>(Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEconomy;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEconomy$4;

    const-string v18, ""

    const/16 v19, 0x1

    const/16 v20, -0x1

    sget v21, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v22, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v23, v1, 0x2

    const/16 v24, 0x1

    move-object/from16 v16, v0

    invoke-direct/range {v16 .. v24}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEconomy$4;-><init>(Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEconomy;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEconomy$5;

    const-string v9, ""

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v12, v1, v2

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v14, v1, 0x2

    const/16 v16, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v16}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEconomy$5;-><init>(Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEconomy;Ljava/lang/String;IIIIIZZ)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEconomy$6;

    const-string v19, ""

    const/16 v20, 0x1

    const/16 v21, -0x1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v2, v2, 0x3

    sub-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v22, v1, v2

    sget v23, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v24, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    const/16 v25, 0x1

    move-object/from16 v17, v0

    move-object/from16 v18, p0

    invoke-direct/range {v17 .. v25}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEconomy$6;-><init>(Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEconomy;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEconomy$7;

    const-string v9, ""

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v2, v2, 0x2

    add-int v12, v1, v2

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v14, v1, 0x2

    move-object v7, v0

    invoke-direct/range {v7 .. v15}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEconomy$7;-><init>(Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEconomy;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEconomy$8;

    const-string v18, ""

    const/16 v19, 0x1

    const/16 v20, -0x1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v2, v2, 0x4

    sub-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x3

    sub-int v21, v1, v2

    sget v22, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v23, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sget-boolean v24, Laoc/kingdoms/lukasz/menu/MenuManager;->mapEditorDrawProvinces:Z

    move-object/from16 v16, v0

    move-object/from16 v17, p0

    invoke-direct/range {v16 .. v24}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEconomy$8;-><init>(Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEconomy;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEconomy;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;Z)V

    return-void
.end method

.method public static actionUpdateData(Z)V
    .locals 3

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    if-ltz v0, :cond_2

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p0, :cond_0

    sget p0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEconomy;->addUndo(I)V

    :cond_0
    sget p0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p0

    sget v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEconomy;->currentEconomy:F

    sget v1, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEconomy_Random;->iRandom:I

    if-lez v1, :cond_1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget v2, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEconomy_Random;->iRandom:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->BaseDevelopment:F

    sget p0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawDetails;->updateDrawProvinceDetails_Economy(I)V

    :cond_2
    return-void
.end method

.method public static final addUndo(I)V
    .locals 3

    if-gez p0, :cond_0

    return-void

    :cond_0
    sget-object v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEconomy;->lUndo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    sget-object v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEconomy;->lUndo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGrowthRate$UndoGrowthRate;

    iget v0, v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGrowthRate$UndoGrowthRate;->iProvinceID:I

    if-eq v0, p0, :cond_3

    sget v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEconomy;->currentEconomy:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getGrowthRate()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    sget-object v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEconomy;->lUndo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x32

    if-le v0, v1, :cond_1

    sget-object v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEconomy;->lUndo:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    sget-object v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEconomy;->lUndo:Ljava/util/List;

    new-instance v1, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGrowthRate$UndoGrowthRate;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getGrowthRate()F

    move-result v2

    invoke-direct {v1, p0, v2}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGrowthRate$UndoGrowthRate;-><init>(IF)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    sget-object v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEconomy;->lUndo:Ljava/util/List;

    new-instance v1, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGrowthRate$UndoGrowthRate;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getGrowthRate()F

    move-result v2

    invoke-direct {v1, p0, v2}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGrowthRate$UndoGrowthRate;-><init>(IF)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    sget v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEconomy;->currentEconomy:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getGrowthRate()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    sget-object v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEconomy;->lUndo:Ljava/util/List;

    new-instance v1, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGrowthRate$UndoGrowthRate;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getGrowthRate()F

    move-result v2

    invoke-direct {v1, p0, v2}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGrowthRate$UndoGrowthRate;-><init>(IF)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public static popUndo()V
    .locals 3

    sget-object v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEconomy;->lUndo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameActiveProvince:Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;

    sget-object v1, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEconomy;->lUndo:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGrowthRate$UndoGrowthRate;

    iget v1, v1, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGrowthRate$UndoGrowthRate;->iProvinceID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;->setActiveProvinceID(I)V

    sget v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEconomy;->currentEconomy:F

    sget-object v1, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEconomy;->lUndo:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGrowthRate$UndoGrowthRate;

    iget v1, v1, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGrowthRate$UndoGrowthRate;->fGrowthRate:F

    sput v1, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEconomy;->currentEconomy:F

    const/4 v1, 0x0

    invoke-static {v1}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEconomy;->actionUpdateData(Z)V

    sput v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEconomy;->currentEconomy:F

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getDrawProvince()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->centerToProvinceID(I)V

    :cond_0
    sget-object v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEconomy;->lUndo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .locals 10

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxSimple:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    add-int/2addr v0, p3

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sub-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v3, v0, v2

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int v5, v0, v2

    move-object v0, p1

    move v2, p2

    invoke-static/range {v0 .. v5}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox_EDGE_TOP_LR(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIII)V

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxSimple:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v0, v0, 0x4

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x3

    add-int v6, v0, v1

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int v7, v0, v1

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object v2, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v2 .. v9}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox_EDGE_LorR(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIZZ)V

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxSimple:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v1, v1, 0x4

    sub-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x4

    sub-int/2addr v0, v1

    add-int v4, v0, p2

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v0, v0, 0x4

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x4

    add-int v6, v0, v1

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int v7, v0, v1

    const/4 v8, 0x0

    invoke-static/range {v2 .. v9}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox_EDGE_LorR(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIZZ)V

    invoke-super/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    return-void
.end method
