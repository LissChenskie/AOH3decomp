.class Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager$2;
.super Ljava/lang/Object;
.source "SteamManager.java"

# interfaces
.implements Lcom/codedisaster/steamworks/SteamUGCCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateItem(Lcom/codedisaster/steamworks/SteamPublishedFileID;ZLcom/codedisaster/steamworks/SteamResult;)V
    .locals 2

    sget-object p2, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v0, "SteamUGC"

    const-string v1, "onCreateItem"

    invoke-interface {p2, v0, v1}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    sput-object p1, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->createItem_steamPublishedFileID:Lcom/codedisaster/steamworks/SteamPublishedFileID;

    sget-object p1, Lcom/codedisaster/steamworks/SteamResult;->OK:Lcom/codedisaster/steamworks/SteamResult;

    const p2, 0xea60

    if-ne p3, p1, :cond_0

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object p3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v0, "UploadedSuccessfully"

    invoke-virtual {p3, v0}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->technology2:I

    invoke-virtual {p1, p3, v0, p2}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToastGold(Ljava/lang/String;II)V

    goto :goto_0

    :cond_0
    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Create: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "Error"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->technology2:I

    invoke-virtual {p1, p3, v0, p2}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToastGold(Ljava/lang/String;II)V

    :goto_0
    const/4 p1, 0x1

    sput-boolean p1, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->DONE:Z

    return-void
.end method

.method public onDeleteItem(Lcom/codedisaster/steamworks/SteamPublishedFileID;Lcom/codedisaster/steamworks/SteamResult;)V
    .locals 1

    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string p2, "SteamUGC"

    const-string v0, "onDeleteItem"

    invoke-interface {p1, p2, v0}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDownloadItemResult(ILcom/codedisaster/steamworks/SteamPublishedFileID;Lcom/codedisaster/steamworks/SteamResult;)V
    .locals 0

    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string p2, "SteamUGC"

    const-string p3, "onDownloadItemResult"

    invoke-interface {p1, p2, p3}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onGetUserItemVote(Lcom/codedisaster/steamworks/SteamPublishedFileID;ZZZLcom/codedisaster/steamworks/SteamResult;)V
    .locals 0

    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string p2, "SteamUGC"

    const-string p3, "onGetUserItemVote"

    invoke-interface {p1, p2, p3}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRequestUGCDetails(Lcom/codedisaster/steamworks/SteamUGCDetails;Lcom/codedisaster/steamworks/SteamResult;)V
    .locals 1

    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string p2, "SteamUGC"

    const-string v0, "onRequestUGCDetails"

    invoke-interface {p1, p2, v0}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSetUserItemVote(Lcom/codedisaster/steamworks/SteamPublishedFileID;ZLcom/codedisaster/steamworks/SteamResult;)V
    .locals 0

    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string p2, "SteamUGC"

    const-string p3, "onSetUserItemVote"

    invoke-interface {p1, p2, p3}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStartPlaytimeTracking(Lcom/codedisaster/steamworks/SteamResult;)V
    .locals 2

    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v0, "SteamUGC"

    const-string v1, "onStartPlaytimeTracking"

    invoke-interface {p1, v0, v1}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStopPlaytimeTracking(Lcom/codedisaster/steamworks/SteamResult;)V
    .locals 2

    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v0, "SteamUGC"

    const-string v1, "onStopPlaytimeTracking"

    invoke-interface {p1, v0, v1}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStopPlaytimeTrackingForAllItems(Lcom/codedisaster/steamworks/SteamResult;)V
    .locals 2

    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v0, "SteamUGC"

    const-string v1, "onStopPlaytimeTrackingForAllItems"

    invoke-interface {p1, v0, v1}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSubmitItemUpdate(Lcom/codedisaster/steamworks/SteamPublishedFileID;ZLcom/codedisaster/steamworks/SteamResult;)V
    .locals 3

    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string p2, "SteamUGC"

    const-string v0, "onSubmitItemUpdate"

    invoke-interface {p1, p2, v0}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/codedisaster/steamworks/SteamResult;->OK:Lcom/codedisaster/steamworks/SteamResult;

    const p2, 0xea60

    if-ne p3, p1, :cond_0

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object p3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v0, "UploadedSuccessfully"

    invoke-virtual {p3, v0}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->technology2:I

    invoke-virtual {p1, p3, v0, p2}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToastGold(Ljava/lang/String;II)V

    goto :goto_0

    :cond_0
    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Update"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "Error"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Lcom/codedisaster/steamworks/SteamResult;->name()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->technology2:I

    invoke-virtual {p1, p3, v0, p2}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToastGold(Ljava/lang/String;II)V

    :goto_0
    const/4 p1, 0x1

    sput-boolean p1, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->DONE:Z

    sput-boolean p1, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_Load_Workshop;->uploaded:Z

    return-void
.end method

.method public onSubscribeItem(Lcom/codedisaster/steamworks/SteamPublishedFileID;Lcom/codedisaster/steamworks/SteamResult;)V
    .locals 1

    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string p2, "SteamUGC"

    const-string v0, "onSubscribeItem"

    invoke-interface {p1, p2, v0}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onUGCQueryCompleted(Lcom/codedisaster/steamworks/SteamUGCQuery;IIZLcom/codedisaster/steamworks/SteamResult;)V
    .locals 0

    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string p2, "onUGCQueryCompleted"

    invoke-interface {p1, p2, p2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onUnsubscribeItem(Lcom/codedisaster/steamworks/SteamPublishedFileID;Lcom/codedisaster/steamworks/SteamResult;)V
    .locals 1

    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string p2, "SteamUGC"

    const-string v0, "onUnsubscribeItem"

    invoke-interface {p1, p2, v0}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onUserFavoriteItemsListChanged(Lcom/codedisaster/steamworks/SteamPublishedFileID;ZLcom/codedisaster/steamworks/SteamResult;)V
    .locals 0

    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string p2, "SteamUGC"

    const-string p3, "onUserFavoriteItemsListChanged"

    invoke-interface {p1, p2, p3}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
