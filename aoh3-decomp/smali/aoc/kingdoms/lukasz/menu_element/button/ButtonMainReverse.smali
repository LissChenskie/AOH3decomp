.class public Laoc/kingdoms/lukasz/menu_element/button/ButtonMainReverse;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonMain;
.source "ButtonMainReverse.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIIIZ)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMain;-><init>(Ljava/lang/String;IIIIIZ)V

    return-void
.end method


# virtual methods
.method public getButtonBG()I
    .locals 1

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->buttonMenuH:I

    return v0
.end method

.method public getButtonBG_Active()I
    .locals 1

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->buttonMenu:I

    return v0
.end method

.method protected getColor(Z)Lcom/badlogic/gdx/graphics/Color;
    .locals 0

    if-eqz p1, :cond_0

    sget-object p1, Laoc/kingdoms/lukasz/menu/Colors;->BUTTON_TEXT:Lcom/badlogic/gdx/graphics/Color;

    return-object p1

    :cond_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMainReverse;->getIsHovered()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Laoc/kingdoms/lukasz/menu/Colors;->BUTTON_TEXT_HOVERED:Lcom/badlogic/gdx/graphics/Color;

    return-object p1

    :cond_1
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMainReverse;->getClickable()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Laoc/kingdoms/lukasz/menu/Colors;->BUTTON_TEXT_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_0

    :cond_2
    sget-object p1, Laoc/kingdoms/lukasz/menu/Colors;->BUTTON_TEXT_DISABLED:Lcom/badlogic/gdx/graphics/Color;

    :goto_0
    return-object p1
.end method
