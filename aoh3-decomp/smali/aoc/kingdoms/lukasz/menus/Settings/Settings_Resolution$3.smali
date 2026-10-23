.class Laoc/kingdoms/lukasz/menus/Settings/Settings_Resolution$3;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonGame2;
.source "Settings_Resolution.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menus/Settings/Settings_Resolution;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field id:I

.field final synthetic this$0:Laoc/kingdoms/lukasz/menus/Settings/Settings_Resolution;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Resolution;Ljava/lang/String;IIIIIZI)V
    .locals 10

    move-object v9, p0

    move-object v0, p1

    iput-object v0, v9, Laoc/kingdoms/lukasz/menus/Settings/Settings_Resolution$3;->this$0:Laoc/kingdoms/lukasz/menus/Settings/Settings_Resolution;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame2;-><init>(Ljava/lang/String;IIIIIZI)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .locals 3

    iget-object v0, p0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Resolution$3;->this$0:Laoc/kingdoms/lukasz/menus/Settings/Settings_Resolution;

    iget v1, p0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Resolution$3;->id:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Resolution;->getResolution(I)Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsDesktop;->iWidth:I

    iget-object v0, p0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Resolution$3;->this$0:Laoc/kingdoms/lukasz/menus/Settings/Settings_Resolution;

    iget v1, p0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Resolution$3;->id:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Resolution;->getResolution(I)Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsDesktop;->iHeight:I

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/setting/SettingsDesktop;->saveConfig()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->SETTINGS:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setViewID(Laoc/kingdoms/lukasz/menu/View;)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "GameNeedsToBeRestartedToApplyTheChanges"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->settings:I

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToastGold(Ljava/lang/String;I)V

    return-void
.end method

.method public setCurrent(I)V
    .locals 0

    iput p1, p0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Resolution$3;->id:I

    return-void
.end method
