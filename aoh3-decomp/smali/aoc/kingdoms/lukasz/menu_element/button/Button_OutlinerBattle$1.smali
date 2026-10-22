.class Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerBattle$1;
.super Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;
.source "Button_OutlinerBattle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerBattle;->updateBattle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerBattle;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerBattle;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerBattle$1;->this$0:Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerBattle;

    invoke-direct {p0, p2}, Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public update()V
    .locals 1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Right()V

    return-void
.end method
