.class public Lcom/codedisaster/steamworks/SteamApps;
.super Lcom/codedisaster/steamworks/SteamInterface;
.source "SteamApps.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/codedisaster/steamworks/SteamInterface;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic dispose()V
    .locals 0

    invoke-super {p0}, Lcom/codedisaster/steamworks/SteamInterface;->dispose()V

    return-void
.end method

.method public getAppBuildId()I
    .locals 1

    invoke-static {}, Lcom/codedisaster/steamworks/SteamAppsNative;->getAppBuildId()I

    move-result v0

    return v0
.end method

.method public getAppOwner()Lcom/codedisaster/steamworks/SteamID;
    .locals 3

    new-instance v0, Lcom/codedisaster/steamworks/SteamID;

    invoke-static {}, Lcom/codedisaster/steamworks/SteamAppsNative;->getAppOwner()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamID;-><init>(J)V

    return-object v0
.end method

.method public getAvailableGameLanguages()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/codedisaster/steamworks/SteamAppsNative;->getAvailableGameLanguages()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentGameLanguage()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/codedisaster/steamworks/SteamAppsNative;->getCurrentGameLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDLCCount()I
    .locals 1

    invoke-static {}, Lcom/codedisaster/steamworks/SteamAppsNative;->getDLCCount()I

    move-result v0

    return v0
.end method

.method public getEarliestPurchaseUnixTime(I)I
    .locals 0

    invoke-static {p1}, Lcom/codedisaster/steamworks/SteamAppsNative;->getEarliestPurchaseUnixTime(I)I

    move-result p1

    return p1
.end method

.method public installDLC(I)V
    .locals 0

    invoke-static {p1}, Lcom/codedisaster/steamworks/SteamAppsNative;->installDLC(I)V

    return-void
.end method

.method public isCybercafe()Z
    .locals 1

    invoke-static {}, Lcom/codedisaster/steamworks/SteamAppsNative;->isCybercafe()Z

    move-result v0

    return v0
.end method

.method public isDlcInstalled(I)Z
    .locals 0

    invoke-static {p1}, Lcom/codedisaster/steamworks/SteamAppsNative;->isDlcInstalled(I)Z

    move-result p1

    return p1
.end method

.method public isLowViolence()Z
    .locals 1

    invoke-static {}, Lcom/codedisaster/steamworks/SteamAppsNative;->isLowViolence()Z

    move-result v0

    return v0
.end method

.method public isSubscribed()Z
    .locals 1

    invoke-static {}, Lcom/codedisaster/steamworks/SteamAppsNative;->isSubscribed()Z

    move-result v0

    return v0
.end method

.method public isSubscribedApp(I)Z
    .locals 0

    invoke-static {p1}, Lcom/codedisaster/steamworks/SteamAppsNative;->isSubscribedApp(I)Z

    move-result p1

    return p1
.end method

.method public isSubscribedFromFreeWeekend()Z
    .locals 1

    invoke-static {}, Lcom/codedisaster/steamworks/SteamAppsNative;->isSubscribedFromFreeWeekend()Z

    move-result v0

    return v0
.end method

.method public isVACBanned()Z
    .locals 1

    invoke-static {}, Lcom/codedisaster/steamworks/SteamAppsNative;->isVACBanned()Z

    move-result v0

    return v0
.end method

.method public uninstallDLC(I)V
    .locals 0

    invoke-static {p1}, Lcom/codedisaster/steamworks/SteamAppsNative;->uninstallDLC(I)V

    return-void
.end method
