.class Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_Intervene$3;
.super Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Diplomacy;
.source "InGame_Intervene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_Intervene;-><init>(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_Intervene;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_Intervene;IIIIII)V
    .locals 7

    iput-object p1, p0, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_Intervene$3;->this$0:Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_Intervene;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Diplomacy;-><init>(IIIIII)V

    return-void
.end method


# virtual methods
.method public getColorBar()Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    sget-object v0, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->COLOR_WAR:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method
