.class public Laoc/kingdoms/lukasz/menusMapEditor/EditorSelectProvinces;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "EditorSelectProvinces.java"


# static fields
.field public static selectedProvinces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorSelectProvinces;->selectedProvinces:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 26

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorSelectProvinces$1;

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, -0x1

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sub-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v13, v1, v2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v14, v1, 0x2

    const/4 v15, 0x1

    move-object v7, v0

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v15}, Laoc/kingdoms/lukasz/menusMapEditor/EditorSelectProvinces$1;-><init>(Laoc/kingdoms/lukasz/menusMapEditor/EditorSelectProvinces;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorSelectProvinces$2;

    const-string v18, ""

    const/16 v19, 0x1

    const/16 v20, -0x1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v21, v1, v2

    sget v22, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v23, v1, 0x2

    const/16 v24, 0x1

    const/16 v25, 0x0

    move-object/from16 v16, v0

    move-object/from16 v17, p0

    invoke-direct/range {v16 .. v25}, Laoc/kingdoms/lukasz/menusMapEditor/EditorSelectProvinces$2;-><init>(Laoc/kingdoms/lukasz/menusMapEditor/EditorSelectProvinces;Ljava/lang/String;IIIIIZZ)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorSelectProvinces$3;

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v2, v2, 0x2

    add-int v12, v1, v2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sub-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v13, v1, v2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v14, v1, 0x2

    move-object v7, v0

    invoke-direct/range {v7 .. v15}, Laoc/kingdoms/lukasz/menusMapEditor/EditorSelectProvinces$3;-><init>(Laoc/kingdoms/lukasz/menusMapEditor/EditorSelectProvinces;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorSelectProvinces$4;

    const-string v18, ""

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v2, v2, 0x3

    sub-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v21, v1, v2

    sget v22, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v23, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sget-boolean v24, Laoc/kingdoms/lukasz/jakowski/CFG;->selectMode:Z

    move-object/from16 v16, v0

    invoke-direct/range {v16 .. v25}, Laoc/kingdoms/lukasz/menusMapEditor/EditorSelectProvinces$4;-><init>(Laoc/kingdoms/lukasz/menusMapEditor/EditorSelectProvinces;Ljava/lang/String;IIIIIZZ)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorSelectProvinces$5;

    const/4 v9, 0x0

    sget-object v9, Laoc/kingdoms/lukasz/map/advisors/VjN/hQfu;->PGWNCodCbpHVLKd:Ljava/lang/String;

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v2, v2, 0x4

    sub-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x3

    sub-int v12, v1, v2

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sget-boolean v15, Laoc/kingdoms/lukasz/menu/MenuManager;->mapEditorDrawProvinces:Z

    move-object v7, v0

    invoke-direct/range {v7 .. v15}, Laoc/kingdoms/lukasz/menusMapEditor/EditorSelectProvinces$5;-><init>(Laoc/kingdoms/lukasz/menusMapEditor/EditorSelectProvinces;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/menusMapEditor/EditorSelectProvinces;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;Z)V

    return-void
.end method

.method public static final addSelectedProvince(I)V
    .locals 2

    sget-object v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorSelectProvinces;->selectedProvinces:Ljava/util/List;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorSelectProvinces;->selectedProvinces:Ljava/util/List;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static final removeSelectedProvince(I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Laoc/kingdoms/lukasz/menusMapEditor/EditorSelectProvinces;->selectedProvinces:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    sget-object v1, Laoc/kingdoms/lukasz/menusMapEditor/EditorSelectProvinces;->selectedProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p0, :cond_0

    sget-object v1, Laoc/kingdoms/lukasz/menusMapEditor/EditorSelectProvinces;->selectedProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

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

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v0, v0, 0x4

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x3

    add-int v4, v0, v2

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int v5, v0, v2

    move-object v0, p1

    move v2, p2

    invoke-static/range {v0 .. v5}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox_EDGE_TOP_LR(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIII)V

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

    const/4 v9, 0x1

    move-object v2, p1

    move v5, p3

    invoke-static/range {v2 .. v9}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox_EDGE_LorR(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIZZ)V

    invoke-virtual {p0, p1, p2, p3}, Laoc/kingdoms/lukasz/menusMapEditor/EditorSelectProvinces;->drawEditorText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    invoke-super/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    return-void
.end method

.method public final drawEditorText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .locals 0

    return-void
.end method
