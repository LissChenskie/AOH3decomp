.class public final enum Lcom/codedisaster/steamworks/SteamFriends$OverlayToStoreFlag;
.super Ljava/lang/Enum;
.source "SteamFriends.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codedisaster/steamworks/SteamFriends;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OverlayToStoreFlag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/codedisaster/steamworks/SteamFriends$OverlayToStoreFlag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/codedisaster/steamworks/SteamFriends$OverlayToStoreFlag;

.field public static final enum AddToCart:Lcom/codedisaster/steamworks/SteamFriends$OverlayToStoreFlag;

.field public static final enum AddToCartAndShow:Lcom/codedisaster/steamworks/SteamFriends$OverlayToStoreFlag;

.field public static final enum None:Lcom/codedisaster/steamworks/SteamFriends$OverlayToStoreFlag;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/codedisaster/steamworks/SteamFriends$OverlayToStoreFlag;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamFriends$OverlayToStoreFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamFriends$OverlayToStoreFlag;->None:Lcom/codedisaster/steamworks/SteamFriends$OverlayToStoreFlag;

    new-instance v1, Lcom/codedisaster/steamworks/SteamFriends$OverlayToStoreFlag;

    const-string v2, "AddToCart"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/codedisaster/steamworks/SteamFriends$OverlayToStoreFlag;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/codedisaster/steamworks/SteamFriends$OverlayToStoreFlag;->AddToCart:Lcom/codedisaster/steamworks/SteamFriends$OverlayToStoreFlag;

    new-instance v2, Lcom/codedisaster/steamworks/SteamFriends$OverlayToStoreFlag;

    const-string v3, "AddToCartAndShow"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/codedisaster/steamworks/SteamFriends$OverlayToStoreFlag;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/codedisaster/steamworks/SteamFriends$OverlayToStoreFlag;->AddToCartAndShow:Lcom/codedisaster/steamworks/SteamFriends$OverlayToStoreFlag;

    filled-new-array {v0, v1, v2}, [Lcom/codedisaster/steamworks/SteamFriends$OverlayToStoreFlag;

    move-result-object v0

    sput-object v0, Lcom/codedisaster/steamworks/SteamFriends$OverlayToStoreFlag;->$VALUES:[Lcom/codedisaster/steamworks/SteamFriends$OverlayToStoreFlag;

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

.method public static valueOf(Ljava/lang/String;)Lcom/codedisaster/steamworks/SteamFriends$OverlayToStoreFlag;
    .locals 1

    const-class v0, Lcom/codedisaster/steamworks/SteamFriends$OverlayToStoreFlag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/codedisaster/steamworks/SteamFriends$OverlayToStoreFlag;

    return-object p0
.end method

.method public static values()[Lcom/codedisaster/steamworks/SteamFriends$OverlayToStoreFlag;
    .locals 1

    sget-object v0, Lcom/codedisaster/steamworks/SteamFriends$OverlayToStoreFlag;->$VALUES:[Lcom/codedisaster/steamworks/SteamFriends$OverlayToStoreFlag;

    invoke-virtual {v0}, [Lcom/codedisaster/steamworks/SteamFriends$OverlayToStoreFlag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/codedisaster/steamworks/SteamFriends$OverlayToStoreFlag;

    return-object v0
.end method
