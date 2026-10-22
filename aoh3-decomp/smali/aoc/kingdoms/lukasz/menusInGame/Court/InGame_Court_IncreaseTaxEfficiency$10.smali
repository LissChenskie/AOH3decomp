.class Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseTaxEfficiency$10;
.super Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Population;
.source "InGame_Court_IncreaseTaxEfficiency.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseTaxEfficiency;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseTaxEfficiency;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseTaxEfficiency;Ljava/lang/String;IIIIIII)V
    .locals 10

    move-object v9, p0

    move-object v0, p1

    iput-object v0, v9, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseTaxEfficiency$10;->this$0:Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseTaxEfficiency;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Population;-><init>(Ljava/lang/String;IIIIIII)V

    return-void
.end method


# virtual methods
.method public buildElementHover()V
    .locals 2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseTaxEfficiency$10;->getCurrent()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo;->getHoverPopulation(IZ)Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    move-result-object v0

    iput-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseTaxEfficiency$10;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    return-void
.end method
