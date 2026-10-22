.class Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecial$1;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler_Diplomacy;
.source "InGame_AllianceSpecial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecial;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecial;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecial;III)V
    .locals 0

    iput-object p1, p0, Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecial$1;->this$0:Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecial;

    invoke-direct {p0, p2, p3, p4}, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler_Diplomacy;-><init>(III)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .locals 2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_PopUp(Z)V

    invoke-super {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler_Diplomacy;->actionElement()V

    return-void
.end method
