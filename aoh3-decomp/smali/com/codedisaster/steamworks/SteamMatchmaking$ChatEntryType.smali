.class public final enum Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;
.super Ljava/lang/Enum;
.source "SteamMatchmaking.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codedisaster/steamworks/SteamMatchmaking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ChatEntryType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

.field public static final enum ChatMsg:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

.field public static final enum Disconnected:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

.field public static final enum Emote:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

.field public static final enum Entered:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

.field public static final enum HistoricalChat:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

.field public static final enum Invalid:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

.field public static final enum InviteGame:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

.field public static final enum LeftConversation:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

.field public static final enum LinkBlocked:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

.field public static final enum Reserved1:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

.field public static final enum Reserved2:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

.field public static final enum Typing:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

.field public static final enum WasBanned:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

.field public static final enum WasKicked:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

.field private static final values:[Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;


# instance fields
.field private final code:I


# direct methods
.method static constructor <clinit>()V
    .locals 17

    new-instance v0, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

    const-string v1, "Invalid"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;->Invalid:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

    new-instance v1, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

    const-string v2, "ChatMsg"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;->ChatMsg:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

    new-instance v2, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

    const-string v3, "Typing"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;->Typing:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

    new-instance v3, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

    const-string v4, "InviteGame"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;->InviteGame:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

    new-instance v4, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

    const/4 v5, 0x0

    sget-object v5, Laoc/kingdoms/lukasz/menusInGame/DrawOver/SQ/XjthpFh;->kRd:Ljava/lang/String;

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;->Emote:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

    new-instance v5, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

    const-string v6, "LeftConversation"

    const/4 v7, 0x5

    const/4 v8, 0x6

    invoke-direct {v5, v6, v7, v8}, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;->LeftConversation:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

    new-instance v6, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

    const-string v7, "Entered"

    const/4 v9, 0x7

    invoke-direct {v6, v7, v8, v9}, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;->Entered:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

    new-instance v7, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

    const-string v8, "WasKicked"

    const/16 v10, 0x8

    invoke-direct {v7, v8, v9, v10}, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;->WasKicked:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

    new-instance v8, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

    const-string v9, "WasBanned"

    const/16 v11, 0x9

    invoke-direct {v8, v9, v10, v11}, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;->WasBanned:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

    new-instance v9, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

    const-string v10, "Disconnected"

    const/16 v12, 0xa

    invoke-direct {v9, v10, v11, v12}, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;->Disconnected:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

    new-instance v10, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

    const-string v11, "HistoricalChat"

    const/16 v13, 0xb

    invoke-direct {v10, v11, v12, v13}, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;->HistoricalChat:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

    new-instance v11, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

    const-string v12, "Reserved1"

    const/16 v14, 0xc

    invoke-direct {v11, v12, v13, v14}, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;->Reserved1:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

    new-instance v12, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

    const-string v13, "Reserved2"

    const/16 v15, 0xd

    invoke-direct {v12, v13, v14, v15}, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;->Reserved2:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

    new-instance v13, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

    const-string v14, "LinkBlocked"

    move-object/from16 v16, v12

    const/16 v12, 0xe

    invoke-direct {v13, v14, v15, v12}, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;->LinkBlocked:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

    move-object/from16 v12, v16

    filled-new-array/range {v0 .. v13}, [Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

    move-result-object v0

    sput-object v0, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;->$VALUES:[Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

    invoke-static {}, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;->values()[Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

    move-result-object v0

    sput-object v0, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;->values:[Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

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

    iput p3, p0, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;->code:I

    return-void
.end method

.method static byValue(I)Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;
    .locals 5

    sget-object v0, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;->values:[Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;->code:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;->Invalid:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;
    .locals 1

    const-class v0, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

    return-object p0
.end method

.method public static values()[Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;
    .locals 1

    sget-object v0, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;->$VALUES:[Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

    invoke-virtual {v0}, [Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

    return-object v0
.end method
