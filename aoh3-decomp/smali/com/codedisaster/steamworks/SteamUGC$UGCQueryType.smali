.class public final enum Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;
.super Ljava/lang/Enum;
.source "SteamUGC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codedisaster/steamworks/SteamUGC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UGCQueryType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

.field public static final enum AcceptedForGameRankedByAcceptanceDate:Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

.field public static final enum CreatedByFollowedUsersRankedByPublicationDate:Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

.field public static final enum CreatedByFriendsRankedByPublicationDate:Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

.field public static final enum FavoritedByFriendsRankedByPublicationDate:Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

.field public static final enum NotYetRated:Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

.field public static final enum RankedByAveragePlaytimeTrend:Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

.field public static final enum RankedByLifetimeAveragePlaytime:Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

.field public static final enum RankedByLifetimePlaytimeSessions:Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

.field public static final enum RankedByNumTimesReported:Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

.field public static final enum RankedByPlaytimeSessionsTrend:Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

.field public static final enum RankedByPlaytimeTrend:Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

.field public static final enum RankedByPublicationDate:Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

.field public static final enum RankedByTextSearch:Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

.field public static final enum RankedByTotalPlaytime:Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

.field public static final enum RankedByTotalUniqueSubscriptions:Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

.field public static final enum RankedByTotalVotesAsc:Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

.field public static final enum RankedByTrend:Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

.field public static final enum RankedByVote:Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

.field public static final enum RankedByVotesUp:Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;


# direct methods
.method static constructor <clinit>()V
    .locals 22

    new-instance v1, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

    move-object v0, v1

    const-string v2, "RankedByVote"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;->RankedByVote:Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

    new-instance v2, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

    move-object v1, v2

    const-string v3, "RankedByPublicationDate"

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;->RankedByPublicationDate:Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

    new-instance v3, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

    move-object v2, v3

    const-string v4, "AcceptedForGameRankedByAcceptanceDate"

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5}, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;->AcceptedForGameRankedByAcceptanceDate:Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

    new-instance v4, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

    move-object v3, v4

    const-string v5, "RankedByTrend"

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6}, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;->RankedByTrend:Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

    new-instance v5, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

    move-object v4, v5

    const-string v6, "FavoritedByFriendsRankedByPublicationDate"

    const/4 v7, 0x4

    invoke-direct {v5, v6, v7}, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;->FavoritedByFriendsRankedByPublicationDate:Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

    new-instance v6, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

    move-object v5, v6

    const-string v7, "CreatedByFriendsRankedByPublicationDate"

    const/4 v8, 0x5

    invoke-direct {v6, v7, v8}, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;->CreatedByFriendsRankedByPublicationDate:Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

    new-instance v7, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

    move-object v6, v7

    const-string v8, "RankedByNumTimesReported"

    const/4 v9, 0x6

    invoke-direct {v7, v8, v9}, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;->RankedByNumTimesReported:Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

    new-instance v8, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

    move-object v7, v8

    const-string v9, "CreatedByFollowedUsersRankedByPublicationDate"

    const/4 v10, 0x7

    invoke-direct {v8, v9, v10}, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;->CreatedByFollowedUsersRankedByPublicationDate:Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

    new-instance v9, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

    move-object v8, v9

    const-string v10, "NotYetRated"

    const/16 v11, 0x8

    invoke-direct {v9, v10, v11}, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;->NotYetRated:Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

    new-instance v10, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

    move-object v9, v10

    const-string v11, "RankedByTotalVotesAsc"

    const/16 v12, 0x9

    invoke-direct {v10, v11, v12}, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;->RankedByTotalVotesAsc:Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

    new-instance v11, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

    move-object v10, v11

    const-string v12, "RankedByVotesUp"

    const/16 v13, 0xa

    invoke-direct {v11, v12, v13}, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;->RankedByVotesUp:Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

    new-instance v12, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

    move-object v11, v12

    const-string v13, "RankedByTextSearch"

    const/16 v14, 0xb

    invoke-direct {v12, v13, v14}, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;->RankedByTextSearch:Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

    new-instance v13, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

    move-object v12, v13

    const-string v14, "RankedByTotalUniqueSubscriptions"

    const/16 v15, 0xc

    invoke-direct {v13, v14, v15}, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;->RankedByTotalUniqueSubscriptions:Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

    new-instance v14, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

    move-object v13, v14

    const-string v15, "RankedByPlaytimeTrend"

    move-object/from16 v19, v0

    const/16 v0, 0xd

    invoke-direct {v14, v15, v0}, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;->RankedByPlaytimeTrend:Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

    new-instance v0, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

    move-object v14, v0

    const-string v15, "RankedByTotalPlaytime"

    move-object/from16 v20, v1

    const/16 v1, 0xe

    invoke-direct {v0, v15, v1}, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;->RankedByTotalPlaytime:Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

    new-instance v0, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

    move-object v15, v0

    const-string v1, "RankedByAveragePlaytimeTrend"

    move-object/from16 v21, v2

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;->RankedByAveragePlaytimeTrend:Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

    new-instance v0, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

    move-object/from16 v16, v0

    const-string v1, "RankedByLifetimeAveragePlaytime"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;->RankedByLifetimeAveragePlaytime:Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

    new-instance v0, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

    move-object/from16 v17, v0

    const-string v1, "RankedByPlaytimeSessionsTrend"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;->RankedByPlaytimeSessionsTrend:Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

    new-instance v0, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

    move-object/from16 v18, v0

    const-string v1, "RankedByLifetimePlaytimeSessions"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;->RankedByLifetimePlaytimeSessions:Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    filled-new-array/range {v0 .. v18}, [Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

    move-result-object v0

    sput-object v0, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;->$VALUES:[Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;
    .locals 1

    const-class v0, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

    return-object p0
.end method

.method public static values()[Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;
    .locals 1

    sget-object v0, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;->$VALUES:[Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

    invoke-virtual {v0}, [Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;

    return-object v0
.end method
