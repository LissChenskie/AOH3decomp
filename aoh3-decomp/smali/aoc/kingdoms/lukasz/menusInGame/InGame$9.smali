.class Laoc/kingdoms/lukasz/menusInGame/InGame$9;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_CurrentSituation;
.source "InGame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/InGame;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/InGame;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/InGame;Ljava/lang/String;IIIIII)V
    .locals 9

    move-object v8, p0

    move-object v0, p1

    iput-object v0, v8, Laoc/kingdoms/lukasz/menusInGame/InGame$9;->this$0:Laoc/kingdoms/lukasz/menusInGame/InGame;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_CurrentSituation;-><init>(Ljava/lang/String;IIIIII)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .locals 0

    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/InGame;->actionCurrent()V

    return-void
.end method

.method protected getColor(Z)Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame$9;->getIsHovered()Z

    move-result v0

    invoke-static {p1, v0}, Laoc/kingdoms/lukasz/menu/Colors;->getColorTopStats(ZZ)Lcom/badlogic/gdx/graphics/Color;

    move-result-object p1

    return-object p1
.end method

.method public getSFX()I
    .locals 1

    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_CLICK_TOP:I

    return v0
.end method
