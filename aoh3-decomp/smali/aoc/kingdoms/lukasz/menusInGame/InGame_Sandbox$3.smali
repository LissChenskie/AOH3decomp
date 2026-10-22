.class Laoc/kingdoms/lukasz/menusInGame/InGame_Sandbox$3;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses;
.source "InGame_Sandbox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/InGame_Sandbox;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/InGame_Sandbox;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Sandbox;Ljava/lang/String;Ljava/lang/String;IIIIIIII)V
    .locals 12

    move-object v11, p0

    move-object v0, p1

    iput-object v0, v11, Laoc/kingdoms/lukasz/menusInGame/InGame_Sandbox$3;->this$0:Laoc/kingdoms/lukasz/menusInGame/InGame_Sandbox;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    move/from16 v10, p11

    invoke-direct/range {v0 .. v10}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIIIII)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .locals 4

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->sandbox:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Sandbox;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Sandbox;->GOLD_1:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addGold(F)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "Gold"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/AI/Government/nSju/IlLkpaQxs;->BhcON:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->sandbox:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Sandbox;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Sandbox;->GOLD_1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-virtual {v0, v1, v2, v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToastNegative(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public getColorBonus()Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_NEGATIVE:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method
