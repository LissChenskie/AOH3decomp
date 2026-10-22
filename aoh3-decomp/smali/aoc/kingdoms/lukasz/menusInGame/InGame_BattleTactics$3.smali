.class Laoc/kingdoms/lukasz/menusInGame/InGame_BattleTactics$3;
.super Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Value;
.source "InGame_BattleTactics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/InGame_BattleTactics;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/InGame_BattleTactics;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/InGame_BattleTactics;Ljava/lang/String;IIIIII)V
    .locals 9

    move-object v8, p0

    move-object v0, p1

    iput-object v0, v8, Laoc/kingdoms/lukasz/menusInGame/InGame_BattleTactics$3;->this$0:Laoc/kingdoms/lukasz/menusInGame/InGame_BattleTactics;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Value;-><init>(Ljava/lang/String;IIIIII)V

    return-void
.end method


# virtual methods
.method public buildElementHover()V
    .locals 11

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const/4 v4, 0x0

    sget-object v4, Laoc/kingdoms/lukasz/menusInGame/Province/iOYW/ALZmnpZHj;->nfOpYall:Ljava/lang/String;

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->battleTactics:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_BattleTactics;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_BattleTactics;->BATTLE_TACTICS_DEFENSE:[I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_BattleTactics$3;->getCurrent()I

    move-result v5

    aget v4, v4, v5

    if-lez v4, :cond_0

    const-string v4, "+"

    goto :goto_0

    :cond_0
    const-string v4, ""

    :goto_0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->battleTactics:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_BattleTactics;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_BattleTactics;->BATTLE_TACTICS_DEFENSE:[I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_BattleTactics$3;->getCurrent()I

    move-result v5

    aget v4, v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->defense:I

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v8, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->battleTactics:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_BattleTactics;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_BattleTactics;->BATTLE_TACTICS_DEFENSE:[I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_BattleTactics$3;->getCurrent()I

    move-result v9

    aget v2, v2, v9

    if-nez v2, :cond_1

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_NEUTRAL:Lcom/badlogic/gdx/graphics/Color;

    :goto_1
    move-object v9, v2

    goto :goto_2

    :cond_1
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->battleTactics:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_BattleTactics;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_BattleTactics;->BATTLE_TACTICS_DEFENSE:[I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_BattleTactics$3;->getCurrent()I

    move-result v9

    aget v2, v2, v9

    if-lez v2, :cond_2

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_1

    :cond_2
    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_NEGATIVE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_1

    :goto_2
    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    invoke-direct {v1, v0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_BattleTactics$3;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    return-void
.end method

.method protected getColor(Z)Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_BattleTactics$3;->getIsHovered()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Value;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object p1, Laoc/kingdoms/lukasz/jakowski/GameValues;->battleTactics:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_BattleTactics;

    iget-object p1, p1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_BattleTactics;->BATTLE_TACTICS_DEFENSE:[I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_BattleTactics$3;->getCurrent()I

    move-result v0

    aget p1, p1, v0

    if-nez p1, :cond_1

    sget-object p1, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_NEUTRAL:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_0

    :cond_1
    sget-object p1, Laoc/kingdoms/lukasz/jakowski/GameValues;->battleTactics:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_BattleTactics;

    iget-object p1, p1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_BattleTactics;->BATTLE_TACTICS_DEFENSE:[I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_BattleTactics$3;->getCurrent()I

    move-result v0

    aget p1, p1, v0

    if-lez p1, :cond_2

    sget-object p1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_0

    :cond_2
    sget-object p1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_NEGATIVE:Lcom/badlogic/gdx/graphics/Color;

    :goto_0
    return-object p1
.end method
