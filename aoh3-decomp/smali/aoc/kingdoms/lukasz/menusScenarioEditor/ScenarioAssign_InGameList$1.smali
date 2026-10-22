.class Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioAssign_InGameList$1;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonMain;
.source "ScenarioAssign_InGameList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioAssign_InGameList;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioAssign_InGameList;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioAssign_InGameList;Ljava/lang/String;IIIIIZZ)V
    .locals 10

    move-object v9, p0

    move-object v0, p1

    iput-object v0, v9, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioAssign_InGameList$1;->this$0:Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioAssign_InGameList;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMain;-><init>(Ljava/lang/String;IIIIIZZ)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .locals 1

    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/CFG;->brushTool:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Laoc/kingdoms/lukasz/jakowski/CFG;->brushTool:Z

    return-void
.end method

.method public buildElementHover()V
    .locals 11

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    const-string v3, "SHIFT"

    const-string v4, ""

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->council:I

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v8, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    sget-object v9, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    invoke-direct {v1, v0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioAssign_InGameList$1;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioAssign_InGameList$1;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    :goto_0
    return-void
.end method

.method public getCheckboxState()Z
    .locals 1

    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/CFG;->brushTool:Z

    return v0
.end method

.method public updateLanguage()V
    .locals 2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "Brush"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioAssign_InGameList$1;->setText(Ljava/lang/String;)V

    return-void
.end method
