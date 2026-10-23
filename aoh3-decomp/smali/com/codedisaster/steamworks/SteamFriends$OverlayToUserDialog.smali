.class public final enum Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;
.super Ljava/lang/Enum;
.source "SteamFriends.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codedisaster/steamworks/SteamFriends;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OverlayToUserDialog"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;

.field public static final enum Achievements:Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;

.field public static final enum Chat:Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;

.field public static final enum FriendAdd:Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;

.field public static final enum FriendRemove:Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;

.field public static final enum FriendRequestAccept:Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;

.field public static final enum FriendRequestIgnore:Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;

.field public static final enum JoinTrade:Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;

.field public static final enum Stats:Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;

.field public static final enum SteamID:Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;


# instance fields
.field private final id:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;

    const/4 v1, 0x0

    const-string v2, "steamid"

    const-string v3, "SteamID"

    invoke-direct {v0, v3, v1, v2}, Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;->SteamID:Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;

    new-instance v1, Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;

    const/4 v2, 0x1

    const-string v3, "chat"

    const-string v4, "Chat"

    invoke-direct {v1, v4, v2, v3}, Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;->Chat:Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;

    new-instance v2, Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;

    const/4 v3, 0x2

    const-string v4, "jointrade"

    const-string v5, "JoinTrade"

    invoke-direct {v2, v5, v3, v4}, Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;->JoinTrade:Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;

    new-instance v3, Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;

    const/4 v4, 0x3

    const-string v5, "stats"

    const-string v6, "Stats"

    invoke-direct {v3, v6, v4, v5}, Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;->Stats:Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;

    new-instance v4, Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;

    const/4 v5, 0x4

    const/4 v6, 0x0

    sget-object v6, Lcom/badlogic/gdx/utils/compression/spWT/QefTqRjwAJmEDy;->tVG:Ljava/lang/String;

    const-string v7, "Achievements"

    invoke-direct {v4, v7, v5, v6}, Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;->Achievements:Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;

    new-instance v5, Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;

    const/4 v6, 0x5

    const-string v7, "friendadd"

    const-string v8, "FriendAdd"

    invoke-direct {v5, v8, v6, v7}, Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;->FriendAdd:Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;

    new-instance v6, Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;

    const/4 v7, 0x6

    const-string v8, "friendremove"

    const-string v9, "FriendRemove"

    invoke-direct {v6, v9, v7, v8}, Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;->FriendRemove:Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;

    new-instance v7, Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;

    const/4 v8, 0x7

    const-string v9, "friendrequestaccept"

    const/4 v10, 0x0

    sget-object v10, Lcom/pairip/licensecheck/CohD/CaiJWNfqszJNZ;->Isxa:Ljava/lang/String;

    invoke-direct {v7, v10, v8, v9}, Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;->FriendRequestAccept:Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;

    new-instance v8, Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;

    const/16 v9, 0x8

    const-string v10, "friendrequestignore"

    const-string v11, "FriendRequestIgnore"

    invoke-direct {v8, v11, v9, v10}, Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;->FriendRequestIgnore:Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;

    filled-new-array/range {v0 .. v8}, [Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;

    move-result-object v0

    sput-object v0, Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;->$VALUES:[Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;->id:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$200(Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;->id:Ljava/lang/String;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;
    .locals 1

    const-class v0, Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;

    return-object p0
.end method

.method public static values()[Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;
    .locals 1

    sget-object v0, Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;->$VALUES:[Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;

    invoke-virtual {v0}, [Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;

    return-object v0
.end method
