.class Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceBonuses$1;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses;
.source "InGame_ProvinceBonuses.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceBonuses;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceBonuses;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceBonuses;Ljava/lang/String;Ljava/lang/String;IIIIII)V
    .locals 10

    move-object v9, p0

    move-object v0, p1

    iput-object v0, v9, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceBonuses$1;->this$0:Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceBonuses;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    return-void
.end method


# virtual methods
.method public getColorBonus()Lcom/badlogic/gdx/graphics/Color;
    .locals 2

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceBonuses;->iProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v0, v0, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->LocalGrowthRate:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_0

    :cond_0
    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_NEGATIVE:Lcom/badlogic/gdx/graphics/Color;

    :goto_0
    return-object v0
.end method
