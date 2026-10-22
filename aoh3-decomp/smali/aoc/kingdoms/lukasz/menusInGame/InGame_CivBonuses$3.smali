.class Laoc/kingdoms/lukasz/menusInGame/InGame_CivBonuses$3;
.super Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;
.source "InGame_CivBonuses.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/InGame_CivBonuses;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/InGame_CivBonuses;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivBonuses;Ljava/lang/String;IIIIII)V
    .locals 9

    move-object v8, p0

    move-object v0, p1

    iput-object v0, v8, Laoc/kingdoms/lukasz/menusInGame/InGame_CivBonuses$3;->this$0:Laoc/kingdoms/lukasz/menusInGame/InGame_CivBonuses;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;-><init>(Ljava/lang/String;IIIIII)V

    return-void
.end method


# virtual methods
.method protected getColor(Z)Lcom/badlogic/gdx/graphics/Color;
    .locals 0

    if-eqz p1, :cond_0

    sget-object p1, Laoc/kingdoms/lukasz/menu/Colors;->BUTTON_TEXT_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    return-object p1

    :cond_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivBonuses$3;->getIsHovered()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Laoc/kingdoms/lukasz/menu/Colors;->BUTTON_TEXT_HOVERED:Lcom/badlogic/gdx/graphics/Color;

    return-object p1

    :cond_1
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivBonuses$3;->getClickable()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Laoc/kingdoms/lukasz/menu/Colors;->BUTTON_TEXT:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_0

    :cond_2
    sget-object p1, Laoc/kingdoms/lukasz/menu/Colors;->BUTTON_TEXT_DISABLED:Lcom/badlogic/gdx/graphics/Color;

    :goto_0
    return-object p1
.end method
