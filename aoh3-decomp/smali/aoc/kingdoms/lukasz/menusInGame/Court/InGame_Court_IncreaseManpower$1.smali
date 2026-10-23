.class Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower$1;
.super Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc2_Special;
.source "InGame_Court_IncreaseManpower.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower;Ljava/lang/String;III)V
    .locals 0

    iput-object p1, p0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower$1;->this$0:Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower;

    invoke-direct {p0, p2, p3, p4, p5}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc2_Special;-><init>(Ljava/lang/String;III)V

    return-void
.end method


# virtual methods
.method protected getColor(Z)Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_IncreaseManpower$1;->getIsHovered()Z

    move-result v0

    invoke-static {p1, v0}, Laoc/kingdoms/lukasz/menu/Colors;->getColorButton(ZZ)Lcom/badlogic/gdx/graphics/Color;

    move-result-object p1

    return-object p1
.end method
