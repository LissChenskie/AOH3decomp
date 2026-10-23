.class public Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_BonusesColor;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses;
.source "ButtonStatsRectIMG_BonusesColor.java"


# instance fields
.field public bonusColors:Lcom/badlogic/gdx/graphics/Color;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIIIIILcom/badlogic/gdx/graphics/Color;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    iput-object p9, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_BonusesColor;->bonusColors:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method


# virtual methods
.method public getColorBonus()Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_BonusesColor;->bonusColors:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method
