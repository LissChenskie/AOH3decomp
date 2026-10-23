.class Laoc/kingdoms/lukasz/menus/Init_SelectLanguage$1;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonGame2;
.source "Init_SelectLanguage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menus/Init_SelectLanguage;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field id:I

.field final synthetic this$0:Laoc/kingdoms/lukasz/menus/Init_SelectLanguage;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menus/Init_SelectLanguage;Ljava/lang/String;IIIIIZ)V
    .locals 9

    move-object v8, p0

    move-object v0, p1

    iput-object v0, v8, Laoc/kingdoms/lukasz/menus/Init_SelectLanguage$1;->this$0:Laoc/kingdoms/lukasz/menus/Init_SelectLanguage;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame2;-><init>(Ljava/lang/String;IIIIIZ)V

    const/4 v0, 0x0

    iput v0, v8, Laoc/kingdoms/lukasz/menus/Init_SelectLanguage$1;->id:I

    return-void
.end method


# virtual methods
.method public actionElement()V
    .locals 3

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    sget-object v1, Laoc/kingdoms/lukasz/menus/Init_SelectLanguage;->languagesFiles:Ljava/util/List;

    iget v2, p0, Laoc/kingdoms/lukasz/menus/Init_SelectLanguage$1;->id:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->LANGUAGE_TAG:Ljava/lang/String;

    sget-object v0, Laoc/kingdoms/lukasz/menus/Init_SelectLanguage;->goBackToMenu:Laoc/kingdoms/lukasz/menu/View;

    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->INIT_GAME_MENU:Laoc/kingdoms/lukasz/menu/View;

    if-eq v0, v1, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "GameNeedsToBeRestartedToApplyTheChanges"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->settings:I

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToastGold(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    sget-object v1, Laoc/kingdoms/lukasz/menus/Init_SelectLanguage;->languagesFiles:Ljava/util/List;

    iget v2, p0, Laoc/kingdoms/lukasz/menus/Init_SelectLanguage$1;->id:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;-><init>(Ljava/lang/String;)V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    :goto_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->saveSettings()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v1, Laoc/kingdoms/lukasz/menus/Init_SelectLanguage;->goBackToMenu:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setViewIDWithoutAnimation(Laoc/kingdoms/lukasz/menu/View;)V

    return-void
.end method

.method public setCurrent(I)V
    .locals 0

    iput p1, p0, Laoc/kingdoms/lukasz/menus/Init_SelectLanguage$1;->id:I

    return-void
.end method
