.class Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecialReformHRE$8;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonGame;
.source "InGame_AllianceSpecialReformHRE.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecialReformHRE;-><init>(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecialReformHRE;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecialReformHRE;Ljava/lang/String;IIIIIZ)V
    .locals 9

    move-object v8, p0

    move-object v0, p1

    iput-object v0, v8, Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecialReformHRE$8;->this$0:Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecialReformHRE;

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
    .locals 0

    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecialReformHRE;->confirm()V

    return-void
.end method

.method public buildElementHover()V
    .locals 2

    sget v0, Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecialReformHRE;->allianceID:I

    sget v1, Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecialReformHRE;->reformID:I

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/allianceHRE/HREManager;->getHoverReform(II)Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    move-result-object v0

    iput-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecialReformHRE$8;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    return-void
.end method

.method public getClickable()Z
    .locals 3

    invoke-super {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame;->getClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecial:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecialReformHRE;->allianceID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;

    iget v1, v1, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;->iLeaderCivID:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
