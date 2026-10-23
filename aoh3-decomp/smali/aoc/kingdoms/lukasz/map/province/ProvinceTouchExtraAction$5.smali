.class Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$5;
.super Ljava/lang/Object;
.source "ProvinceTouchExtraAction.java"

# interfaces
.implements Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$ExtraAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction;->updateActionUp_SetActiveProvinceID_ExtraAction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public extraAction(IIII)V
    .locals 0

    sget p1, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    if-ltz p1, :cond_3

    if-nez p4, :cond_1

    sget p1, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result p1

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget p2, p2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-eq p1, p2, :cond_0

    sget p1, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result p1

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget p2, p2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne p1, p2, :cond_2

    :cond_0
    sget p1, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    sput p1, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;->iProvinceID:I

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget p2, p2, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEFAULT:I

    invoke-virtual {p1, p2}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->setActiveViewID(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    if-ne p4, p1, :cond_2

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget p2, p2, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEFAULT:I

    invoke-virtual {p1, p2}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->setActiveViewID(I)V

    :cond_2
    :goto_0
    sget-object p1, Laoc/kingdoms/lukasz/map/province/ProvinceHover;->provinceHoverBuild:Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;

    invoke-interface {p1}, Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;->build()V

    :cond_3
    return-void
.end method
