.class Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_AllianceList$8;
.super Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_ID_FlagCiv;
.source "InGame_AllianceList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_AllianceList;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_AllianceList;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_AllianceList;Ljava/lang/String;IIIIIII)V
    .locals 10

    move-object v9, p0

    move-object v0, p1

    iput-object v0, v9, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_AllianceList$8;->this$0:Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_AllianceList;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_ID_FlagCiv;-><init>(Ljava/lang/String;IIIIIII)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .locals 2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_PopUp()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Laoc/kingdoms/lukasz/menu/MenuManager;->IN_GAME_POP_UP_MENU_ID:I

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_Alliance;->iCivID:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_AllianceList$8;->getCurrent()I

    move-result v1

    if-ne v0, v1, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_PopUp(Z)V

    goto :goto_0

    :cond_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_AllianceList$8;->getCurrent()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Alliance(I)V

    :goto_0
    return-void
.end method

.method public buildElementHover()V
    .locals 2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_AllianceList$8;->getCurrent()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRanking;->getHover_CivilizationRanking(IZZ)Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    move-result-object v0

    iput-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_AllianceList$8;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    return-void
.end method
