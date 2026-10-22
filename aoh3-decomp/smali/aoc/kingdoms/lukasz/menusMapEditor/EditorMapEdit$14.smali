.class Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEdit$14;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonMain;
.source "EditorMapEdit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEdit;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEdit;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEdit;Ljava/lang/String;IIIIIZ)V
    .locals 9

    move-object v8, p0

    move-object v0, p1

    iput-object v0, v8, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEdit$14;->this$0:Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEdit;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMain;-><init>(Ljava/lang/String;IIIIIZ)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .locals 3

    const/4 v0, 0x0

    sput-boolean v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawArmyInProvince:Z

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawDetails;->updateDrawProvinceDetails_OptimizationRegions()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v2, Laoc/kingdoms/lukasz/menu/View;->EDITOR_MAPS_EDIT_OPTIMIZATION_REGIONS:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->setViewID(Laoc/kingdoms/lukasz/menu/View;)V

    sget-object v1, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions;->lColors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :goto_0
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->regions:Laoc/kingdoms/lukasz/jakowski/RegionManager;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/RegionManager;->iRegionsSize:I

    if-ge v0, v1, :cond_0

    sget-object v1, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions;->lColors:Ljava/util/List;

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->getRandomColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public updateLanguage()V
    .locals 2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "OptimizationRegionsEditor"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEdit$14;->setText(Ljava/lang/String;)V

    return-void
.end method
