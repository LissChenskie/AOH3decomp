.class Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager$1;
.super Ljava/lang/Object;
.source "SteamManager.java"

# interfaces
.implements Lcom/codedisaster/steamworks/SteamRemoteStorageCallback;


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
.method public onDownloadUGCResult(Lcom/codedisaster/steamworks/SteamUGCHandle;Lcom/codedisaster/steamworks/SteamResult;)V
    .locals 1

    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string p2, "SteamRemoteStorage"

    const-string v0, "onDownloadUGCResult"

    invoke-interface {p1, p2, v0}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onFileReadAsyncComplete(Lcom/codedisaster/steamworks/SteamAPICall;Lcom/codedisaster/steamworks/SteamResult;II)V
    .locals 0

    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string p2, "SteamRemoteStorage"

    const-string p3, "onFileReadAsyncComplete"

    invoke-interface {p1, p2, p3}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onFileShareResult(Lcom/codedisaster/steamworks/SteamUGCHandle;Ljava/lang/String;Lcom/codedisaster/steamworks/SteamResult;)V
    .locals 0

    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string p2, "SteamRemoteStorage"

    const-string p3, "onFileShareResult"

    invoke-interface {p1, p2, p3}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onFileWriteAsyncComplete(Lcom/codedisaster/steamworks/SteamResult;)V
    .locals 2

    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v0, "SteamRemoteStorage"

    const-string v1, "onFileWriteAsyncComplete"

    invoke-interface {p1, v0, v1}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPublishFileResult(Lcom/codedisaster/steamworks/SteamPublishedFileID;ZLcom/codedisaster/steamworks/SteamResult;)V
    .locals 0

    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string p2, "SteamRemoteStorage"

    const/4 p3, 0x0

    sget-object p3, Lcom/badlogic/gdx/assets/loaders/Wkvw/PZBvyl;->Oqy:Ljava/lang/String;

    invoke-interface {p1, p2, p3}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPublishedFileDeleted(Lcom/codedisaster/steamworks/SteamPublishedFileID;I)V
    .locals 1

    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string p2, "SteamRemoteStorage"

    const-string v0, "onPublishedFileDeleted"

    invoke-interface {p1, p2, v0}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPublishedFileSubscribed(Lcom/codedisaster/steamworks/SteamPublishedFileID;I)V
    .locals 1

    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string p2, "SteamRemoteStorage"

    const-string v0, "onPublishedFileSubscribed"

    invoke-interface {p1, p2, v0}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPublishedFileUnsubscribed(Lcom/codedisaster/steamworks/SteamPublishedFileID;I)V
    .locals 1

    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string p2, "SteamRemoteStorage"

    const-string v0, "onPublishedFileUnsubscribed"

    invoke-interface {p1, p2, v0}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onUpdatePublishedFileResult(Lcom/codedisaster/steamworks/SteamPublishedFileID;ZLcom/codedisaster/steamworks/SteamResult;)V
    .locals 0

    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string p2, "SteamRemoteStorage"

    const-string p3, "onUpdatePublishedFileResult"

    invoke-interface {p1, p2, p3}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
