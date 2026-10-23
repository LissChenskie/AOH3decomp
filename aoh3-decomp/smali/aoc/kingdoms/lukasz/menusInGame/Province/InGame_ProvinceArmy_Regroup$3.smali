.class Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy_Regroup$3;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Active_Click;
.source "InGame_ProvinceArmy_Regroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy_Regroup;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy_Regroup;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy_Regroup;Ljava/lang/String;IIIIIIIZ)V
    .locals 11

    move-object v10, p0

    move-object v0, p1

    iput-object v0, v10, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy_Regroup$3;->this$0:Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy_Regroup;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Active_Click;-><init>(Ljava/lang/String;IIIIIIIZ)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .locals 0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->regroupArmy_Clear()V

    return-void
.end method
