.class Laoc/kingdoms/lukasz/menusInGame/InGame_Escape$4;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonGame2;
.source "InGame_Escape.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/InGame_Escape;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/InGame_Escape;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Escape;Ljava/lang/String;IIIIIZ)V
    .locals 9

    move-object v8, p0

    move-object v0, p1

    iput-object v0, v8, Laoc/kingdoms/lukasz/menusInGame/InGame_Escape$4;->this$0:Laoc/kingdoms/lukasz/menusInGame/InGame_Escape;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame2;-><init>(Ljava/lang/String;IIIIIZ)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .locals 2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_SaveGame(Z)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Escape(Z)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapBG;->updateActiveMapBGShader()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Audio()V

    return-void
.end method

.method public updateLanguage()V
    .locals 2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "Audio"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Escape$4;->setText(Ljava/lang/String;)V

    return-void
.end method
