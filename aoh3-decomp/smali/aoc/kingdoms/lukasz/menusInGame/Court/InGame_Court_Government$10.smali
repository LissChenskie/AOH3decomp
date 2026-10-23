.class Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Government$10;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRect_Active;
.source "InGame_Court_Government.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Government;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field id:I

.field lastValue:F

.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Government;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Government;Ljava/lang/String;IIIII)V
    .locals 7

    iput-object p1, p0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Government$10;->this$0:Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Government;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRect_Active;-><init>(Ljava/lang/String;IIIII)V

    const/4 p1, 0x0

    iput p1, p0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Government$10;->lastValue:F

    return-void
.end method


# virtual methods
.method public actionElement()V
    .locals 2

    iget v0, p0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Government$10;->id:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo;->actionUnrest(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Government_SavePos()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_PopUp()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Laoc/kingdoms/lukasz/menu/MenuManager;->IN_GAME_POP_UP_MENU_ID:I

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_PopUp(Z)V

    :cond_0
    return-void
.end method

.method public actionElementPPM()V
    .locals 2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    iget v1, p0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Government$10;->id:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->centerToProvinceID(I)V

    return-void
.end method

.method public buildElementHover()V
    .locals 2

    iget v0, p0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Government$10;->id:I

    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo;->getHoverUnrest(IZZ)Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    move-result-object v0

    iput-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Government$10;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    return-void
.end method

.method protected getColor(Z)Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Government$10;->getIsHovered()Z

    move-result v0

    invoke-static {p1, v0}, Laoc/kingdoms/lukasz/menu/Colors;->getColorNegative(ZZ)Lcom/badlogic/gdx/graphics/Color;

    move-result-object p1

    return-object p1
.end method

.method public getTextToDraw()Ljava/lang/String;
    .locals 3

    iget v0, p0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Government$10;->id:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getRevulutionaryRisk()F

    move-result v0

    iget v1, p0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Government$10;->lastValue:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget v0, p0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Government$10;->id:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getRevulutionaryRisk()F

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Government$10;->lastValue:F

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Government$10;->lastValue:F

    const/16 v2, 0x64

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Government$10;->setText(Ljava/lang/String;)V

    :cond_0
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRect_Active;->getTextToDraw()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setCurrent(I)V
    .locals 0

    iput p1, p0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Government$10;->id:I

    return-void
.end method
