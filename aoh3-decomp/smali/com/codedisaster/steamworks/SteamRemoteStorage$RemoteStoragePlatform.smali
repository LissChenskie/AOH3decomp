.class public final enum Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;
.super Ljava/lang/Enum;
.source "SteamRemoteStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codedisaster/steamworks/SteamRemoteStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RemoteStoragePlatform"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;

.field public static final enum All:Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;

.field public static final enum Android:Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;

.field public static final enum IOS:Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;

.field public static final enum Linux:Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;

.field public static final enum None:Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;

.field public static final enum OSX:Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;

.field public static final enum PS3:Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;

.field public static final enum Reserved2:Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;

.field public static final enum Windows:Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;

.field private static final values:[Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;


# instance fields
.field private final mask:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;->None:Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;

    new-instance v1, Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;

    const-string v2, "Windows"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;->Windows:Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;

    new-instance v2, Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;

    const-string v3, "OSX"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;->OSX:Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;

    new-instance v3, Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;

    const-string v4, "PS3"

    const/4 v5, 0x3

    const/4 v6, 0x4

    invoke-direct {v3, v4, v5, v6}, Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;->PS3:Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;

    new-instance v4, Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;

    const-string v5, "Linux"

    const/16 v7, 0x8

    invoke-direct {v4, v5, v6, v7}, Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;->Linux:Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;

    new-instance v5, Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;

    const/4 v6, 0x5

    const/16 v8, 0x10

    const-string v9, "Reserved2"

    invoke-direct {v5, v9, v6, v8}, Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;->Reserved2:Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;

    new-instance v6, Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;

    const/4 v8, 0x6

    const/16 v9, 0x20

    const-string v10, "Android"

    invoke-direct {v6, v10, v8, v9}, Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;->Android:Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;

    new-instance v8, Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;

    const/4 v9, 0x7

    const/16 v10, 0x40

    const-string v11, "IOS"

    invoke-direct {v8, v11, v9, v10}, Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;->IOS:Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;

    new-instance v9, Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;

    const-string v10, "All"

    const/4 v11, -0x1

    invoke-direct {v9, v10, v7, v11}, Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;->All:Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;

    move-object v7, v8

    move-object v8, v9

    filled-new-array/range {v0 .. v8}, [Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;

    move-result-object v0

    sput-object v0, Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;->$VALUES:[Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;

    invoke-static {}, Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;->values()[Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;

    move-result-object v0

    sput-object v0, Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;->values:[Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;

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

    iput p3, p0, Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;->mask:I

    return-void
.end method

.method static synthetic access$000(Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;)I
    .locals 0

    iget p0, p0, Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;->mask:I

    return p0
.end method

.method static byMask(I)[Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;
    .locals 7

    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    new-array v0, v0, [Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;

    sget-object v1, Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;->values:[Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v5, v1, v3

    iget v6, v5, Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;->mask:I

    and-int/2addr v6, p0

    if-eqz v6, :cond_0

    add-int/lit8 v6, v4, 0x1

    aput-object v5, v0, v4

    move v4, v6

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;
    .locals 1

    const-class v0, Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;

    return-object p0
.end method

.method public static values()[Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;
    .locals 1

    sget-object v0, Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;->$VALUES:[Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;

    invoke-virtual {v0}, [Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;

    return-object v0
.end method
