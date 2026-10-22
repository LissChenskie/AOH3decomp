.class public final enum Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;
.super Ljava/lang/Enum;
.source "SteamFriends.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codedisaster/steamworks/SteamFriends;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PersonaChange"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

.field public static final enum Avatar:Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

.field public static final enum Broadcast:Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

.field public static final enum ComeOnline:Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

.field public static final enum GamePlayed:Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

.field public static final enum GameServer:Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

.field public static final enum GoneOffline:Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

.field public static final enum JoinedSource:Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

.field public static final enum LeftSource:Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

.field public static final enum Name:Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

.field public static final enum NameFirstSet:Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

.field public static final enum Nickname:Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

.field public static final enum RelationshipChanged:Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

.field public static final enum RichPresence:Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

.field public static final enum Status:Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

.field public static final enum SteamLevel:Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;


# instance fields
.field private final bits:I


# direct methods
.method static constructor <clinit>()V
    .locals 18

    new-instance v0, Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

    const/4 v1, 0x0

    sget-object v1, Laoc/kingdoms/lukasz/menusInGame/DrawOver/SQ/XjthpFh;->odeBVDnq:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;->Name:Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

    new-instance v1, Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

    const/4 v2, 0x0

    sget-object v2, Laoc/kingdoms/lukasz/menusEditor/RJR/ATsAGKCnv;->xjavxgDQYfjJX:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;->Status:Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

    new-instance v2, Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

    const-string v3, "ComeOnline"

    const/4 v5, 0x4

    invoke-direct {v2, v3, v4, v5}, Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;->ComeOnline:Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

    new-instance v3, Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

    const-string v4, "GoneOffline"

    const/4 v6, 0x3

    const/16 v7, 0x8

    invoke-direct {v3, v4, v6, v7}, Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;->GoneOffline:Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

    new-instance v4, Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

    const-string v6, "GamePlayed"

    const/16 v8, 0x10

    invoke-direct {v4, v6, v5, v8}, Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;->GamePlayed:Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

    new-instance v5, Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

    const/4 v6, 0x5

    const/16 v8, 0x20

    const-string v9, "GameServer"

    invoke-direct {v5, v9, v6, v8}, Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;->GameServer:Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

    new-instance v6, Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

    const/4 v8, 0x6

    const/16 v9, 0x40

    const-string v10, "Avatar"

    invoke-direct {v6, v10, v8, v9}, Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;->Avatar:Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

    new-instance v8, Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

    const/4 v9, 0x7

    const/16 v10, 0x80

    const-string v11, "JoinedSource"

    invoke-direct {v8, v11, v9, v10}, Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;->JoinedSource:Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

    new-instance v9, Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

    const-string v10, "LeftSource"

    const/16 v11, 0x100

    invoke-direct {v9, v10, v7, v11}, Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;->LeftSource:Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

    new-instance v10, Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

    const/16 v7, 0x9

    const/16 v11, 0x200

    const-string v12, "RelationshipChanged"

    invoke-direct {v10, v12, v7, v11}, Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;->RelationshipChanged:Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

    new-instance v11, Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

    const/16 v7, 0xa

    const/16 v12, 0x400

    const-string v13, "NameFirstSet"

    invoke-direct {v11, v13, v7, v12}, Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;->NameFirstSet:Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

    new-instance v12, Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

    const/16 v7, 0xb

    const/16 v13, 0x800

    const-string v14, "Broadcast"

    invoke-direct {v12, v14, v7, v13}, Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;->Broadcast:Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

    new-instance v13, Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

    const/16 v7, 0xc

    const/16 v14, 0x1000

    const-string v15, "Nickname"

    invoke-direct {v13, v15, v7, v14}, Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;->Nickname:Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

    new-instance v14, Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

    const/16 v7, 0xd

    const/16 v15, 0x2000

    move-object/from16 v16, v13

    const-string v13, "SteamLevel"

    invoke-direct {v14, v13, v7, v15}, Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;->SteamLevel:Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

    new-instance v15, Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

    const/16 v7, 0xe

    const/16 v13, 0x4000

    move-object/from16 v17, v14

    const-string v14, "RichPresence"

    invoke-direct {v15, v14, v7, v13}, Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;->RichPresence:Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v17

    move-object v14, v15

    filled-new-array/range {v0 .. v14}, [Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

    move-result-object v0

    sput-object v0, Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;->$VALUES:[Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

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

    iput p3, p0, Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;->bits:I

    return-void
.end method

.method static isSet(Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;I)Z
    .locals 0

    iget p0, p0, Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;->bits:I

    and-int/2addr p1, p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;
    .locals 1

    const-class v0, Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

    return-object p0
.end method

.method public static values()[Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;
    .locals 1

    sget-object v0, Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;->$VALUES:[Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

    invoke-virtual {v0}, [Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

    return-object v0
.end method
