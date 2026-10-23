.class public final enum Lcom/codedisaster/steamworks/SteamUGC$UserUGCListSortOrder;
.super Ljava/lang/Enum;
.source "SteamUGC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codedisaster/steamworks/SteamUGC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UserUGCListSortOrder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/codedisaster/steamworks/SteamUGC$UserUGCListSortOrder;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/codedisaster/steamworks/SteamUGC$UserUGCListSortOrder;

.field public static final enum CreationOrderAsc:Lcom/codedisaster/steamworks/SteamUGC$UserUGCListSortOrder;

.field public static final enum CreationOrderDesc:Lcom/codedisaster/steamworks/SteamUGC$UserUGCListSortOrder;

.field public static final enum ForModeration:Lcom/codedisaster/steamworks/SteamUGC$UserUGCListSortOrder;

.field public static final enum LastUpdatedDesc:Lcom/codedisaster/steamworks/SteamUGC$UserUGCListSortOrder;

.field public static final enum SubscriptionDateDesc:Lcom/codedisaster/steamworks/SteamUGC$UserUGCListSortOrder;

.field public static final enum TitleAsc:Lcom/codedisaster/steamworks/SteamUGC$UserUGCListSortOrder;

.field public static final enum VoteScoreDesc:Lcom/codedisaster/steamworks/SteamUGC$UserUGCListSortOrder;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/codedisaster/steamworks/SteamUGC$UserUGCListSortOrder;

    const/4 v1, 0x0

    sget-object v1, Laoc/kingdoms/lukasz/menusEditor/RJR/ATsAGKCnv;->YFPdSCnh:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamUGC$UserUGCListSortOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamUGC$UserUGCListSortOrder;->CreationOrderDesc:Lcom/codedisaster/steamworks/SteamUGC$UserUGCListSortOrder;

    new-instance v1, Lcom/codedisaster/steamworks/SteamUGC$UserUGCListSortOrder;

    const-string v2, "CreationOrderAsc"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/codedisaster/steamworks/SteamUGC$UserUGCListSortOrder;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/codedisaster/steamworks/SteamUGC$UserUGCListSortOrder;->CreationOrderAsc:Lcom/codedisaster/steamworks/SteamUGC$UserUGCListSortOrder;

    new-instance v2, Lcom/codedisaster/steamworks/SteamUGC$UserUGCListSortOrder;

    const-string v3, "TitleAsc"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/codedisaster/steamworks/SteamUGC$UserUGCListSortOrder;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/codedisaster/steamworks/SteamUGC$UserUGCListSortOrder;->TitleAsc:Lcom/codedisaster/steamworks/SteamUGC$UserUGCListSortOrder;

    new-instance v3, Lcom/codedisaster/steamworks/SteamUGC$UserUGCListSortOrder;

    const-string v4, "LastUpdatedDesc"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/codedisaster/steamworks/SteamUGC$UserUGCListSortOrder;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/codedisaster/steamworks/SteamUGC$UserUGCListSortOrder;->LastUpdatedDesc:Lcom/codedisaster/steamworks/SteamUGC$UserUGCListSortOrder;

    new-instance v4, Lcom/codedisaster/steamworks/SteamUGC$UserUGCListSortOrder;

    const-string v5, "SubscriptionDateDesc"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/codedisaster/steamworks/SteamUGC$UserUGCListSortOrder;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/codedisaster/steamworks/SteamUGC$UserUGCListSortOrder;->SubscriptionDateDesc:Lcom/codedisaster/steamworks/SteamUGC$UserUGCListSortOrder;

    new-instance v5, Lcom/codedisaster/steamworks/SteamUGC$UserUGCListSortOrder;

    const-string v6, "VoteScoreDesc"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/codedisaster/steamworks/SteamUGC$UserUGCListSortOrder;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/codedisaster/steamworks/SteamUGC$UserUGCListSortOrder;->VoteScoreDesc:Lcom/codedisaster/steamworks/SteamUGC$UserUGCListSortOrder;

    new-instance v6, Lcom/codedisaster/steamworks/SteamUGC$UserUGCListSortOrder;

    const-string v7, "ForModeration"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/codedisaster/steamworks/SteamUGC$UserUGCListSortOrder;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/codedisaster/steamworks/SteamUGC$UserUGCListSortOrder;->ForModeration:Lcom/codedisaster/steamworks/SteamUGC$UserUGCListSortOrder;

    filled-new-array/range {v0 .. v6}, [Lcom/codedisaster/steamworks/SteamUGC$UserUGCListSortOrder;

    move-result-object v0

    sput-object v0, Lcom/codedisaster/steamworks/SteamUGC$UserUGCListSortOrder;->$VALUES:[Lcom/codedisaster/steamworks/SteamUGC$UserUGCListSortOrder;

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

.method public static valueOf(Ljava/lang/String;)Lcom/codedisaster/steamworks/SteamUGC$UserUGCListSortOrder;
    .locals 1

    const-class v0, Lcom/codedisaster/steamworks/SteamUGC$UserUGCListSortOrder;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/codedisaster/steamworks/SteamUGC$UserUGCListSortOrder;

    return-object p0
.end method

.method public static values()[Lcom/codedisaster/steamworks/SteamUGC$UserUGCListSortOrder;
    .locals 1

    sget-object v0, Lcom/codedisaster/steamworks/SteamUGC$UserUGCListSortOrder;->$VALUES:[Lcom/codedisaster/steamworks/SteamUGC$UserUGCListSortOrder;

    invoke-virtual {v0}, [Lcom/codedisaster/steamworks/SteamUGC$UserUGCListSortOrder;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/codedisaster/steamworks/SteamUGC$UserUGCListSortOrder;

    return-object v0
.end method
