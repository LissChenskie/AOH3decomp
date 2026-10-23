.class Laoc/kingdoms/lukasz/menusEditor/CreateCiv_Flag$3;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonGame;
.source "CreateCiv_Flag.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusEditor/CreateCiv_Flag;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusEditor/CreateCiv_Flag;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusEditor/CreateCiv_Flag;Ljava/lang/String;IIIIIIZ)V
    .locals 10

    move-object v9, p0

    move-object v0, p1

    iput-object v0, v9, Laoc/kingdoms/lukasz/menusEditor/CreateCiv_Flag$3;->this$0:Laoc/kingdoms/lukasz/menusEditor/CreateCiv_Flag;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame;-><init>(Ljava/lang/String;IIIIIIZ)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .locals 5

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getColorPicker()Laoc/kingdoms/lukasz/menu/ColorPicker;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/ColorPicker;->getVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->flagManager:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->activeColorID:I

    if-nez v0, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getColorPicker()Laoc/kingdoms/lukasz/menu/ColorPicker;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/ColorPicker;->hideColorPicker()V

    goto :goto_0

    :cond_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->flagManager:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;

    const/4 v1, 0x0

    iput v1, v0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->activeColorID:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getColorPicker()Laoc/kingdoms/lukasz/menu/ColorPicker;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->flagManager:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lDivisionColors:Ljava/util/List;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->flagManager:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->activeColorID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->flagManager:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lDivisionColors:Ljava/util/List;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->flagManager:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->activeColorID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->flagManager:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lDivisionColors:Ljava/util/List;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->flagManager:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->activeColorID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-virtual {v0, v1, v2, v3}, Laoc/kingdoms/lukasz/menu/ColorPicker;->setActiveRGBColor(FFF)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getColorPicker()Laoc/kingdoms/lukasz/menu/ColorPicker;

    move-result-object v0

    const/4 v1, 0x1

    sget-object v2, Laoc/kingdoms/lukasz/menu/ColorPicker$PickerAction;->CREATE_CIV_DIVISION:Laoc/kingdoms/lukasz/menu/ColorPicker$PickerAction;

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/menu/ColorPicker;->setVisible(ZLaoc/kingdoms/lukasz/menu/ColorPicker$PickerAction;)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getColorPicker()Laoc/kingdoms/lukasz/menu/ColorPicker;

    move-result-object v0

    iget-object v1, p0, Laoc/kingdoms/lukasz/menusEditor/CreateCiv_Flag$3;->this$0:Laoc/kingdoms/lukasz/menusEditor/CreateCiv_Flag;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menusEditor/CreateCiv_Flag;->getPosX()I

    move-result v1

    iget-object v2, p0, Laoc/kingdoms/lukasz/menusEditor/CreateCiv_Flag$3;->this$0:Laoc/kingdoms/lukasz/menusEditor/CreateCiv_Flag;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menusEditor/CreateCiv_Flag;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/ColorPicker;->setPosX(I)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getColorPicker()Laoc/kingdoms/lukasz/menu/ColorPicker;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusEditor/CreateCiv_Flag$3;->getPosY()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/ColorPicker;->setPosY(I)V

    :goto_0
    return-void
.end method

.method public buildElementHover()V
    .locals 11

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    const-string v3, ""

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const/4 v5, 0x0

    sget-object v5, Laoc/kingdoms/lukasz/menu/FQy/TGqtTWl;->okYoPpdSCbqY:Ljava/lang/String;

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->pickerIcon:I

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    sget-object v8, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

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

    iput-object v1, p0, Laoc/kingdoms/lukasz/menusEditor/CreateCiv_Flag$3;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    return-void
.end method

.method protected drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 2

    sget-object p4, Laoc/kingdoms/lukasz/jakowski/Game;->flagManager:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusEditor/CreateCiv_Flag$3;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusEditor/CreateCiv_Flag$3;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x22

    add-int/2addr v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusEditor/CreateCiv_Flag$3;->getPosY()I

    move-result p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusEditor/CreateCiv_Flag$3;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p2, v1

    add-int/lit8 p2, p2, -0x16

    add-int/2addr p2, p3

    invoke-virtual {p4, p1, v0, p2}, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->drawDivision_FlagFrameSize(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    return-void
.end method
