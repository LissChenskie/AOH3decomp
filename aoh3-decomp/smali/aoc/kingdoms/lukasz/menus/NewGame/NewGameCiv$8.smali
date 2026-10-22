.class Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv$8;
.super Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc_SimpleNewGame;
.source "NewGameCiv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;Ljava/lang/String;III)V
    .locals 0

    iput-object p1, p0, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv$8;->this$0:Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;

    invoke-direct {p0, p2, p3, p4, p5}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc_SimpleNewGame;-><init>(Ljava/lang/String;III)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .locals 1

    sget-boolean v0, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;->expandCivDesc:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;->expandCivDesc:Z

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildNewGameCiv()V

    return-void
.end method
