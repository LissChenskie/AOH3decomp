.class Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Build$1;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;
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
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Build;ZIIIIIZZLjava/lang/String;)V
    .locals 11

    move-object v10, p0

    move-object v0, p1

    iput-object v0, v10, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Build$1;->this$0:Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Build;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move-object/from16 v9, p10

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;-><init>(ZIIIIIZZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .locals 2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Buildings2_Back()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Court(Z)V

    const-wide/16 v0, 0x0

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->lTime:J

    return-void
.end method

.method public buildElementHover()V
    .locals 3

    iget v0, p0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Build$1;->building:I

    iget v1, p0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Build$1;->buildingID:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->getHoverBuilding(IIZ)Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    move-result-object v0

    iput-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Build$1;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    return-void
.end method
