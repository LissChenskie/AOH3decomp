.class public Lcom/codedisaster/steamworks/SteamID;
.super Lcom/codedisaster/steamworks/SteamNativeHandle;
.source "SteamID.java"


# static fields
.field private static final InvalidSteamID:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/codedisaster/steamworks/SteamID;->getInvalidSteamID()J

    move-result-wide v0

    sput-wide v0, Lcom/codedisaster/steamworks/SteamID;->InvalidSteamID:J

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    sget-wide v0, Lcom/codedisaster/steamworks/SteamID;->InvalidSteamID:J

    invoke-direct {p0, v0, v1}, Lcom/codedisaster/steamworks/SteamNativeHandle;-><init>(J)V

    return-void
.end method

.method constructor <init>(J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/codedisaster/steamworks/SteamNativeHandle;-><init>(J)V

    return-void
.end method

.method public constructor <init>(Lcom/codedisaster/steamworks/SteamID;)V
    .locals 2

    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamID;->handle:J

    invoke-direct {p0, v0, v1}, Lcom/codedisaster/steamworks/SteamNativeHandle;-><init>(J)V

    return-void
.end method

.method public static createFromNativeHandle(J)Lcom/codedisaster/steamworks/SteamID;
    .locals 1

    new-instance v0, Lcom/codedisaster/steamworks/SteamID;

    invoke-direct {v0, p0, p1}, Lcom/codedisaster/steamworks/SteamID;-><init>(J)V

    return-object v0
.end method

.method private static native getInvalidSteamID()J
.end method

.method private static native isValid(J)Z
.end method


# virtual methods
.method public getAccountID()I
    .locals 4

    iget-wide v0, p0, Lcom/codedisaster/steamworks/SteamID;->handle:J

    const-wide v2, 0x100000000L

    rem-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public isValid()Z
    .locals 2

    iget-wide v0, p0, Lcom/codedisaster/steamworks/SteamID;->handle:J

    invoke-static {v0, v1}, Lcom/codedisaster/steamworks/SteamID;->isValid(J)Z

    move-result v0

    return v0
.end method
