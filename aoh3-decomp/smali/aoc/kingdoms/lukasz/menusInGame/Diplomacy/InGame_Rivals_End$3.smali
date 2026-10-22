.class Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_Rivals_End$3;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses;
.source "InGame_Rivals_End.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_Rivals_End;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_Rivals_End;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_Rivals_End;Ljava/lang/String;Ljava/lang/String;IIIIII)V
    .locals 10

    move-object v9, p0

    move-object v0, p1

    iput-object v0, v9, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_Rivals_End$3;->this$0:Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_Rivals_End;

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

    const/4 v0, 0x0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_Rivals_End$3;->getIsHovered()Z

    move-result v1

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/menu/Colors;->getColorNegative(ZZ)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    return-object v0
.end method
