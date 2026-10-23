.class Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle$20;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyGeneral2;
.source "InGame_Battle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;Ljava/lang/String;IIIIIIIIILjava/lang/String;I)V
    .locals 14

    move-object v13, p0

    move-object v0, p1

    iput-object v0, v13, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle$20;->this$0:Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;

    move-object v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    move/from16 v10, p11

    move-object/from16 v11, p12

    move/from16 v12, p13

    invoke-direct/range {v0 .. v12}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyGeneral2;-><init>(Ljava/lang/String;IIIIIIIIILjava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle$20;->this$0:Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleFull()V

    return-void
.end method

.method public buildElementHover()V
    .locals 0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle$20;->buildElementHover2()V

    return-void
.end method
