.class public final enum Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;
.super Ljava/lang/Enum;
.source "SteamRemoteStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codedisaster/steamworks/SteamRemoteStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WorkshopFileType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

.field public static final enum Art:Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

.field public static final enum Collection:Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

.field public static final enum Community:Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

.field public static final enum Concept:Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

.field public static final enum ControllerBinding:Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

.field public static final enum Game:Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

.field public static final enum GameManagedItem:Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

.field public static final enum IntegratedGuide:Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

.field public static final enum Merch:Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

.field public static final enum Microtransaction:Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

.field public static final enum Screenshot:Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

.field public static final enum Software:Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

.field public static final enum SteamVideo:Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

.field public static final enum SteamworksAccessInvite:Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

.field public static final enum Video:Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

.field public static final enum WebGuide:Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

.field private static final values:[Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    new-instance v0, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

    const-string v1, "Community"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;->Community:Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

    new-instance v1, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

    const-string v2, "Microtransaction"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;->Microtransaction:Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

    new-instance v2, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

    const/4 v3, 0x0

    sget-object v3, Laoc/kingdoms/lukasz/menusInGame/Province/iOYW/ALZmnpZHj;->WtNvVQjICIcs:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;->Collection:Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

    new-instance v3, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

    const-string v4, "Art"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;->Art:Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

    new-instance v4, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

    const-string v5, "Video"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;->Video:Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

    new-instance v5, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

    const-string v6, "Screenshot"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;->Screenshot:Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

    new-instance v6, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

    const-string v7, "Game"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;->Game:Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

    new-instance v7, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

    const-string v8, "Software"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;->Software:Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

    new-instance v8, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

    const-string v9, "Concept"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;->Concept:Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

    new-instance v9, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

    const/4 v10, 0x0

    sget-object v10, Landroidx/lifecycle/livedata/core/jzw/jkEBdieJhbh;->UiwAfnugFc:Ljava/lang/String;

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;->WebGuide:Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

    new-instance v10, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

    const-string v11, "IntegratedGuide"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12}, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;->IntegratedGuide:Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

    new-instance v11, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

    const-string v12, "Merch"

    const/16 v13, 0xb

    invoke-direct {v11, v12, v13}, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;->Merch:Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

    new-instance v12, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

    const-string v13, "ControllerBinding"

    const/16 v14, 0xc

    invoke-direct {v12, v13, v14}, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;->ControllerBinding:Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

    new-instance v13, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

    const-string v14, "SteamworksAccessInvite"

    const/16 v15, 0xd

    invoke-direct {v13, v14, v15}, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;->SteamworksAccessInvite:Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

    new-instance v14, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

    const-string v15, "SteamVideo"

    move-object/from16 v16, v13

    const/16 v13, 0xe

    invoke-direct {v14, v15, v13}, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;->SteamVideo:Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

    new-instance v15, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

    const-string v13, "GameManagedItem"

    move-object/from16 v17, v14

    const/16 v14, 0xf

    invoke-direct {v15, v13, v14}, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;->GameManagedItem:Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

    move-object/from16 v13, v16

    move-object/from16 v14, v17

    filled-new-array/range {v0 .. v15}, [Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

    move-result-object v0

    sput-object v0, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;->$VALUES:[Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

    invoke-static {}, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;->values()[Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

    move-result-object v0

    sput-object v0, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;->values:[Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

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

.method static byOrdinal(I)Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;
    .locals 1

    sget-object v0, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;->values:[Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;
    .locals 1

    const-class v0, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

    return-object p0
.end method

.method public static values()[Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;
    .locals 1

    sget-object v0, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;->$VALUES:[Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

    invoke-virtual {v0}, [Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

    return-object v0
.end method
