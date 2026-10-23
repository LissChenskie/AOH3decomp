.class public final enum Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;
.super Ljava/lang/Enum;
.source "SteamMatchmaking.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codedisaster/steamworks/SteamMatchmaking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ChatRoomEnterResponse"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;

.field public static final enum Banned:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;

.field public static final enum ClanDisabled:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;

.field public static final enum CommunityBan:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;

.field public static final enum DoesntExist:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;

.field public static final enum Error:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;

.field public static final enum Full:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;

.field public static final enum Limited:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;

.field public static final enum MemberBlockedYou:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;

.field public static final enum NotAllowed:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;

.field public static final enum RatelimitExceeded:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;

.field public static final enum Success:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;

.field public static final enum YouBlockedMember:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;

.field private static final values:[Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;


# instance fields
.field private final code:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v0, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;

    const-string v1, "Success"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;->Success:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;

    new-instance v1, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;

    const/4 v2, 0x0

    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/model/ia/uNBYrZVGzy;->icmmfwmNgdzQe:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;->DoesntExist:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;

    new-instance v2, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;

    const-string v3, "NotAllowed"

    const/4 v5, 0x3

    invoke-direct {v2, v3, v4, v5}, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;->NotAllowed:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;

    new-instance v3, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;

    const-string v4, "Full"

    const/4 v6, 0x4

    invoke-direct {v3, v4, v5, v6}, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;->Full:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;

    new-instance v4, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;

    const-string v5, "Error"

    const/4 v7, 0x5

    invoke-direct {v4, v5, v6, v7}, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;->Error:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;

    new-instance v5, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;

    const-string v6, "Banned"

    const/4 v8, 0x6

    invoke-direct {v5, v6, v7, v8}, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;->Banned:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;

    new-instance v6, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;

    const-string v7, "Limited"

    const/4 v9, 0x7

    invoke-direct {v6, v7, v8, v9}, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;->Limited:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;

    new-instance v7, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;

    const-string v8, "ClanDisabled"

    const/16 v10, 0x8

    invoke-direct {v7, v8, v9, v10}, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;->ClanDisabled:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;

    new-instance v8, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;

    const/4 v9, 0x0

    sget-object v9, Laoc/kingdoms/lukasz/menu/FQy/TGqtTWl;->fKdruaafwG:Ljava/lang/String;

    const/16 v11, 0x9

    invoke-direct {v8, v9, v10, v11}, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;->CommunityBan:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;

    new-instance v9, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;

    const-string v10, "MemberBlockedYou"

    const/16 v12, 0xa

    invoke-direct {v9, v10, v11, v12}, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;->MemberBlockedYou:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;

    new-instance v10, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;

    const-string v11, "YouBlockedMember"

    const/16 v13, 0xb

    invoke-direct {v10, v11, v12, v13}, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;->YouBlockedMember:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;

    new-instance v11, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;

    const-string v12, "RatelimitExceeded"

    const/16 v14, 0xf

    invoke-direct {v11, v12, v13, v14}, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;->RatelimitExceeded:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;

    filled-new-array/range {v0 .. v11}, [Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;

    move-result-object v0

    sput-object v0, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;->$VALUES:[Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;

    invoke-static {}, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;->values()[Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;

    move-result-object v0

    sput-object v0, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;->values:[Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;

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

    iput p3, p0, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;->code:I

    return-void
.end method

.method static byValue(I)Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;
    .locals 5

    sget-object v0, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;->values:[Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;->code:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;->Error:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;
    .locals 1

    const-class v0, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;

    return-object p0
.end method

.method public static values()[Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;
    .locals 1

    sget-object v0, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;->$VALUES:[Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;

    invoke-virtual {v0}, [Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;

    return-object v0
.end method
