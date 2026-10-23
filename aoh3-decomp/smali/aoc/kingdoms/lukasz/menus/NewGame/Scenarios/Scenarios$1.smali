.class Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/Scenarios$1;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonPlay;
.source "Scenarios.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/Scenarios;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/Scenarios;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/Scenarios;Ljava/lang/String;IIIIZ)V
    .locals 7

    iput-object p1, p0, Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/Scenarios$1;->this$0:Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/Scenarios;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Laoc/kingdoms/lukasz/menu_element/button/ButtonPlay;-><init>(Ljava/lang/String;IIIIZ)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .locals 2

    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->reloadScenario:Z

    if-nez v0, :cond_1

    sget-boolean v0, Laoc/kingdoms/lukasz/menus/MainMenu;->canContinue:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    sget-object v1, Laoc/kingdoms/lukasz/map/map/MapScale;->defScales:Laoc/kingdoms/lukasz/map/map/MapScale$DefinedScales;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapScale$DefinedScales;->definedScale_Default:I

    iput v1, v0, Laoc/kingdoms/lukasz/map/map/MapScale;->definedScale:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapScale;->setCurrentScale(F)V

    invoke-static {}, Laoc/kingdoms/lukasz/menus/NewGame/NewGame;->setRandomCiv()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->CLOUDS_MENU:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setViewIDWithoutAnimation(Laoc/kingdoms/lukasz/menu/View;)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    sput-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->reloadScenario:Z

    sput-boolean v0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->editorMode:Z

    sget-object v0, Laoc/kingdoms/lukasz/menu/View;->CLOUDS_MENU:Laoc/kingdoms/lukasz/menu/View;

    sput-object v0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->goToMenu:Laoc/kingdoms/lukasz/menu/View;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->LOAD_SCENARIO:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setViewIDWithoutAnimation(Laoc/kingdoms/lukasz/menu/View;)V

    :goto_1
    return-void
.end method

.method public updateLanguage()V
    .locals 2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "PLAY"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/Scenarios$1;->setText(Ljava/lang/String;)V

    return-void
.end method
