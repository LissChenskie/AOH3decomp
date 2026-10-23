.class public final enum Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardSortMethod;
.super Ljava/lang/Enum;
.source "SteamUserStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codedisaster/steamworks/SteamUserStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LeaderboardSortMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardSortMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardSortMethod;

.field public static final enum Ascending:Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardSortMethod;

.field public static final enum Descending:Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardSortMethod;

.field public static final enum None:Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardSortMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardSortMethod;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardSortMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardSortMethod;->None:Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardSortMethod;

    new-instance v1, Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardSortMethod;

    const/4 v2, 0x0

    sget-object v2, Lcom/badlogic/gdx/utils/compression/spWT/QefTqRjwAJmEDy;->DcQzVjuXTRTOD:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardSortMethod;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardSortMethod;->Ascending:Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardSortMethod;

    new-instance v2, Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardSortMethod;

    const-string v3, "Descending"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardSortMethod;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardSortMethod;->Descending:Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardSortMethod;

    filled-new-array {v0, v1, v2}, [Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardSortMethod;

    move-result-object v0

    sput-object v0, Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardSortMethod;->$VALUES:[Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardSortMethod;

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

.method public static valueOf(Ljava/lang/String;)Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardSortMethod;
    .locals 1

    const-class v0, Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardSortMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardSortMethod;

    return-object p0
.end method

.method public static values()[Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardSortMethod;
    .locals 1

    sget-object v0, Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardSortMethod;->$VALUES:[Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardSortMethod;

    invoke-virtual {v0}, [Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardSortMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardSortMethod;

    return-object v0
.end method
