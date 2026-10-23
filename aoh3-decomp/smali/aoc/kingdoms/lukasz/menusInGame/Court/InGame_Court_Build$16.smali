.class Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Build$16;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Active_Click;
.source "InGame_Court_Build.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Build;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Build;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Build;Ljava/lang/String;IIIIIII)V
    .locals 10

    move-object v9, p0

    move-object v0, p1

    iput-object v0, v9, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Build$16;->this$0:Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Build;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Active_Click;-><init>(Ljava/lang/String;IIIIIII)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .locals 2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Build$16;->getCurrent()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Build$16;->getCurrent()I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_Destroy;->iProvinceID:I

    sget-object v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;->oBuildingID:Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_Destroy;->building:I

    sget-object v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;->oBuildingID:Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_Destroy;->buildingID:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Destroy()V

    :cond_0
    return-void
.end method
