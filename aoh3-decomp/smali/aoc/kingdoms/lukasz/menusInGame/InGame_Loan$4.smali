.class Laoc/kingdoms/lukasz/menusInGame/InGame_Loan$4;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget_Right2;
.source "InGame_Loan.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/InGame_Loan;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/InGame_Loan;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Loan;Ljava/lang/String;IIII)V
    .locals 6

    iput-object p1, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_Loan$4;->this$0:Laoc/kingdoms/lukasz/menusInGame/InGame_Loan;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget_Right2;-><init>(Ljava/lang/String;IIII)V

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

    const-string v4, "Inflation"

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

    const-string v4, "+"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->loan:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Loan;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Loan;->LOAN_INFLATION:F

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v4, v5

    const/16 v5, 0x64

    invoke-static {v4, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "%"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->inflation:I

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    sget-object v8, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v9, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    invoke-direct {v1, v0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_Loan$4;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget_Right2;->setText(Ljava/lang/String;)V

    sget-object p1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_NEGATIVE:Lcom/badlogic/gdx/graphics/Color;

    iput-object p1, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_Loan$4;->nColor:Lcom/badlogic/gdx/graphics/Color;

    sget-object p1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_NEGATIVE_HOVER:Lcom/badlogic/gdx/graphics/Color;

    iput-object p1, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_Loan$4;->nColorH:Lcom/badlogic/gdx/graphics/Color;

    sget-object p1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_NEGATIVE_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    iput-object p1, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_Loan$4;->nColorA:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method
