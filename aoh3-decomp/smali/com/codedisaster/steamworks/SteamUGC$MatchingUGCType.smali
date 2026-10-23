.class public final enum Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;
.super Ljava/lang/Enum;
.source "SteamUGC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codedisaster/steamworks/SteamUGC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MatchingUGCType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;

.field public static final enum All:Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;

.field public static final enum AllGuides:Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;

.field public static final enum Artwork:Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;

.field public static final enum Collections:Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;

.field public static final enum ControllerBindings:Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;

.field public static final enum GameManagedItems:Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;

.field public static final enum IntegratedGuides:Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;

.field public static final enum Items:Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;

.field public static final enum ItemsMtx:Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;

.field public static final enum ItemsReadyToUse:Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;

.field public static final enum Screenshots:Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;

.field public static final enum UsableInGame:Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;

.field public static final enum Videos:Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;

.field public static final enum WebGuides:Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 17

    new-instance v0, Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;

    const-string v1, "Items"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;->Items:Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;

    new-instance v1, Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;

    const-string v2, "ItemsMtx"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;->ItemsMtx:Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;

    new-instance v2, Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;

    const-string v3, "ItemsReadyToUse"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;->ItemsReadyToUse:Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;

    new-instance v3, Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;

    const-string v4, "Collections"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;->Collections:Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;

    new-instance v4, Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;

    const-string v5, "Artwork"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;->Artwork:Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;

    new-instance v5, Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;

    const-string v6, "Videos"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v7}, Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;->Videos:Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;

    new-instance v6, Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;

    const-string v7, "Screenshots"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8, v8}, Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;->Screenshots:Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;

    new-instance v7, Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;

    const-string v8, "AllGuides"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9, v9}, Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;->AllGuides:Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;

    new-instance v8, Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;

    const-string v9, "WebGuides"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10, v10}, Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;->WebGuides:Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;

    new-instance v9, Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;

    const-string v10, "IntegratedGuides"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11, v11}, Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;->IntegratedGuides:Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;

    new-instance v10, Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;

    const-string v11, "UsableInGame"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12, v12}, Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;->UsableInGame:Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;

    new-instance v11, Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;

    const-string v12, "ControllerBindings"

    const/16 v13, 0xb

    invoke-direct {v11, v12, v13, v13}, Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;->ControllerBindings:Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;

    new-instance v12, Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;

    const-string v13, "GameManagedItems"

    const/16 v14, 0xc

    invoke-direct {v12, v13, v14, v14}, Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;->GameManagedItems:Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;

    new-instance v13, Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;

    const/16 v14, 0xd

    const/4 v15, -0x1

    move-object/from16 v16, v12

    const/4 v12, 0x0

    sget-object v12, Lcom/badlogic/gdx/net/otUh/aBEBOpwLZcQFCZ;->ctQJwWvHrdYRXbH:Ljava/lang/String;

    invoke-direct {v13, v12, v14, v15}, Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;->All:Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;

    move-object/from16 v12, v16

    filled-new-array/range {v0 .. v13}, [Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;

    move-result-object v0

    sput-object v0, Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;->$VALUES:[Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;

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

    iput p3, p0, Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;->value:I

    return-void
.end method

.method static synthetic access$000(Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;)I
    .locals 0

    iget p0, p0, Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;->value:I

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;
    .locals 1

    const-class v0, Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;

    return-object p0
.end method

.method public static values()[Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;
    .locals 1

    sget-object v0, Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;->$VALUES:[Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;

    invoke-virtual {v0}, [Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;

    return-object v0
.end method
