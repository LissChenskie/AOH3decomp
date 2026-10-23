.class Laoc/kingdoms/lukasz/menusEditor/CreateCiv$1;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonMain;
.source "CreateCiv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusEditor/CreateCiv;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusEditor/CreateCiv;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusEditor/CreateCiv;Ljava/lang/String;IIIIIZ)V
    .locals 9

    move-object v8, p0

    move-object v0, p1

    iput-object v0, v8, Laoc/kingdoms/lukasz/menusEditor/CreateCiv$1;->this$0:Laoc/kingdoms/lukasz/menusEditor/CreateCiv;

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

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->keyboard:Laoc/kingdoms/lukasz/jakowski/Keyboard;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->CREATE_CIV_EDIT:Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;

    sget-object v2, Laoc/kingdoms/lukasz/menusEditor/CreateCiv;->nCiv:Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;->Tag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/jakowski/Keyboard;->showKeyboard(Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;Ljava/lang/String;)V

    return-void
.end method

.method public buildElementHover()V
    .locals 11

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    const-string v3, "CIV_TAG: "

    sget-object v2, Laoc/kingdoms/lukasz/menusEditor/CreateCiv;->nCiv:Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;

    iget-object v4, v2, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;->Tag:Ljava/lang/String;

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->council:I

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

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Line;

    invoke-direct {v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Line;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    const-string v5, "Must be unique! No spaces and special characters!"

    invoke-direct {v2, v5, v3, v4}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    invoke-direct {v1, v0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Laoc/kingdoms/lukasz/menusEditor/CreateCiv$1;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    return-void
.end method

.method public getButtonBG()I
    .locals 2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->keyboard:Laoc/kingdoms/lukasz/jakowski/Keyboard;

    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardMode:Z

    if-eqz v0, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardActionType:Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->CREATE_CIV_EDIT:Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;

    if-ne v0, v1, :cond_0

    invoke-super {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMain;->getButtonBG_Active()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMain;->getButtonBG()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getButtonBG_Active()I
    .locals 2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->keyboard:Laoc/kingdoms/lukasz/jakowski/Keyboard;

    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardMode:Z

    if-eqz v0, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardActionType:Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->CREATE_CIV_EDIT:Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;

    if-ne v0, v1, :cond_0

    invoke-super {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMain;->getButtonBG()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMain;->getButtonBG_Active()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getTextToDraw()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Civilization TAG: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Laoc/kingdoms/lukasz/menusEditor/CreateCiv;->nCiv:Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;->Tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardActionType:Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->CREATE_CIV_EDIT:Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;

    if-ne v1, v2, :cond_0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Keyboard;->getKeyboardVerticalLine()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    sget-object v1, Lcom/badlogic/gdx/utils/compression/spWT/QefTqRjwAJmEDy;->Bul:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
