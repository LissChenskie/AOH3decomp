.class Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_CivRank$2;
.super Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Horizontal;
.source "InGame_CivRank.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_CivRank;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field id:I

.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_CivRank;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_CivRank;Ljava/lang/String;IIIIII)V
    .locals 9

    move-object v8, p0

    move-object v0, p1

    iput-object v0, v8, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_CivRank$2;->this$0:Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_CivRank;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Horizontal;-><init>(Ljava/lang/String;IIIIII)V

    return-void
.end method


# virtual methods
.method public buildElementHover()V
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_CivRank$2;->id:I

    invoke-static {v0, v0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRanking;->buildElementHover(II)Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    move-result-object v0

    iput-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_CivRank$2;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    return-void
.end method

.method public setCurrent(I)V
    .locals 0

    iput p1, p0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_CivRank$2;->id:I

    return-void
.end method
