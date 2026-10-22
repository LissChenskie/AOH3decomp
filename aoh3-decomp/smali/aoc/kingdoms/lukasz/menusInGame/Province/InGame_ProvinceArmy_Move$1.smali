.class Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy_Move$1;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonGame_Style;
.source "InGame_ProvinceArmy_Move.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy_Move;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy_Move;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy_Move;Ljava/lang/String;IIIIIIZ)V
    .locals 10

    move-object v9, p0

    move-object v0, p1

    iput-object v0, v9, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy_Move$1;->this$0:Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy_Move;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame_Style;-><init>(Ljava/lang/String;IIIIIIZ)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .locals 2

    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->chooseProvinceMode:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->chooseProvinceMode:Z

    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->chooseProvinceMode:Z

    if-eqz v0, :cond_0

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->lTimeMOVE:J

    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->chooseProvinceExtraY:I

    :cond_0
    return-void
.end method

.method protected getColor(Z)Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->chooseProvinceMode:Z

    if-eqz v0, :cond_0

    sget-object p1, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame_Style;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object p1

    :goto_0
    return-object p1
.end method
