.class public Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "EditorMapOptimizationRegions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions$UndoOptimizationRegions;
    }
.end annotation


# static fields
.field public static activeRegion:I

.field public static lColors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/badlogic/gdx/graphics/Color;",
            ">;"
        }
    .end annotation
.end field

.field public static lUndo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions$UndoOptimizationRegions;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions;->lUndo:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions;->lColors:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 26

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions$1;

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

    invoke-direct/range {v7 .. v15}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions$1;-><init>(Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions$2;

    const-string v18, "SET TO REGION ID: "

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int v19, v1, v2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sub-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v20, v1, v2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x4

    sub-int v21, v1, v2

    sget v22, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    const/16 v23, 0x0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->regions:Laoc/kingdoms/lukasz/jakowski/RegionManager;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/RegionManager;->iRegionsSize:I

    const/16 v25, 0x0

    move-object/from16 v16, v0

    move-object/from16 v17, p0

    move/from16 v24, v1

    invoke-direct/range {v16 .. v25}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions$2;-><init>(Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions;Ljava/lang/String;IIIIIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions$3;

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

    invoke-direct/range {v7 .. v15}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions$3;-><init>(Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions$4;

    const-string v18, ""

    const/16 v19, 0x1

    const/16 v20, -0x1

    sget v21, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v22, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v23, v1, 0x2

    const/16 v24, 0x1

    move-object/from16 v16, v0

    invoke-direct/range {v16 .. v24}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions$4;-><init>(Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions$5;

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

    invoke-direct/range {v7 .. v16}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions$5;-><init>(Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions;Ljava/lang/String;IIIIIZZ)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions$6;

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

    invoke-direct/range {v17 .. v25}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions$6;-><init>(Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions$7;

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

    invoke-direct/range {v7 .. v15}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions$7;-><init>(Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;Z)V

    return-void
.end method

.method static synthetic access$000(Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions;)V
    .locals 0

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions;->centerToActiveRegionID()V

    return-void
.end method

.method public static actionUpdateData(Z)V
    .locals 4

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    if-ltz v0, :cond_5

    if-eqz p0, :cond_0

    sget p0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions;->addUndo(I)V

    :cond_0
    const/4 p0, 0x0

    move v0, p0

    :goto_0
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->regions:Laoc/kingdoms/lukasz/jakowski/RegionManager;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/RegionManager;->lRegions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    move v1, p0

    :goto_1
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->regions:Laoc/kingdoms/lukasz/jakowski/RegionManager;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/RegionManager;->lRegions:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Region;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/jakowski/Region;->getProvincesSize()I

    move-result v2

    if-ge v1, v2, :cond_2

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->regions:Laoc/kingdoms/lukasz/jakowski/RegionManager;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/RegionManager;->lRegions:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Region;

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/jakowski/Region;->getProvince(I)I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    if-ne v2, v3, :cond_1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->regions:Laoc/kingdoms/lukasz/jakowski/RegionManager;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/RegionManager;->lRegions:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Region;

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/jakowski/Region;->removeProvince(I)V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->regions:Laoc/kingdoms/lukasz/jakowski/RegionManager;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/RegionManager;->lRegions:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Region;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/jakowski/Region;->buildRegionBounds()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    sget p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions;->activeRegion:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->regions:Laoc/kingdoms/lukasz/jakowski/RegionManager;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/RegionManager;->lRegions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p0, v0, :cond_4

    sget-object p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions;->lColors:Ljava/util/List;

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->getRandomColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->regions:Laoc/kingdoms/lukasz/jakowski/RegionManager;

    iget-object p0, p0, Laoc/kingdoms/lukasz/jakowski/RegionManager;->lRegions:Ljava/util/List;

    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Region;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/Region;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->regions:Laoc/kingdoms/lukasz/jakowski/RegionManager;

    iget-object p0, p0, Laoc/kingdoms/lukasz/jakowski/RegionManager;->lRegions:Ljava/util/List;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->regions:Laoc/kingdoms/lukasz/jakowski/RegionManager;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/RegionManager;->lRegions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/jakowski/Region;

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/Region;->addProvince(I)V

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->regions:Laoc/kingdoms/lukasz/jakowski/RegionManager;

    iget-object p0, p0, Laoc/kingdoms/lukasz/jakowski/RegionManager;->lRegions:Ljava/util/List;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->regions:Laoc/kingdoms/lukasz/jakowski/RegionManager;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/RegionManager;->lRegions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/jakowski/Region;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/Region;->buildRegionBounds()V

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->regions:Laoc/kingdoms/lukasz/jakowski/RegionManager;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/RegionManager;->updateRegionsSize()V

    goto :goto_2

    :cond_4
    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->regions:Laoc/kingdoms/lukasz/jakowski/RegionManager;

    iget-object p0, p0, Laoc/kingdoms/lukasz/jakowski/RegionManager;->lRegions:Ljava/util/List;

    sget v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions;->activeRegion:I

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/jakowski/Region;

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/Region;->addProvince(I)V

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->regions:Laoc/kingdoms/lukasz/jakowski/RegionManager;

    iget-object p0, p0, Laoc/kingdoms/lukasz/jakowski/RegionManager;->lRegions:Ljava/util/List;

    sget v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions;->activeRegion:I

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/jakowski/Region;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/Region;->buildRegionBounds()V

    :goto_2
    sget p0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawDetails;->updateDrawProvinceDetails_OptimizationRegions(I)V

    :cond_5
    return-void
.end method

.method public static final addUndo(I)V
    .locals 3

    if-gez p0, :cond_0

    return-void

    :cond_0
    sget-object v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions;->lUndo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    sget-object v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions;->lUndo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions$UndoOptimizationRegions;

    iget v0, v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions$UndoOptimizationRegions;->iProvinceID:I

    if-eq v0, p0, :cond_3

    sget v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions;->activeRegion:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getRegionID(I)I

    move-result v1

    if-eq v0, v1, :cond_3

    sget-object v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions;->lUndo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x32

    if-le v0, v1, :cond_1

    sget-object v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions;->lUndo:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    sget-object v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions;->lUndo:Ljava/util/List;

    new-instance v1, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions$UndoOptimizationRegions;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getRegionID(I)I

    move-result v2

    invoke-direct {v1, p0, v2}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions$UndoOptimizationRegions;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    sget-object v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions;->lUndo:Ljava/util/List;

    new-instance v1, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions$UndoOptimizationRegions;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getRegionID(I)I

    move-result v2

    invoke-direct {v1, p0, v2}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions$UndoOptimizationRegions;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    sget v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions;->activeRegion:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getRegionID(I)I

    move-result v1

    if-eq v0, v1, :cond_3

    sget-object v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions;->lUndo:Ljava/util/List;

    new-instance v1, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions$UndoOptimizationRegions;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getRegionID(I)I

    move-result v2

    invoke-direct {v1, p0, v2}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions$UndoOptimizationRegions;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method private final centerToActiveRegionID()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v1

    if-ge v0, v1, :cond_1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->regions:Laoc/kingdoms/lukasz/jakowski/RegionManager;

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/jakowski/RegionManager;->getRegionID(I)I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions;->activeRegion:I

    if-ne v1, v2, :cond_0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->centerToProvinceID(I)V

    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const-string v1, "0 PROVINCES"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToast(Ljava/lang/String;)V

    return-void
.end method

.method public static popUndo()V
    .locals 3

    sget-object v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions;->lUndo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameActiveProvince:Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;

    sget-object v1, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions;->lUndo:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions$UndoOptimizationRegions;

    iget v1, v1, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions$UndoOptimizationRegions;->iProvinceID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;->setActiveProvinceID(I)V

    sget v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions;->activeRegion:I

    sget-object v1, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions;->lUndo:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions$UndoOptimizationRegions;

    iget v1, v1, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions$UndoOptimizationRegions;->iRegionID:I

    sput v1, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions;->activeRegion:I

    const/4 v1, 0x0

    invoke-static {v1}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions;->actionUpdateData(Z)V

    sput v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions;->activeRegion:I

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
    sget-object v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions;->lUndo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method protected static final saveRegions()V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    sget-object v1, Lcom/google/android/gms/internal/tasks/Vhe/SwmJtrccN;->uunvinZ:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "data/ProvinceOptimizationRegions.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->getSaveType(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->regions:Laoc/kingdoms/lukasz/jakowski/RegionManager;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/RegionManager;->lRegions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->regions:Laoc/kingdoms/lukasz/jakowski/RegionManager;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/RegionManager;->lRegions:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/Region;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/jakowski/Region;->getProvincesSize()I

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->regions:Laoc/kingdoms/lukasz/jakowski/RegionManager;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/RegionManager;->lRegions:Ljava/util/List;

    add-int/lit8 v4, v2, -0x1

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->regions:Laoc/kingdoms/lukasz/jakowski/RegionManager;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->regions:Laoc/kingdoms/lukasz/jakowski/RegionManager;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/RegionManager;->lRegions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iput v3, v2, Laoc/kingdoms/lukasz/jakowski/RegionManager;->iRegionsSize:I

    move v2, v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v2, ""

    move v3, v1

    :goto_1
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->regions:Laoc/kingdoms/lukasz/jakowski/RegionManager;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/RegionManager;->lRegions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    move v4, v1

    :goto_2
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->regions:Laoc/kingdoms/lukasz/jakowski/RegionManager;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/RegionManager;->lRegions:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/Region;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/jakowski/Region;->getProvincesSize()I

    move-result v5

    if-ge v4, v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->regions:Laoc/kingdoms/lukasz/jakowski/RegionManager;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/RegionManager;->lRegions:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/Region;

    invoke-virtual {v5, v4}, Laoc/kingdoms/lukasz/jakowski/Region;->getProvince(I)I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ";"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->regions:Laoc/kingdoms/lukasz/jakowski/RegionManager;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/RegionManager;->lRegions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq v3, v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V

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

    mul-int/lit8 v1, v1, 0x3

    sub-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x3

    sub-int/2addr v0, v1

    add-int v4, v0, p2

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v0, v0, 0x3

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x3

    add-int v6, v0, v1

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int v7, v0, v1

    const/4 v8, 0x0

    invoke-static/range {v2 .. v9}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox_EDGE_LorR(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIZZ)V

    invoke-virtual {p0, p1, p2, p3}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions;->drawEditorText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    invoke-super/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    return-void
.end method

.method public final drawEditorText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SET TO REGION ID: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions;->activeRegion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    if-ltz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\n\nACTIVE PROVINCE REGION ID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getRegionID(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v2, Laoc/kingdoms/lukasz/menu/FQy/TGqtTWl;->tHHhdIKMHg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->regions:Laoc/kingdoms/lukasz/jakowski/RegionManager;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/RegionManager;->lRegions:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getRegionID(I)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Region;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/jakowski/Region;->getProvincesSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nWIDTH: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->regions:Laoc/kingdoms/lukasz/jakowski/RegionManager;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/RegionManager;->lRegions:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getRegionID(I)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Region;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/jakowski/Region;->getMaxX()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->regions:Laoc/kingdoms/lukasz/jakowski/RegionManager;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/RegionManager;->lRegions:Ljava/util/List;

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getRegionID(I)I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/Region;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/jakowski/Region;->getMinX()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->regions:Laoc/kingdoms/lukasz/jakowski/RegionManager;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/RegionManager;->lRegions:Ljava/util/List;

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getRegionID(I)I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/Region;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/jakowski/Region;->getMaxX()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->regions:Laoc/kingdoms/lukasz/jakowski/RegionManager;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/RegionManager;->lRegions:Ljava/util/List;

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getRegionID(I)I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/Region;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/jakowski/Region;->getMinX()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v3, v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v3, v5

    float-to-int v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "%]\nHEIGHT:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->regions:Laoc/kingdoms/lukasz/jakowski/RegionManager;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/RegionManager;->lRegions:Ljava/util/List;

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getRegionID(I)I

    move-result v5

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/Region;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/jakowski/Region;->getMaxY()I

    move-result v3

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->regions:Laoc/kingdoms/lukasz/jakowski/RegionManager;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/RegionManager;->lRegions:Ljava/util/List;

    sget v6, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getRegionID(I)I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/Region;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/jakowski/Region;->getMinY()I

    move-result v5

    sub-int/2addr v3, v5

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->regions:Laoc/kingdoms/lukasz/jakowski/RegionManager;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/RegionManager;->lRegions:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getRegionID(I)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Region;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/jakowski/Region;->getMaxY()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->regions:Laoc/kingdoms/lukasz/jakowski/RegionManager;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/RegionManager;->lRegions:Ljava/util/List;

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getRegionID(I)I

    move-result v5

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/Region;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/jakowski/Region;->getMinY()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, v4

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapBG;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1, v2, v0}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3f19999a    # 0.6f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v3, v3, v3, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v1, p2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x6

    add-int/2addr v2, p3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    add-int/2addr v2, v3

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int v3, v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->height:F

    float-to-int v4, v4

    invoke-static {p1, v1, v2, v3, v4}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr p2, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x6

    add-int/2addr p3, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    add-int/2addr p3, v1

    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_TITLE:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {p1, v0, p2, p3, v1}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method
