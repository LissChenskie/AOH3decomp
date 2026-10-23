.class Laoc/kingdoms/lukasz/menusInGame/DiplomacyMessage/InGame_MessageCallToWar$9;
.super Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;
.source "InGame_MessageCallToWar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/DiplomacyMessage/InGame_MessageCallToWar;-><init>(Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/DiplomacyMessage/InGame_MessageCallToWar;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/DiplomacyMessage/InGame_MessageCallToWar;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Laoc/kingdoms/lukasz/menusInGame/DiplomacyMessage/InGame_MessageCallToWar$9;->this$0:Laoc/kingdoms/lukasz/menusInGame/DiplomacyMessage/InGame_MessageCallToWar;

    invoke-direct {p0, p2}, Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public update()V
    .locals 1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_MessagesSavePos()V

    return-void
.end method
