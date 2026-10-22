.class Laoc/kingdoms/lukasz/menusMapEditor/EditorMaps$3;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonMainDescripted;
.source "EditorMaps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusMapEditor/EditorMaps;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusMapEditor/EditorMaps;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusMapEditor/EditorMaps;Ljava/lang/String;Ljava/lang/String;IIIIIZZ)V
    .locals 11

    move-object v10, p0

    move-object v0, p1

    iput-object v0, v10, Laoc/kingdoms/lukasz/menusMapEditor/EditorMaps$3;->this$0:Laoc/kingdoms/lukasz/menusMapEditor/EditorMaps;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMainDescripted;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIIZZ)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .locals 2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->EDITOR_MAPS_EDIT:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setViewID(Laoc/kingdoms/lukasz/menu/View;)V

    return-void
.end method

.method protected drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMainDescripted;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    sget-object p4, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    iget-object p4, p4, Laoc/kingdoms/lukasz/map/map/Map;->lMaps:Ljava/util/List;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMaps$3;->getCurrent()I

    move-result v0

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Laoc/kingdoms/lukasz/map/map/Map_Data;

    iget-object p4, p4, Laoc/kingdoms/lukasz/map/map/Map_Data;->Icon:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMaps$3;->getPosX()I

    move-result v0

    add-int/2addr p2, v0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMaps$3;->getPosY()I

    move-result v0

    add-int/2addr p3, v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMaps$3;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p3, v0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/map/Map;->lMaps:Ljava/util/List;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMaps$3;->getCurrent()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/map/Map_Data;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/map/Map_Data;->Icon:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p3, v0

    invoke-virtual {p4, p1, p2, p3}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    return-void
.end method
