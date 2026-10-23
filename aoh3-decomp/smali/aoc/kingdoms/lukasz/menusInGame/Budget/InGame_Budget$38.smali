.class Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget$38;
.super Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2_TextLR;
.source "InGame_Budget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget;Ljava/lang/String;IIIIIILjava/lang/String;)V
    .locals 10

    move-object v9, p0

    move-object v0, p1

    iput-object v0, v9, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget$38;->this$0:Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move-object/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2_TextLR;-><init>(Ljava/lang/String;IIIIIILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public buildElementHover()V
    .locals 2

    iget-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget$38;->this$0:Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget;->getHoverProsperity(I)Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    move-result-object v0

    iput-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget$38;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    return-void
.end method

.method protected getColor2(Z)Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget p1, p1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p1

    iget p1, p1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fProsperity_AverageEconomy:F

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->prosperity:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Prosperity;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Prosperity;->PROSPERITY_INCOME:F

    div-float/2addr p1, v0

    float-to-int p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Laoc/kingdoms/lukasz/menu/Colors;->getEconomyColor(IF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object p1

    return-object p1
.end method
