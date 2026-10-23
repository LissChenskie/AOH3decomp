.class Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure$5;
.super Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;
.source "InGame_RightInfrastructure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure;Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;Ljava/lang/String;Ljava/lang/String;IIIIZ)V
    .locals 10

    move-object v9, p0

    move-object v0, p1

    iput-object v0, v9, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure$5;->this$0:Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightInfrastructure;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;-><init>(Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;Ljava/lang/String;Ljava/lang/String;IIIIZ)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .locals 1

    const/4 v0, 0x3

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation;->activeModeID:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_GraphPopulation()V

    return-void
.end method
