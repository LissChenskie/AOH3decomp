.class Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ$26;
.super Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_Diplomacy;
.source "InGame_Civ.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;Ljava/lang/String;IIIIZ)V
    .locals 7

    iput-object p1, p0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ$26;->this$0:Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_Diplomacy;-><init>(Ljava/lang/String;IIIIZ)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .locals 3

    sget-boolean v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->diplomacyMode:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    sput-boolean v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->diplomacyMode:Z

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DIPLOMACY:I

    if-eq v0, v2, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DIPLOMACY:I

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->setActiveViewID(I)V

    :cond_0
    sget v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iRebuildToCivID:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Civ(Z)V

    const-wide/16 v0, 0x0

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->lTime:J

    return-void
.end method

.method public getSFX()I
    .locals 1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getTab()I

    move-result v0

    return v0
.end method
