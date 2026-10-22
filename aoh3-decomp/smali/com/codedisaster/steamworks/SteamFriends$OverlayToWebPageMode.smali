.class public final enum Lcom/codedisaster/steamworks/SteamFriends$OverlayToWebPageMode;
.super Ljava/lang/Enum;
.source "SteamFriends.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codedisaster/steamworks/SteamFriends;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OverlayToWebPageMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/codedisaster/steamworks/SteamFriends$OverlayToWebPageMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/codedisaster/steamworks/SteamFriends$OverlayToWebPageMode;

.field public static final enum Default:Lcom/codedisaster/steamworks/SteamFriends$OverlayToWebPageMode;

.field public static final enum Modal:Lcom/codedisaster/steamworks/SteamFriends$OverlayToWebPageMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/codedisaster/steamworks/SteamFriends$OverlayToWebPageMode;

    const-string v1, "Default"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamFriends$OverlayToWebPageMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamFriends$OverlayToWebPageMode;->Default:Lcom/codedisaster/steamworks/SteamFriends$OverlayToWebPageMode;

    new-instance v1, Lcom/codedisaster/steamworks/SteamFriends$OverlayToWebPageMode;

    const-string v2, "Modal"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/codedisaster/steamworks/SteamFriends$OverlayToWebPageMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/codedisaster/steamworks/SteamFriends$OverlayToWebPageMode;->Modal:Lcom/codedisaster/steamworks/SteamFriends$OverlayToWebPageMode;

    filled-new-array {v0, v1}, [Lcom/codedisaster/steamworks/SteamFriends$OverlayToWebPageMode;

    move-result-object v0

    sput-object v0, Lcom/codedisaster/steamworks/SteamFriends$OverlayToWebPageMode;->$VALUES:[Lcom/codedisaster/steamworks/SteamFriends$OverlayToWebPageMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/codedisaster/steamworks/SteamFriends$OverlayToWebPageMode;
    .locals 1

    const-class v0, Lcom/codedisaster/steamworks/SteamFriends$OverlayToWebPageMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/codedisaster/steamworks/SteamFriends$OverlayToWebPageMode;

    return-object p0
.end method

.method public static values()[Lcom/codedisaster/steamworks/SteamFriends$OverlayToWebPageMode;
    .locals 1

    sget-object v0, Lcom/codedisaster/steamworks/SteamFriends$OverlayToWebPageMode;->$VALUES:[Lcom/codedisaster/steamworks/SteamFriends$OverlayToWebPageMode;

    invoke-virtual {v0}, [Lcom/codedisaster/steamworks/SteamFriends$OverlayToWebPageMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/codedisaster/steamworks/SteamFriends$OverlayToWebPageMode;

    return-object v0
.end method
