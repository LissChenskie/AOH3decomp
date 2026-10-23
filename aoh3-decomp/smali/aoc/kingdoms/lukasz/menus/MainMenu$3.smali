.class Laoc/kingdoms/lukasz/menus/MainMenu$3;
.super Laoc/kingdoms/lukasz/menu_element/button/Button_LoadGame_MainMenu;
.source "MainMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menus/MainMenu;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menus/MainMenu;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menus/MainMenu;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 6

    iput-object p1, p0, Laoc/kingdoms/lukasz/menus/MainMenu$3;->this$0:Laoc/kingdoms/lukasz/menus/MainMenu;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu_element/button/Button_LoadGame_MainMenu;-><init>(Ljava/lang/String;Ljava/lang/String;III)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .locals 2

    sget-object v0, Laoc/kingdoms/lukasz/menus/MainMenu;->savedGameKey:Ljava/lang/String;

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;->key:Ljava/lang/String;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->LOAD_SAVED_GAME:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setViewIDWithoutAnimation(Laoc/kingdoms/lukasz/menu/View;)V

    return-void
.end method
