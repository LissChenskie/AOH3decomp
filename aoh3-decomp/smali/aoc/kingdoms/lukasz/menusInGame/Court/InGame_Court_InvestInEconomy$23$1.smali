.class Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_InvestInEconomy$23$1;
.super Laoc/kingdoms/lukasz/menu/ClickAnimation;
.source "InGame_Court_InvestInEconomy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_InvestInEconomy$23;->actionElement()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_InvestInEconomy$23;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_InvestInEconomy$23;IIII)V
    .locals 0

    iput-object p1, p0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_InvestInEconomy$23$1;->this$1:Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_InvestInEconomy$23;

    invoke-direct {p0, p2, p3, p4, p5}, Laoc/kingdoms/lukasz/menu/ClickAnimation;-><init>(IIII)V

    return-void
.end method


# virtual methods
.method public getColor()Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_POPULATION:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method
