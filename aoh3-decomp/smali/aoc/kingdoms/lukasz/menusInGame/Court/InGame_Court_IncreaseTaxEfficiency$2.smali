.class Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseTaxEfficiency$2;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Active_Click;
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

    iput-object v0, v9, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseTaxEfficiency$2;->this$0:Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseTaxEfficiency;

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
.method public getTextToDraw()Ljava/lang/String;
    .locals 4

    iget v0, p0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseTaxEfficiency$2;->lastValue:I

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseTaxEfficiency;->CLICK_X_TIMES:I

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "PerformTheActionXTimes"

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseTaxEfficiency;->CLICK_X_TIMES:I

    invoke-virtual {v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseTaxEfficiency$2;->setText(Ljava/lang/String;)V

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseTaxEfficiency;->CLICK_X_TIMES:I

    iput v0, p0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseTaxEfficiency$2;->lastValue:I

    :cond_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseTaxEfficiency$2;->sText:Ljava/lang/String;

    return-object v0
.end method
