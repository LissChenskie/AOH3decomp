.class Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource$9;
.super Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;
.source "InGame_GoodsMarket_Resource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource;Ljava/lang/String;IIIIII)V
    .locals 9

    move-object v8, p0

    move-object v0, p1

    iput-object v0, v8, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource$9;->this$0:Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket_Resource;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;-><init>(Ljava/lang/String;IIIIII)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .locals 2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_GoodsMarket()V

    const-wide/16 v0, 0x0

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;->lTime:J

    return-void
.end method
