.class public final enum Lcom/codedisaster/steamworks/SteamUGC$ItemState;
.super Ljava/lang/Enum;
.source "SteamUGC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codedisaster/steamworks/SteamUGC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ItemState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/codedisaster/steamworks/SteamUGC$ItemState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/codedisaster/steamworks/SteamUGC$ItemState;

.field public static final enum DownloadPending:Lcom/codedisaster/steamworks/SteamUGC$ItemState;

.field public static final enum Downloading:Lcom/codedisaster/steamworks/SteamUGC$ItemState;

.field public static final enum Installed:Lcom/codedisaster/steamworks/SteamUGC$ItemState;

.field public static final enum LegacyItem:Lcom/codedisaster/steamworks/SteamUGC$ItemState;

.field public static final enum NeedsUpdate:Lcom/codedisaster/steamworks/SteamUGC$ItemState;

.field public static final enum None:Lcom/codedisaster/steamworks/SteamUGC$ItemState;

.field public static final enum Subscribed:Lcom/codedisaster/steamworks/SteamUGC$ItemState;

.field private static final values:[Lcom/codedisaster/steamworks/SteamUGC$ItemState;


# instance fields
.field private final bits:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/codedisaster/steamworks/SteamUGC$ItemState;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/codedisaster/steamworks/SteamUGC$ItemState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamUGC$ItemState;->None:Lcom/codedisaster/steamworks/SteamUGC$ItemState;

    new-instance v1, Lcom/codedisaster/steamworks/SteamUGC$ItemState;

    const-string v2, "Subscribed"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/codedisaster/steamworks/SteamUGC$ItemState;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/codedisaster/steamworks/SteamUGC$ItemState;->Subscribed:Lcom/codedisaster/steamworks/SteamUGC$ItemState;

    new-instance v2, Lcom/codedisaster/steamworks/SteamUGC$ItemState;

    const-string v3, "LegacyItem"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/codedisaster/steamworks/SteamUGC$ItemState;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/codedisaster/steamworks/SteamUGC$ItemState;->LegacyItem:Lcom/codedisaster/steamworks/SteamUGC$ItemState;

    new-instance v3, Lcom/codedisaster/steamworks/SteamUGC$ItemState;

    const-string v4, "Installed"

    const/4 v5, 0x3

    const/4 v6, 0x4

    invoke-direct {v3, v4, v5, v6}, Lcom/codedisaster/steamworks/SteamUGC$ItemState;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/codedisaster/steamworks/SteamUGC$ItemState;->Installed:Lcom/codedisaster/steamworks/SteamUGC$ItemState;

    new-instance v4, Lcom/codedisaster/steamworks/SteamUGC$ItemState;

    const-string v5, "NeedsUpdate"

    const/16 v7, 0x8

    invoke-direct {v4, v5, v6, v7}, Lcom/codedisaster/steamworks/SteamUGC$ItemState;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/codedisaster/steamworks/SteamUGC$ItemState;->NeedsUpdate:Lcom/codedisaster/steamworks/SteamUGC$ItemState;

    new-instance v5, Lcom/codedisaster/steamworks/SteamUGC$ItemState;

    const/4 v6, 0x5

    const/16 v7, 0x10

    const-string v8, "Downloading"

    invoke-direct {v5, v8, v6, v7}, Lcom/codedisaster/steamworks/SteamUGC$ItemState;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/codedisaster/steamworks/SteamUGC$ItemState;->Downloading:Lcom/codedisaster/steamworks/SteamUGC$ItemState;

    new-instance v6, Lcom/codedisaster/steamworks/SteamUGC$ItemState;

    const/4 v7, 0x6

    const/16 v8, 0x20

    const-string v9, "DownloadPending"

    invoke-direct {v6, v9, v7, v8}, Lcom/codedisaster/steamworks/SteamUGC$ItemState;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/codedisaster/steamworks/SteamUGC$ItemState;->DownloadPending:Lcom/codedisaster/steamworks/SteamUGC$ItemState;

    filled-new-array/range {v0 .. v6}, [Lcom/codedisaster/steamworks/SteamUGC$ItemState;

    move-result-object v0

    sput-object v0, Lcom/codedisaster/steamworks/SteamUGC$ItemState;->$VALUES:[Lcom/codedisaster/steamworks/SteamUGC$ItemState;

    invoke-static {}, Lcom/codedisaster/steamworks/SteamUGC$ItemState;->values()[Lcom/codedisaster/steamworks/SteamUGC$ItemState;

    move-result-object v0

    sput-object v0, Lcom/codedisaster/steamworks/SteamUGC$ItemState;->values:[Lcom/codedisaster/steamworks/SteamUGC$ItemState;

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

    iput p3, p0, Lcom/codedisaster/steamworks/SteamUGC$ItemState;->bits:I

    return-void
.end method

.method static fromBits(I)Ljava/util/Collection;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Collection<",
            "Lcom/codedisaster/steamworks/SteamUGC$ItemState;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/codedisaster/steamworks/SteamUGC$ItemState;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    sget-object v1, Lcom/codedisaster/steamworks/SteamUGC$ItemState;->values:[Lcom/codedisaster/steamworks/SteamUGC$ItemState;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    iget v5, v4, Lcom/codedisaster/steamworks/SteamUGC$ItemState;->bits:I

    and-int v6, p0, v5

    if-ne v6, v5, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/codedisaster/steamworks/SteamUGC$ItemState;
    .locals 1

    const-class v0, Lcom/codedisaster/steamworks/SteamUGC$ItemState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/codedisaster/steamworks/SteamUGC$ItemState;

    return-object p0
.end method

.method public static values()[Lcom/codedisaster/steamworks/SteamUGC$ItemState;
    .locals 1

    sget-object v0, Lcom/codedisaster/steamworks/SteamUGC$ItemState;->$VALUES:[Lcom/codedisaster/steamworks/SteamUGC$ItemState;

    invoke-virtual {v0}, [Lcom/codedisaster/steamworks/SteamUGC$ItemState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/codedisaster/steamworks/SteamUGC$ItemState;

    return-object v0
.end method
