.class public Lcom/codedisaster/steamworks/SteamServerQuery;
.super Lcom/codedisaster/steamworks/SteamNativeIntHandle;
.source "SteamServerQuery.java"


# static fields
.field public static final INVALID:Lcom/codedisaster/steamworks/SteamServerQuery;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/codedisaster/steamworks/SteamServerQuery;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/codedisaster/steamworks/SteamServerQuery;-><init>(I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamServerQuery;->INVALID:Lcom/codedisaster/steamworks/SteamServerQuery;

    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/codedisaster/steamworks/SteamNativeIntHandle;-><init>(I)V

    return-void
.end method
