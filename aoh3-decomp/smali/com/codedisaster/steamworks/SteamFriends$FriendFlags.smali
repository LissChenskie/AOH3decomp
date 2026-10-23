.class public final enum Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;
.super Ljava/lang/Enum;
.source "SteamFriends.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codedisaster/steamworks/SteamFriends;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FriendFlags"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;

.field public static final enum All:Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;

.field public static final enum Blocked:Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;

.field public static final enum ChatMember:Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;

.field public static final enum ClanMember:Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;

.field public static final enum FriendshipRequested:Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;

.field public static final enum Ignored:Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;

.field public static final enum IgnoredFriend:Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;

.field public static final enum Immediate:Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;

.field public static final enum None:Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;

.field public static final enum OnGameServer:Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;

.field public static final enum RequestingFriendship:Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;

.field public static final enum RequestingInfo:Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;


# instance fields
.field private final bits:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v0, Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;

    const/4 v1, 0x0

    sget-object v1, Laoc/kingdoms/lukasz/menusScenarioEditor/YGiX/gpVDKipRURuzw;->VNVsTtDMk:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;->None:Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;

    new-instance v1, Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;

    const-string v2, "Blocked"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;->Blocked:Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;

    new-instance v2, Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;

    const-string v3, "FriendshipRequested"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;->FriendshipRequested:Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;

    new-instance v3, Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;

    const-string v4, "Immediate"

    const/4 v5, 0x3

    const/4 v6, 0x4

    invoke-direct {v3, v4, v5, v6}, Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;->Immediate:Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;

    new-instance v4, Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;

    const-string v5, "ClanMember"

    const/16 v7, 0x8

    invoke-direct {v4, v5, v6, v7}, Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;->ClanMember:Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;

    new-instance v5, Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;

    const/4 v6, 0x5

    const/16 v8, 0x10

    const-string v9, "OnGameServer"

    invoke-direct {v5, v9, v6, v8}, Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;->OnGameServer:Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;

    new-instance v6, Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;

    const/4 v8, 0x6

    const/16 v9, 0x80

    const-string v10, "RequestingFriendship"

    invoke-direct {v6, v10, v8, v9}, Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;->RequestingFriendship:Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;

    new-instance v8, Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;

    const/4 v9, 0x7

    const/16 v10, 0x100

    const-string v11, "RequestingInfo"

    invoke-direct {v8, v11, v9, v10}, Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;->RequestingInfo:Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;

    new-instance v9, Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;

    const-string v10, "Ignored"

    const/16 v11, 0x200

    invoke-direct {v9, v10, v7, v11}, Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;->Ignored:Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;

    new-instance v10, Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;

    const/16 v7, 0x9

    const/16 v11, 0x400

    const-string v12, "IgnoredFriend"

    invoke-direct {v10, v12, v7, v11}, Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;->IgnoredFriend:Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;

    new-instance v11, Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;

    const/16 v7, 0xa

    const/16 v12, 0x1000

    const-string v13, "ChatMember"

    invoke-direct {v11, v13, v7, v12}, Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;->ChatMember:Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;

    new-instance v12, Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;

    const/16 v7, 0xb

    const v13, 0xffff

    const-string v14, "All"

    invoke-direct {v12, v14, v7, v13}, Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;->All:Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    filled-new-array/range {v0 .. v11}, [Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;

    move-result-object v0

    sput-object v0, Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;->$VALUES:[Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;->bits:I

    return-void
.end method

.method static synthetic access$000(Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;)I
    .locals 0

    iget p0, p0, Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;->bits:I

    return p0
.end method

.method static asBits(Ljava/util/Collection;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;",
            ">;)I"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;

    iget v1, v1, Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;->bits:I

    or-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;
    .locals 1

    const-class v0, Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;

    return-object p0
.end method

.method public static values()[Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;
    .locals 1

    sget-object v0, Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;->$VALUES:[Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;

    invoke-virtual {v0}, [Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;

    return-object v0
.end method
