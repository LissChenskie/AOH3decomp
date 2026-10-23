.class Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseTaxEfficiency$4;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRect;
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
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseTaxEfficiency;Ljava/lang/String;IIII)V
    .locals 6

    iput-object p1, p0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseTaxEfficiency$4;->this$0:Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseTaxEfficiency;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRect;-><init>(Ljava/lang/String;IIII)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .locals 2

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseTaxEfficiency;->CLICK_X_TIMES:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseTaxEfficiency;->CLICK_X_TIMES:I

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseTaxEfficiency;->CLICK_X_TIMES:I

    const/16 v1, 0x9

    if-le v0, v1, :cond_0

    sput v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseTaxEfficiency;->CLICK_X_TIMES:I

    :cond_0
    return-void
.end method
