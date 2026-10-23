.class public final enum Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;
.super Ljava/lang/Enum;
.source "SteamUGC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codedisaster/steamworks/SteamUGC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ItemPreviewType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;

.field public static final enum EnvironmentMap_HorizontalCross:Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;

.field public static final enum EnvironmentMap_LatLong:Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;

.field public static final enum Image:Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;

.field public static final enum ReservedMax:Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;

.field public static final enum Sketchfab:Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;

.field public static final enum UnknownPreviewType_NotImplementedByAPI:Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;

.field public static final enum YouTubeVideo:Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;

.field private static final values:[Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;

    const-string v1, "Image"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;->Image:Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;

    new-instance v1, Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;

    const-string v2, "YouTubeVideo"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;->YouTubeVideo:Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;

    new-instance v2, Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;

    const-string v3, "Sketchfab"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;->Sketchfab:Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;

    new-instance v3, Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;

    const-string v4, "EnvironmentMap_HorizontalCross"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;->EnvironmentMap_HorizontalCross:Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;

    new-instance v4, Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;

    const-string v5, "EnvironmentMap_LatLong"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;->EnvironmentMap_LatLong:Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;

    new-instance v5, Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;

    const/4 v6, 0x5

    const/16 v7, 0xff

    const-string v8, "ReservedMax"

    invoke-direct {v5, v8, v6, v7}, Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;->ReservedMax:Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;

    new-instance v6, Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;

    const/4 v7, 0x6

    const/4 v8, -0x1

    const-string v9, "UnknownPreviewType_NotImplementedByAPI"

    invoke-direct {v6, v9, v7, v8}, Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;->UnknownPreviewType_NotImplementedByAPI:Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;

    filled-new-array/range {v0 .. v6}, [Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;

    move-result-object v0

    sput-object v0, Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;->$VALUES:[Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;

    invoke-static {}, Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;->values()[Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;

    move-result-object v0

    sput-object v0, Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;->values:[Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;

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

    iput p3, p0, Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;->value:I

    return-void
.end method

.method static byValue(I)Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;
    .locals 5

    sget-object v0, Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;->values:[Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;->value:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;->UnknownPreviewType_NotImplementedByAPI:Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;
    .locals 1

    const-class v0, Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;

    return-object p0
.end method

.method public static values()[Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;
    .locals 1

    sget-object v0, Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;->$VALUES:[Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;

    invoke-virtual {v0}, [Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;

    return-object v0
.end method
