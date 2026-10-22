.class Laoc/kingdoms/lukasz/jakowski/Player/Player$6;
.super Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;
.source "Player.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/jakowski/Player/Player;->addNotification_Reinforce(Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/jakowski/Player/Player;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/jakowski/Player/Player;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player$6;->this$0:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    invoke-direct {p0, p2}, Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public update()V
    .locals 1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Notifications()V

    return-void
.end method
