.class Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$57;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonGame2;
.source "Settings_Menu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;Ljava/lang/String;IIIIIZIZ)V
    .locals 11

    move-object v10, p0

    move-object v0, p1

    iput-object v0, v10, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$57;->this$0:Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame2;-><init>(Ljava/lang/String;IIIIIZIZ)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .locals 3

    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsDesktop;->vSync:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsDesktop;->vSync:Z

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/setting/SettingsDesktop;->saveConfig()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "GameNeedsToBeRestartedToApplyTheChanges"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->settings:I

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToastGold(Ljava/lang/String;I)V

    return-void
.end method

.method public getCheckboxState()Z
    .locals 1

    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsDesktop;->vSync:Z

    return v0
.end method
