.class Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2$17;
.super Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;
.source "InGame_CourtOptions2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->actionMissions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public update()V
    .locals 1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->setOrderOfMenu_TechnologyTree()V

    return-void
.end method
