.class public Laoc/kingdoms/lukasz/menu_element/MenuElement;
.super Ljava/lang/Object;
.source "MenuElement.java"


# instance fields
.field protected fontID:I

.field protected iCurrent:I

.field private iHeight:I

.field private iPosX:I

.field private iPosY:I

.field private iWidth:I

.field private isClickable:Z

.field private isHovered:Z

.field private isInView:Z

.field private isVisible:Z

.field public menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

.field protected typeOfElement:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/MenuElement;->isClickable:Z

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/MenuElement;->isVisible:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/MenuElement;->isInView:Z

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/MenuElement;->isHovered:Z

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/MenuElement;->iCurrent:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/MenuElement;->fontID:I

    return-void
.end method


# virtual methods
.method public actionElement()V
    .locals 0

    return-void
.end method

.method public actionElementPPM()V
    .locals 0

    return-void
.end method

.method public actionElement_ExtraAction()V
    .locals 0

    return-void
.end method

.method public buildElementHover()V
    .locals 0

    return-void
.end method

.method public canBeHovered()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public dispose()V
    .locals 0

    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .locals 0

    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .locals 0

    return-void
.end method

.method public drawMenuElementHover(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 1

    iget-object p2, p0, Laoc/kingdoms/lukasz/menu_element/MenuElement;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    if-eqz p2, :cond_1

    sget-boolean p2, Laoc/kingdoms/lukasz/jakowski/CFG;->isAndroid:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Laoc/kingdoms/lukasz/menu_element/MenuElement;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Touch;->getMousePosX()I

    move-result p3

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Touch;->getMousePosY()I

    move-result p4

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->getHover_ExtraPosY()I

    move-result v0

    sub-int/2addr p4, v0

    invoke-virtual {p2, p1, p3, p4}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->drawAlwaysOver_Mobile(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Laoc/kingdoms/lukasz/menu_element/MenuElement;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Touch;->getMousePosX()I

    move-result p3

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->getHover_ExtraPosX()I

    move-result p4

    add-int/2addr p3, p4

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Touch;->getMousePosY()I

    move-result p4

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->getHover_ExtraPosY()I

    move-result v0

    add-int/2addr p4, v0

    invoke-virtual {p2, p1, p3, p4}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getCheckboxState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getClickable()Z
    .locals 1

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/MenuElement;->isClickable:Z

    return v0
.end method

.method public getCurrent()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/MenuElement;->iCurrent:I

    return v0
.end method

.method public getDescription()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/MenuElement;->iHeight:I

    return v0
.end method

.method public getInStatisticsMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getIsHovered()Z
    .locals 1

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/MenuElement;->isHovered:Z

    return v0
.end method

.method public final getIsInView()Z
    .locals 1

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/MenuElement;->isInView:Z

    return v0
.end method

.method public getMenuElement_Hover_IsNull()Z
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/MenuElement;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getMoveable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPosX()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/MenuElement;->iPosX:I

    return v0
.end method

.method public getPosY()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/MenuElement;->iPosY:I

    return v0
.end method

.method public getSFX()I
    .locals 1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getClickMain()I

    move-result v0

    return v0
.end method

.method public getSFX_Hovered()I
    .locals 1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getClickMain()I

    move-result v0

    return v0
.end method

.method public getScrollPosX()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getScrollPosY()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getScrollable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    sget-object v0, Laoc/kingdoms/lukasz/menusScenarioEditor/YGiX/gpVDKipRURuzw;->qJlCdKoFA:Ljava/lang/String;

    return-object v0
.end method

.method public getTextHeight()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getTextPos()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getTextToDraw()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getTextWidth()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getTypeOfElement()Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/MenuElement;->typeOfElement:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    return-object v0
.end method

.method public getValue1()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getValue2()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getVisible()Z
    .locals 1

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/MenuElement;->isVisible:Z

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/MenuElement;->iWidth:I

    return v0
.end method

.method public playSFX_Hovered()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public resetElementHover()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/MenuElement;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    return-void
.end method

.method public scrollByWheel(I)V
    .locals 0

    return-void
.end method

.method public scrollTheMenu()V
    .locals 0

    return-void
.end method

.method public setCheckboxState(Z)V
    .locals 0

    return-void
.end method

.method public final setClickable(Z)V
    .locals 0

    iput-boolean p1, p0, Laoc/kingdoms/lukasz/menu_element/MenuElement;->isClickable:Z

    return-void
.end method

.method public setCurrent(I)V
    .locals 0

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/MenuElement;->iCurrent:I

    return-void
.end method

.method public setDescription(Z)V
    .locals 0

    return-void
.end method

.method public final setHeight(I)V
    .locals 0

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/MenuElement;->iHeight:I

    return-void
.end method

.method public setInStatisticsMode(Z)V
    .locals 0

    return-void
.end method

.method public setIsHovered(Z)V
    .locals 0

    iput-boolean p1, p0, Laoc/kingdoms/lukasz/menu_element/MenuElement;->isHovered:Z

    return-void
.end method

.method public final setIsInView(Z)V
    .locals 0

    iput-boolean p1, p0, Laoc/kingdoms/lukasz/menu_element/MenuElement;->isInView:Z

    return-void
.end method

.method public setMax(I)V
    .locals 0

    return-void
.end method

.method public setMin(I)V
    .locals 0

    return-void
.end method

.method public final setPosX(I)V
    .locals 0

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/MenuElement;->iPosX:I

    return-void
.end method

.method public final setPosY(I)V
    .locals 0

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/MenuElement;->iPosY:I

    return-void
.end method

.method public setScrollPosX(I)V
    .locals 0

    return-void
.end method

.method public setScrollPosY(I)V
    .locals 0

    return-void
.end method

.method public setScrollable(Z)V
    .locals 0

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setText2(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setTypeOfElement(Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;)V
    .locals 0

    return-void
.end method

.method public setVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Laoc/kingdoms/lukasz/menu_element/MenuElement;->isVisible:Z

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/MenuElement;->iWidth:I

    return-void
.end method

.method public stopScrolling()V
    .locals 0

    return-void
.end method

.method public updateHover(IIII)V
    .locals 0

    return-void
.end method

.method public updateHovered()V
    .locals 0

    return-void
.end method

.method public updateLanguage()V
    .locals 0

    return-void
.end method

.method public updateSlider(I)V
    .locals 0

    return-void
.end method
