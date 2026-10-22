.class public final enum Lcom/codedisaster/steamworks/SteamMatchmaking$ChatMemberStateChange;
.super Ljava/lang/Enum;
.source "SteamMatchmaking.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codedisaster/steamworks/SteamMatchmaking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ChatMemberStateChange"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/codedisaster/steamworks/SteamMatchmaking$ChatMemberStateChange;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/codedisaster/steamworks/SteamMatchmaking$ChatMemberStateChange;

.field public static final enum Banned:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatMemberStateChange;

.field public static final enum Disconnected:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatMemberStateChange;

.field public static final enum Entered:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatMemberStateChange;

.field public static final enum Kicked:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatMemberStateChange;

.field public static final enum Left:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatMemberStateChange;


# instance fields
.field private final bits:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatMemberStateChange;

    const-string v1, "Entered"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatMemberStateChange;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatMemberStateChange;->Entered:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatMemberStateChange;

    new-instance v1, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatMemberStateChange;

    const/4 v2, 0x0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/FBO/idYW/HjHDSSkYG;->RqOa:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatMemberStateChange;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatMemberStateChange;->Left:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatMemberStateChange;

    new-instance v2, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatMemberStateChange;

    const-string v3, "Disconnected"

    const/4 v5, 0x4

    invoke-direct {v2, v3, v4, v5}, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatMemberStateChange;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatMemberStateChange;->Disconnected:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatMemberStateChange;

    new-instance v3, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatMemberStateChange;

    const/4 v4, 0x3

    const/16 v6, 0x8

    const-string v7, "Kicked"

    invoke-direct {v3, v7, v4, v6}, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatMemberStateChange;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatMemberStateChange;->Kicked:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatMemberStateChange;

    new-instance v4, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatMemberStateChange;

    const-string v6, "Banned"

    const/16 v7, 0x10

    invoke-direct {v4, v6, v5, v7}, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatMemberStateChange;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatMemberStateChange;->Banned:Lcom/codedisaster/steamworks/SteamMatchmaking$ChatMemberStateChange;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/codedisaster/steamworks/SteamMatchmaking$ChatMemberStateChange;

    move-result-object v0

    sput-object v0, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatMemberStateChange;->$VALUES:[Lcom/codedisaster/steamworks/SteamMatchmaking$ChatMemberStateChange;

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

    iput p3, p0, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatMemberStateChange;->bits:I

    return-void
.end method

.method static isSet(Lcom/codedisaster/steamworks/SteamMatchmaking$ChatMemberStateChange;I)Z
    .locals 0

    iget p0, p0, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatMemberStateChange;->bits:I

    and-int/2addr p1, p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/codedisaster/steamworks/SteamMatchmaking$ChatMemberStateChange;
    .locals 1

    const-class v0, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatMemberStateChange;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatMemberStateChange;

    return-object p0
.end method

.method public static values()[Lcom/codedisaster/steamworks/SteamMatchmaking$ChatMemberStateChange;
    .locals 1

    sget-object v0, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatMemberStateChange;->$VALUES:[Lcom/codedisaster/steamworks/SteamMatchmaking$ChatMemberStateChange;

    invoke-virtual {v0}, [Lcom/codedisaster/steamworks/SteamMatchmaking$ChatMemberStateChange;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/codedisaster/steamworks/SteamMatchmaking$ChatMemberStateChange;

    return-object v0
.end method
