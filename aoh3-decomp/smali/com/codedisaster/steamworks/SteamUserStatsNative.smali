.class final Lcom/codedisaster/steamworks/SteamUserStatsNative;
.super Ljava/lang/Object;
.source "SteamUserStatsNative.java"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static native clearAchievement(Ljava/lang/String;)Z
.end method

.method static native createCallback(Lcom/codedisaster/steamworks/SteamUserStatsCallbackAdapter;)J
.end method

.method static native downloadLeaderboardEntries(JJIII)J
.end method

.method static native downloadLeaderboardEntriesForUsers(JJ[JI)J
.end method

.method static native findLeaderboard(JLjava/lang/String;)J
.end method

.method static native findOrCreateLeaderboard(JLjava/lang/String;II)J
.end method

.method static native getAchievement(Ljava/lang/String;[Z)Z
.end method

.method static native getAchievementName(I)Ljava/lang/String;
.end method

.method static native getDownloadedLeaderboardEntry(JILcom/codedisaster/steamworks/SteamLeaderboardEntry;)Z
.end method

.method static native getDownloadedLeaderboardEntry(JILcom/codedisaster/steamworks/SteamLeaderboardEntry;[II)Z
.end method

.method static native getGlobalStat(Ljava/lang/String;[D)Z
.end method

.method static native getGlobalStat(Ljava/lang/String;[J)Z
.end method

.method static native getGlobalStatHistory(Ljava/lang/String;[DI)I
.end method

.method static native getGlobalStatHistory(Ljava/lang/String;[JI)I
.end method

.method static native getLeaderboardDisplayType(J)I
.end method

.method static native getLeaderboardEntryCount(J)I
.end method

.method static native getLeaderboardName(J)Ljava/lang/String;
.end method

.method static native getLeaderboardSortMethod(J)I
.end method

.method static native getNumAchievements()I
.end method

.method static native getNumberOfCurrentPlayers(J)J
.end method

.method static native getStat(Ljava/lang/String;[F)Z
.end method

.method static native getStat(Ljava/lang/String;[I)Z
.end method

.method static native indicateAchievementProgress(Ljava/lang/String;II)Z
.end method

.method static native requestCurrentStats()Z
.end method

.method static native requestGlobalStats(JI)J
.end method

.method static native resetAllStats(Z)Z
.end method

.method static native setAchievement(Ljava/lang/String;)Z
.end method

.method static native setStat(Ljava/lang/String;F)Z
.end method

.method static native setStat(Ljava/lang/String;I)Z
.end method

.method static native storeStats()Z
.end method

.method static native uploadLeaderboardScore(JJII)J
.end method

.method static native uploadLeaderboardScore(JJII[II)J
.end method
