.class public final enum Lcom/codedisaster/steamworks/SteamUGC$ItemStatistic;
.super Ljava/lang/Enum;
.source "SteamUGC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codedisaster/steamworks/SteamUGC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ItemStatistic"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/codedisaster/steamworks/SteamUGC$ItemStatistic;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/codedisaster/steamworks/SteamUGC$ItemStatistic;

.field public static final enum NumComments:Lcom/codedisaster/steamworks/SteamUGC$ItemStatistic;

.field public static final enum NumFavorites:Lcom/codedisaster/steamworks/SteamUGC$ItemStatistic;

.field public static final enum NumFollowers:Lcom/codedisaster/steamworks/SteamUGC$ItemStatistic;

.field public static final enum NumPlaytimeSessions:Lcom/codedisaster/steamworks/SteamUGC$ItemStatistic;

.field public static final enum NumPlaytimeSessionsDuringTimePeriod:Lcom/codedisaster/steamworks/SteamUGC$ItemStatistic;

.field public static final enum NumSecondsPlayed:Lcom/codedisaster/steamworks/SteamUGC$ItemStatistic;

.field public static final enum NumSecondsPlayedDuringTimePeriod:Lcom/codedisaster/steamworks/SteamUGC$ItemStatistic;

.field public static final enum NumSubscriptions:Lcom/codedisaster/steamworks/SteamUGC$ItemStatistic;

.field public static final enum NumUniqueFavorites:Lcom/codedisaster/steamworks/SteamUGC$ItemStatistic;

.field public static final enum NumUniqueFollowers:Lcom/codedisaster/steamworks/SteamUGC$ItemStatistic;

.field public static final enum NumUniqueSubscriptions:Lcom/codedisaster/steamworks/SteamUGC$ItemStatistic;

.field public static final enum NumUniqueWebsiteViews:Lcom/codedisaster/steamworks/SteamUGC$ItemStatistic;

.field public static final enum ReportScore:Lcom/codedisaster/steamworks/SteamUGC$ItemStatistic;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v0, Lcom/codedisaster/steamworks/SteamUGC$ItemStatistic;

    const-string v1, "NumSubscriptions"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamUGC$ItemStatistic;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamUGC$ItemStatistic;->NumSubscriptions:Lcom/codedisaster/steamworks/SteamUGC$ItemStatistic;

    new-instance v1, Lcom/codedisaster/steamworks/SteamUGC$ItemStatistic;

    const-string v2, "NumFavorites"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/codedisaster/steamworks/SteamUGC$ItemStatistic;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/codedisaster/steamworks/SteamUGC$ItemStatistic;->NumFavorites:Lcom/codedisaster/steamworks/SteamUGC$ItemStatistic;

    new-instance v2, Lcom/codedisaster/steamworks/SteamUGC$ItemStatistic;

    const-string v3, "NumFollowers"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/codedisaster/steamworks/SteamUGC$ItemStatistic;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/codedisaster/steamworks/SteamUGC$ItemStatistic;->NumFollowers:Lcom/codedisaster/steamworks/SteamUGC$ItemStatistic;

    new-instance v3, Lcom/codedisaster/steamworks/SteamUGC$ItemStatistic;

    const-string v4, "NumUniqueSubscriptions"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/codedisaster/steamworks/SteamUGC$ItemStatistic;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/codedisaster/steamworks/SteamUGC$ItemStatistic;->NumUniqueSubscriptions:Lcom/codedisaster/steamworks/SteamUGC$ItemStatistic;

    new-instance v4, Lcom/codedisaster/steamworks/SteamUGC$ItemStatistic;

    const-string v5, "NumUniqueFavorites"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/codedisaster/steamworks/SteamUGC$ItemStatistic;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/codedisaster/steamworks/SteamUGC$ItemStatistic;->NumUniqueFavorites:Lcom/codedisaster/steamworks/SteamUGC$ItemStatistic;

    new-instance v5, Lcom/codedisaster/steamworks/SteamUGC$ItemStatistic;

    const-string v6, "NumUniqueFollowers"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/codedisaster/steamworks/SteamUGC$ItemStatistic;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/codedisaster/steamworks/SteamUGC$ItemStatistic;->NumUniqueFollowers:Lcom/codedisaster/steamworks/SteamUGC$ItemStatistic;

    new-instance v6, Lcom/codedisaster/steamworks/SteamUGC$ItemStatistic;

    const-string v7, "NumUniqueWebsiteViews"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/codedisaster/steamworks/SteamUGC$ItemStatistic;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/codedisaster/steamworks/SteamUGC$ItemStatistic;->NumUniqueWebsiteViews:Lcom/codedisaster/steamworks/SteamUGC$ItemStatistic;

    new-instance v7, Lcom/codedisaster/steamworks/SteamUGC$ItemStatistic;

    const/4 v8, 0x0

    sget-object v8, Laoc/kingdoms/lukasz/map/civilization/stats/LQy/lJxd;->WRAHNMkMdfRZF:Ljava/lang/String;

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/codedisaster/steamworks/SteamUGC$ItemStatistic;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/codedisaster/steamworks/SteamUGC$ItemStatistic;->ReportScore:Lcom/codedisaster/steamworks/SteamUGC$ItemStatistic;

    new-instance v8, Lcom/codedisaster/steamworks/SteamUGC$ItemStatistic;

    const-string v9, "NumSecondsPlayed"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lcom/codedisaster/steamworks/SteamUGC$ItemStatistic;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/codedisaster/steamworks/SteamUGC$ItemStatistic;->NumSecondsPlayed:Lcom/codedisaster/steamworks/SteamUGC$ItemStatistic;

    new-instance v9, Lcom/codedisaster/steamworks/SteamUGC$ItemStatistic;

    const-string v10, "NumPlaytimeSessions"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Lcom/codedisaster/steamworks/SteamUGC$ItemStatistic;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/codedisaster/steamworks/SteamUGC$ItemStatistic;->NumPlaytimeSessions:Lcom/codedisaster/steamworks/SteamUGC$ItemStatistic;

    new-instance v10, Lcom/codedisaster/steamworks/SteamUGC$ItemStatistic;

    const-string v11, "NumComments"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12}, Lcom/codedisaster/steamworks/SteamUGC$ItemStatistic;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/codedisaster/steamworks/SteamUGC$ItemStatistic;->NumComments:Lcom/codedisaster/steamworks/SteamUGC$ItemStatistic;

    new-instance v11, Lcom/codedisaster/steamworks/SteamUGC$ItemStatistic;

    const-string v12, "NumSecondsPlayedDuringTimePeriod"

    const/16 v13, 0xb

    invoke-direct {v11, v12, v13}, Lcom/codedisaster/steamworks/SteamUGC$ItemStatistic;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/codedisaster/steamworks/SteamUGC$ItemStatistic;->NumSecondsPlayedDuringTimePeriod:Lcom/codedisaster/steamworks/SteamUGC$ItemStatistic;

    new-instance v12, Lcom/codedisaster/steamworks/SteamUGC$ItemStatistic;

    const-string v13, "NumPlaytimeSessionsDuringTimePeriod"

    const/16 v14, 0xc

    invoke-direct {v12, v13, v14}, Lcom/codedisaster/steamworks/SteamUGC$ItemStatistic;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/codedisaster/steamworks/SteamUGC$ItemStatistic;->NumPlaytimeSessionsDuringTimePeriod:Lcom/codedisaster/steamworks/SteamUGC$ItemStatistic;

    filled-new-array/range {v0 .. v12}, [Lcom/codedisaster/steamworks/SteamUGC$ItemStatistic;

    move-result-object v0

    sput-object v0, Lcom/codedisaster/steamworks/SteamUGC$ItemStatistic;->$VALUES:[Lcom/codedisaster/steamworks/SteamUGC$ItemStatistic;

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

.method public static valueOf(Ljava/lang/String;)Lcom/codedisaster/steamworks/SteamUGC$ItemStatistic;
    .locals 1

    const-class v0, Lcom/codedisaster/steamworks/SteamUGC$ItemStatistic;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/codedisaster/steamworks/SteamUGC$ItemStatistic;

    return-object p0
.end method

.method public static values()[Lcom/codedisaster/steamworks/SteamUGC$ItemStatistic;
    .locals 1

    sget-object v0, Lcom/codedisaster/steamworks/SteamUGC$ItemStatistic;->$VALUES:[Lcom/codedisaster/steamworks/SteamUGC$ItemStatistic;

    invoke-virtual {v0}, [Lcom/codedisaster/steamworks/SteamUGC$ItemStatistic;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/codedisaster/steamworks/SteamUGC$ItemStatistic;

    return-object v0
.end method
