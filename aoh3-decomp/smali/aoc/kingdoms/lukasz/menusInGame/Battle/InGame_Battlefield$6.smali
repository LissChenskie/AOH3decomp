.class Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield$6;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyBattle;
.source "InGame_Battlefield.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;Ljava/lang/String;IIIIIIZ)V
    .locals 10

    move-object v9, p0

    move-object v0, p1

    iput-object v0, v9, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield$6;->this$0:Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyBattle;-><init>(Ljava/lang/String;IIIIIIZ)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .locals 2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_PopUp(Z)V

    return-void
.end method
