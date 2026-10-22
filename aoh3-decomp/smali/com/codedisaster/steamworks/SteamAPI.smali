.class public Lcom/codedisaster/steamworks/SteamAPI;
.super Ljava/lang/Object;
.source "SteamAPI.java"


# static fields
.field private static isNativeAPILoaded:Z

.field private static isRunning:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/codedisaster/steamworks/SteamException;
        }
    .end annotation

    sget-boolean v0, Lcom/codedisaster/steamworks/SteamAPI;->isNativeAPILoaded:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/codedisaster/steamworks/SteamAPI;->nativeInit()Z

    move-result v0

    sput-boolean v0, Lcom/codedisaster/steamworks/SteamAPI;->isRunning:Z

    return v0

    :cond_0
    new-instance v0, Lcom/codedisaster/steamworks/SteamException;

    const-string v1, "Native libraries not loaded.\nEnsure to call SteamAPI.loadLibraries() first!"

    invoke-direct {v0, v1}, Lcom/codedisaster/steamworks/SteamException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static isIsNativeAPILoaded()Z
    .locals 1

    sget-boolean v0, Lcom/codedisaster/steamworks/SteamAPI;->isNativeAPILoaded:Z

    return v0
.end method

.method public static isSteamRunning()Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/codedisaster/steamworks/SteamAPI;->isSteamRunning(Z)Z

    move-result v0

    return v0
.end method

.method public static isSteamRunning(Z)Z
    .locals 1

    sget-boolean v0, Lcom/codedisaster/steamworks/SteamAPI;->isRunning:Z

    if-eqz v0, :cond_1

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/codedisaster/steamworks/SteamAPI;->isSteamRunningNative()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static native isSteamRunningNative()Z
.end method

.method public static loadLibraries()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/codedisaster/steamworks/SteamException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/codedisaster/steamworks/SteamAPI;->loadLibraries(Ljava/lang/String;)V

    return-void
.end method

.method public static loadLibraries(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/codedisaster/steamworks/SteamException;
        }
    .end annotation

    sget-boolean v0, Lcom/codedisaster/steamworks/SteamAPI;->isNativeAPILoaded:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "steam_api"

    if-nez p0, :cond_1

    sget-boolean v1, Lcom/codedisaster/steamworks/SteamSharedLibraryLoader;->DEBUG:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/codedisaster/steamworks/SteamSharedLibraryLoader;->getSdkRedistributableBinPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/codedisaster/steamworks/SteamSharedLibraryLoader;->loadLibrary(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {v0, p0}, Lcom/codedisaster/steamworks/SteamSharedLibraryLoader;->loadLibrary(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string v0, "steamworks4j"

    invoke-static {v0, p0}, Lcom/codedisaster/steamworks/SteamSharedLibraryLoader;->loadLibrary(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    sput-boolean p0, Lcom/codedisaster/steamworks/SteamAPI;->isNativeAPILoaded:Z

    return-void
.end method

.method private static native nativeInit()Z
.end method

.method private static native nativeRestartAppIfNecessary(I)Z
.end method

.method private static native nativeShutdown()V
.end method

.method public static printDebugInfo(Ljava/io/PrintStream;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  Steam API initialized: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lcom/codedisaster/steamworks/SteamAPI;->isRunning:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  Steam client active: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/codedisaster/steamworks/SteamAPI;->isSteamRunning()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static native releaseCurrentThreadMemory()V
.end method

.method public static restartAppIfNecessary(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/codedisaster/steamworks/SteamException;
        }
    .end annotation

    sget-boolean v0, Lcom/codedisaster/steamworks/SteamAPI;->isNativeAPILoaded:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/codedisaster/steamworks/SteamAPI;->nativeRestartAppIfNecessary(I)Z

    move-result p0

    return p0

    :cond_0
    new-instance p0, Lcom/codedisaster/steamworks/SteamException;

    const-string v0, "Native libraries not loaded.\nEnsure to call SteamAPI.loadLibraries() first!"

    invoke-direct {p0, v0}, Lcom/codedisaster/steamworks/SteamException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static native runCallbacks()V
.end method

.method public static shutdown()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/codedisaster/steamworks/SteamAPI;->isRunning:Z

    invoke-static {}, Lcom/codedisaster/steamworks/SteamAPI;->nativeShutdown()V

    return-void
.end method

.method public static skipLoadLibraries()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/codedisaster/steamworks/SteamAPI;->isNativeAPILoaded:Z

    return-void
.end method
