.class public final enum Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionError;
.super Ljava/lang/Enum;
.source "SteamNetworking.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codedisaster/steamworks/SteamNetworking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "P2PSessionError"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionError;

.field public static final enum DestinationNotLoggedIn:Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionError;

.field public static final enum NoRightsToApp:Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionError;

.field public static final enum None:Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionError;

.field public static final enum NotRunningApp:Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionError;

.field public static final enum Timeout:Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionError;

.field private static final values:[Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionError;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionError;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionError;->None:Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionError;

    new-instance v1, Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionError;

    const-string v2, "NotRunningApp"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionError;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionError;->NotRunningApp:Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionError;

    new-instance v2, Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionError;

    const-string v3, "NoRightsToApp"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionError;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionError;->NoRightsToApp:Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionError;

    new-instance v3, Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionError;

    const-string v4, "DestinationNotLoggedIn"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionError;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionError;->DestinationNotLoggedIn:Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionError;

    new-instance v4, Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionError;

    const-string v5, "Timeout"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionError;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionError;->Timeout:Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionError;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionError;

    move-result-object v0

    sput-object v0, Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionError;->$VALUES:[Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionError;

    invoke-static {}, Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionError;->values()[Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionError;

    move-result-object v0

    sput-object v0, Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionError;->values:[Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static byOrdinal(I)Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionError;
    .locals 1

    sget-object v0, Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionError;->values:[Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionError;

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionError;
    .locals 1

    const-class v0, Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionError;

    return-object p0
.end method

.method public static values()[Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionError;
    .locals 1

    sget-object v0, Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionError;->$VALUES:[Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionError;

    invoke-virtual {v0}, [Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionError;

    return-object v0
.end method
