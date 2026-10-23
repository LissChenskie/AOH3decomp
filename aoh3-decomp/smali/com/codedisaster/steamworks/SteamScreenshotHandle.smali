.class public Lcom/codedisaster/steamworks/SteamScreenshotHandle;
.super Lcom/codedisaster/steamworks/SteamNativeIntHandle;
.source "SteamScreenshotHandle.java"


# static fields
.field public static final INVALID:Lcom/codedisaster/steamworks/SteamScreenshotHandle;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/codedisaster/steamworks/SteamScreenshotHandle;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codedisaster/steamworks/SteamScreenshotHandle;-><init>(I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamScreenshotHandle;->INVALID:Lcom/codedisaster/steamworks/SteamScreenshotHandle;

    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/codedisaster/steamworks/SteamNativeIntHandle;-><init>(I)V

    return-void
.end method
