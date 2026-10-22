.class public Laoc/kingdoms/lukasz/menu_element/Empty;
.super Laoc/kingdoms/lukasz/menu_element/MenuElement;
.source "Empty.java"


# direct methods
.method public constructor <init>(IIII)V
    .locals 1

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;-><init>()V

    sget-object v0, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;->TRANSPARENT_BACKGROUND:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/Empty;->typeOfElement:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/menu_element/Empty;->setPosX(I)V

    invoke-virtual {p0, p2}, Laoc/kingdoms/lukasz/menu_element/Empty;->setPosY(I)V

    invoke-virtual {p0, p3}, Laoc/kingdoms/lukasz/menu_element/Empty;->setWidth(I)V

    invoke-virtual {p0, p4}, Laoc/kingdoms/lukasz/menu_element/Empty;->setHeight(I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/menu_element/Empty;->setClickable(Z)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/menu_element/Empty;->setVisible(Z)V

    return-void
.end method


# virtual methods
.method public playSFX_Hovered()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
