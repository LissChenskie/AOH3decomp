.class Laoc/kingdoms/lukasz/menusInGame/Upgrade/InGame_UpgradeMilitaryAcademyForGenerals$3;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonGame;
.source "InGame_UpgradeMilitaryAcademyForGenerals.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/Upgrade/InGame_UpgradeMilitaryAcademyForGenerals;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/Upgrade/InGame_UpgradeMilitaryAcademyForGenerals;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/Upgrade/InGame_UpgradeMilitaryAcademyForGenerals;Ljava/lang/String;IIIIIZ)V
    .locals 9

    move-object v8, p0

    move-object v0, p1

    iput-object v0, v8, Laoc/kingdoms/lukasz/menusInGame/Upgrade/InGame_UpgradeMilitaryAcademyForGenerals$3;->this$0:Laoc/kingdoms/lukasz/menusInGame/Upgrade/InGame_UpgradeMilitaryAcademyForGenerals;

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
    .locals 2

    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/InGame_Generals;->upgradeMilitaryAcademyForGenerals()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMilitaryAcademyForGeneralsLevel()I

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getMilitaryAcademyForGenerals_MaxLvl(I)I

    move-result v1

    if-lt v0, v1, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_PopUp(Z)V

    goto :goto_0

    :cond_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_UpgradeMilitaryAcademyForGenerals()V

    :goto_0
    return-void
.end method

.method public buildElementHover()V
    .locals 1

    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/InGame_Generals;->getHoverMilitaryAcademyForGenerals()Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    move-result-object v0

    iput-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/Upgrade/InGame_UpgradeMilitaryAcademyForGenerals$3;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    return-void
.end method
