.class final Lcom/codedisaster/steamworks/SteamAppsNative;
.super Ljava/lang/Object;
.source "SteamAppsNative.java"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static native getAppBuildId()I
.end method

.method static native getAppOwner()J
.end method

.method static native getAvailableGameLanguages()Ljava/lang/String;
.end method

.method static native getCurrentGameLanguage()Ljava/lang/String;
.end method

.method static native getDLCCount()I
.end method

.method static native getEarliestPurchaseUnixTime(I)I
.end method

.method static native installDLC(I)V
.end method

.method static native isCybercafe()Z
.end method

.method static native isDlcInstalled(I)Z
.end method

.method static native isLowViolence()Z
.end method

.method static native isSubscribed()Z
.end method

.method static native isSubscribedApp(I)Z
.end method

.method static native isSubscribedFromFreeWeekend()Z
.end method

.method static native isVACBanned()Z
.end method

.method static native uninstallDLC(I)V
.end method
