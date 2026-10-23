.class public final enum Lcom/codedisaster/steamworks/SteamUniverse;
.super Ljava/lang/Enum;
.source "SteamUniverse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/codedisaster/steamworks/SteamUniverse;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/codedisaster/steamworks/SteamUniverse;

.field public static final enum Beta:Lcom/codedisaster/steamworks/SteamUniverse;

.field public static final enum Dev:Lcom/codedisaster/steamworks/SteamUniverse;

.field public static final enum Internal:Lcom/codedisaster/steamworks/SteamUniverse;

.field public static final enum Invalid:Lcom/codedisaster/steamworks/SteamUniverse;

.field public static final enum Public:Lcom/codedisaster/steamworks/SteamUniverse;

.field private static final values:[Lcom/codedisaster/steamworks/SteamUniverse;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/codedisaster/steamworks/SteamUniverse;

    const/4 v1, 0x0

    sget-object v1, Lcom/google/android/gms/internal/common/oss/ClXgFvsSKQc;->kjBCYdVcXkCsknb:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/codedisaster/steamworks/SteamUniverse;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamUniverse;->Invalid:Lcom/codedisaster/steamworks/SteamUniverse;

    new-instance v1, Lcom/codedisaster/steamworks/SteamUniverse;

    const-string v2, "Public"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/codedisaster/steamworks/SteamUniverse;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/codedisaster/steamworks/SteamUniverse;->Public:Lcom/codedisaster/steamworks/SteamUniverse;

    new-instance v2, Lcom/codedisaster/steamworks/SteamUniverse;

    const-string v3, "Beta"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/codedisaster/steamworks/SteamUniverse;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/codedisaster/steamworks/SteamUniverse;->Beta:Lcom/codedisaster/steamworks/SteamUniverse;

    new-instance v3, Lcom/codedisaster/steamworks/SteamUniverse;

    const-string v4, "Internal"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/codedisaster/steamworks/SteamUniverse;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/codedisaster/steamworks/SteamUniverse;->Internal:Lcom/codedisaster/steamworks/SteamUniverse;

    new-instance v4, Lcom/codedisaster/steamworks/SteamUniverse;

    const-string v5, "Dev"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lcom/codedisaster/steamworks/SteamUniverse;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/codedisaster/steamworks/SteamUniverse;->Dev:Lcom/codedisaster/steamworks/SteamUniverse;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/codedisaster/steamworks/SteamUniverse;

    move-result-object v0

    sput-object v0, Lcom/codedisaster/steamworks/SteamUniverse;->$VALUES:[Lcom/codedisaster/steamworks/SteamUniverse;

    invoke-static {}, Lcom/codedisaster/steamworks/SteamUniverse;->values()[Lcom/codedisaster/steamworks/SteamUniverse;

    move-result-object v0

    sput-object v0, Lcom/codedisaster/steamworks/SteamUniverse;->values:[Lcom/codedisaster/steamworks/SteamUniverse;

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

    iput p3, p0, Lcom/codedisaster/steamworks/SteamUniverse;->value:I

    return-void
.end method

.method static byValue(I)Lcom/codedisaster/steamworks/SteamUniverse;
    .locals 5

    sget-object v0, Lcom/codedisaster/steamworks/SteamUniverse;->values:[Lcom/codedisaster/steamworks/SteamUniverse;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lcom/codedisaster/steamworks/SteamUniverse;->value:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/codedisaster/steamworks/SteamUniverse;->Invalid:Lcom/codedisaster/steamworks/SteamUniverse;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/codedisaster/steamworks/SteamUniverse;
    .locals 1

    const-class v0, Lcom/codedisaster/steamworks/SteamUniverse;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/codedisaster/steamworks/SteamUniverse;

    return-object p0
.end method

.method public static values()[Lcom/codedisaster/steamworks/SteamUniverse;
    .locals 1

    sget-object v0, Lcom/codedisaster/steamworks/SteamUniverse;->$VALUES:[Lcom/codedisaster/steamworks/SteamUniverse;

    invoke-virtual {v0}, [Lcom/codedisaster/steamworks/SteamUniverse;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/codedisaster/steamworks/SteamUniverse;

    return-object v0
.end method
