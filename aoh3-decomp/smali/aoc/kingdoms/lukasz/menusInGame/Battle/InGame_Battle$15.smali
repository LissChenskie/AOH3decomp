.class Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle$15;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonBattleRegimentEmpty;
.source "InGame_Battle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;III)V
    .locals 0

    iput-object p1, p0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle$15;->this$0:Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;

    invoke-direct {p0, p2, p3, p4}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBattleRegimentEmpty;-><init>(III)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle$15;->this$0:Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->updateAnimationStatus()V

    return-void
.end method
