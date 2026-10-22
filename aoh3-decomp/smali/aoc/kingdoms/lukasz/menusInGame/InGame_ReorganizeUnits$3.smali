.class Laoc/kingdoms/lukasz/menusInGame/InGame_ReorganizeUnits$3;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonGame;
.source "InGame_ReorganizeUnits.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/InGame_ReorganizeUnits;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/InGame_ReorganizeUnits;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/InGame_ReorganizeUnits;Ljava/lang/String;IIIIIZ)V
    .locals 9

    move-object v8, p0

    move-object v0, p1

    iput-object v0, v8, Laoc/kingdoms/lukasz/menusInGame/InGame_ReorganizeUnits$3;->this$0:Laoc/kingdoms/lukasz/menusInGame/InGame_ReorganizeUnits;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame;-><init>(Ljava/lang/String;IIIIIZ)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .locals 5

    sget-object v0, Laoc/kingdoms/lukasz/menusInGame/InGame_ReorganizeUnits;->armyLeft:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v0, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/menusInGame/InGame_ReorganizeUnits;->armyLeft:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmyKeyID(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    sget-object v1, Laoc/kingdoms/lukasz/menusInGame/InGame_ReorganizeUnits;->armyLeft:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    if-lez v1, :cond_2

    sget-object v1, Laoc/kingdoms/lukasz/menusInGame/InGame_ReorganizeUnits;->armyRight:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    if-lez v1, :cond_2

    sget-object v1, Laoc/kingdoms/lukasz/menusInGame/InGame_ReorganizeUnits;->armyLeft:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/menusInGame/InGame_ReorganizeUnits;->armyLeft:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-virtual {v1, v0, v2}, Laoc/kingdoms/lukasz/map/province/Province;->updateRegiment(ILjava/util/List;)Z

    sget-object v0, Laoc/kingdoms/lukasz/menusInGame/InGame_ReorganizeUnits;->armyLeft:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v0, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    new-instance v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    sget-object v2, Laoc/kingdoms/lukasz/menusInGame/InGame_ReorganizeUnits;->armyLeft:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    sget-object v3, Laoc/kingdoms/lukasz/menusInGame/InGame_ReorganizeUnits;->armyLeft:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    sget-object v4, Laoc/kingdoms/lukasz/menusInGame/InGame_ReorganizeUnits;->armyRight:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-direct {v1, v2, v3, v4}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;-><init>(IILjava/util/List;)V

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->addArmy(Laoc/kingdoms/lukasz/map/army/ArmyDivision;)Ljava/lang/String;

    iget-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_ReorganizeUnits$3;->this$0:Laoc/kingdoms/lukasz/menusInGame/InGame_ReorganizeUnits;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menusInGame/InGame_ReorganizeUnits;->setVisible(Z)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_ProvinceArmy()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_ProvinceArmy()V

    :cond_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Armies()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, v1, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Armies(ZZ)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Armies(Z)V

    const-wide/16 v0, 0x0

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies;->lTime:J

    goto :goto_0

    :cond_1
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const-string v1, "ArmyNotFound"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToast_Error(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public getClickable()Z
    .locals 1

    invoke-super {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame;->getClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/menusInGame/InGame_ReorganizeUnits;->armyLeft:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v0, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    if-lez v0, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/menusInGame/InGame_ReorganizeUnits;->armyRight:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v0, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
