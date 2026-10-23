.class Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree$1;
.super Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;
.source "MissionTree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->runMission(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public update()V
    .locals 4

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Right()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    sget v1, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->EVENT_INFO:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->playSound(I)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    iget v2, p0, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree$1;->id:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    const/16 v2, 0x3e7

    iget v3, p0, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree$1;->id:I

    invoke-virtual {v0, v1, v2, v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Event(Laoc/kingdoms/lukasz/events/Event;II)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    sget v1, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->EVENT:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->playSound(I)V

    return-void
.end method
