.class public final enum Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;
.super Ljava/lang/Enum;
.source "SteamFriends.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codedisaster/steamworks/SteamFriends;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FriendRelationship"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;

.field public static final enum Blocked:Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;

.field public static final enum Friend:Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;

.field public static final enum Ignored:Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;

.field public static final enum IgnoredFriend:Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;

.field public static final enum Max:Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;

.field public static final enum None:Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;

.field public static final enum Recipient:Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;

.field public static final enum RequestInitiator:Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;

.field public static final enum Suggested_DEPRECATED:Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;

.field private static final values:[Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;->None:Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;

    new-instance v1, Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;

    const-string v2, "Blocked"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;->Blocked:Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;

    new-instance v2, Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;

    const-string v3, "Recipient"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;->Recipient:Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;

    new-instance v3, Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;

    const-string v4, "Friend"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;->Friend:Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;

    new-instance v4, Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;

    const-string v5, "RequestInitiator"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;->RequestInitiator:Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;

    new-instance v5, Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;

    const-string v6, "Ignored"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;->Ignored:Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;

    new-instance v6, Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;

    const-string v7, "IgnoredFriend"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;->IgnoredFriend:Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;

    new-instance v7, Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;

    const-string v8, "Suggested_DEPRECATED"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;->Suggested_DEPRECATED:Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;

    new-instance v8, Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;

    const-string v9, "Max"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;->Max:Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;

    filled-new-array/range {v0 .. v8}, [Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;

    move-result-object v0

    sput-object v0, Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;->$VALUES:[Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;

    invoke-static {}, Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;->values()[Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;

    move-result-object v0

    sput-object v0, Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;->values:[Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;

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

.method static byOrdinal(I)Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;
    .locals 1

    sget-object v0, Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;->values:[Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;
    .locals 1

    const-class v0, Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;

    return-object p0
.end method

.method public static values()[Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;
    .locals 1

    sget-object v0, Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;->$VALUES:[Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;

    invoke-virtual {v0}, [Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;

    return-object v0
.end method
