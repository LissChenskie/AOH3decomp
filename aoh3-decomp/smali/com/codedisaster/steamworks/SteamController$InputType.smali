.class public final enum Lcom/codedisaster/steamworks/SteamController$InputType;
.super Ljava/lang/Enum;
.source "SteamController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codedisaster/steamworks/SteamController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InputType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/codedisaster/steamworks/SteamController$InputType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/codedisaster/steamworks/SteamController$InputType;

.field public static final enum AndroidController:Lcom/codedisaster/steamworks/SteamController$InputType;

.field public static final enum AppleMFiController:Lcom/codedisaster/steamworks/SteamController$InputType;

.field public static final enum GenericGamepad:Lcom/codedisaster/steamworks/SteamController$InputType;

.field public static final enum MobileTouch:Lcom/codedisaster/steamworks/SteamController$InputType;

.field public static final enum PS3Controller:Lcom/codedisaster/steamworks/SteamController$InputType;

.field public static final enum PS4Controller:Lcom/codedisaster/steamworks/SteamController$InputType;

.field public static final enum PS5Controller:Lcom/codedisaster/steamworks/SteamController$InputType;

.field public static final enum SteamController:Lcom/codedisaster/steamworks/SteamController$InputType;

.field public static final enum SwitchJoyConPair:Lcom/codedisaster/steamworks/SteamController$InputType;

.field public static final enum SwitchJoyConSingle:Lcom/codedisaster/steamworks/SteamController$InputType;

.field public static final enum SwitchProController:Lcom/codedisaster/steamworks/SteamController$InputType;

.field public static final enum Unknown:Lcom/codedisaster/steamworks/SteamController$InputType;

.field public static final enum XBox360Controller:Lcom/codedisaster/steamworks/SteamController$InputType;

.field public static final enum XBoxOneController:Lcom/codedisaster/steamworks/SteamController$InputType;

.field private static final values:[Lcom/codedisaster/steamworks/SteamController$InputType;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/codedisaster/steamworks/SteamController$InputType;

    const-string v1, "Unknown"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamController$InputType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamController$InputType;->Unknown:Lcom/codedisaster/steamworks/SteamController$InputType;

    new-instance v1, Lcom/codedisaster/steamworks/SteamController$InputType;

    const-string v2, "SteamController"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/codedisaster/steamworks/SteamController$InputType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/codedisaster/steamworks/SteamController$InputType;->SteamController:Lcom/codedisaster/steamworks/SteamController$InputType;

    new-instance v2, Lcom/codedisaster/steamworks/SteamController$InputType;

    const-string v3, "XBox360Controller"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/codedisaster/steamworks/SteamController$InputType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/codedisaster/steamworks/SteamController$InputType;->XBox360Controller:Lcom/codedisaster/steamworks/SteamController$InputType;

    new-instance v3, Lcom/codedisaster/steamworks/SteamController$InputType;

    const-string v4, "XBoxOneController"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/codedisaster/steamworks/SteamController$InputType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/codedisaster/steamworks/SteamController$InputType;->XBoxOneController:Lcom/codedisaster/steamworks/SteamController$InputType;

    new-instance v4, Lcom/codedisaster/steamworks/SteamController$InputType;

    const-string v5, "GenericGamepad"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/codedisaster/steamworks/SteamController$InputType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/codedisaster/steamworks/SteamController$InputType;->GenericGamepad:Lcom/codedisaster/steamworks/SteamController$InputType;

    new-instance v5, Lcom/codedisaster/steamworks/SteamController$InputType;

    const-string v6, "PS4Controller"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/codedisaster/steamworks/SteamController$InputType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/codedisaster/steamworks/SteamController$InputType;->PS4Controller:Lcom/codedisaster/steamworks/SteamController$InputType;

    new-instance v6, Lcom/codedisaster/steamworks/SteamController$InputType;

    const-string v7, "AppleMFiController"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/codedisaster/steamworks/SteamController$InputType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/codedisaster/steamworks/SteamController$InputType;->AppleMFiController:Lcom/codedisaster/steamworks/SteamController$InputType;

    new-instance v7, Lcom/codedisaster/steamworks/SteamController$InputType;

    const-string v8, "AndroidController"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/codedisaster/steamworks/SteamController$InputType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/codedisaster/steamworks/SteamController$InputType;->AndroidController:Lcom/codedisaster/steamworks/SteamController$InputType;

    new-instance v8, Lcom/codedisaster/steamworks/SteamController$InputType;

    const-string v9, "SwitchJoyConPair"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lcom/codedisaster/steamworks/SteamController$InputType;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/codedisaster/steamworks/SteamController$InputType;->SwitchJoyConPair:Lcom/codedisaster/steamworks/SteamController$InputType;

    new-instance v9, Lcom/codedisaster/steamworks/SteamController$InputType;

    const-string v10, "SwitchJoyConSingle"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Lcom/codedisaster/steamworks/SteamController$InputType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/codedisaster/steamworks/SteamController$InputType;->SwitchJoyConSingle:Lcom/codedisaster/steamworks/SteamController$InputType;

    new-instance v10, Lcom/codedisaster/steamworks/SteamController$InputType;

    const-string v11, "SwitchProController"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12}, Lcom/codedisaster/steamworks/SteamController$InputType;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/codedisaster/steamworks/SteamController$InputType;->SwitchProController:Lcom/codedisaster/steamworks/SteamController$InputType;

    new-instance v11, Lcom/codedisaster/steamworks/SteamController$InputType;

    const/4 v12, 0x0

    sget-object v12, Laoc/kingdoms/lukasz/map/advisors/VjN/hQfu;->xiOEQJ:Ljava/lang/String;

    const/16 v13, 0xb

    invoke-direct {v11, v12, v13}, Lcom/codedisaster/steamworks/SteamController$InputType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/codedisaster/steamworks/SteamController$InputType;->MobileTouch:Lcom/codedisaster/steamworks/SteamController$InputType;

    new-instance v12, Lcom/codedisaster/steamworks/SteamController$InputType;

    const-string v13, "PS3Controller"

    const/16 v14, 0xc

    invoke-direct {v12, v13, v14}, Lcom/codedisaster/steamworks/SteamController$InputType;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/codedisaster/steamworks/SteamController$InputType;->PS3Controller:Lcom/codedisaster/steamworks/SteamController$InputType;

    new-instance v13, Lcom/codedisaster/steamworks/SteamController$InputType;

    const-string v14, "PS5Controller"

    const/16 v15, 0xd

    invoke-direct {v13, v14, v15}, Lcom/codedisaster/steamworks/SteamController$InputType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/codedisaster/steamworks/SteamController$InputType;->PS5Controller:Lcom/codedisaster/steamworks/SteamController$InputType;

    filled-new-array/range {v0 .. v13}, [Lcom/codedisaster/steamworks/SteamController$InputType;

    move-result-object v0

    sput-object v0, Lcom/codedisaster/steamworks/SteamController$InputType;->$VALUES:[Lcom/codedisaster/steamworks/SteamController$InputType;

    invoke-static {}, Lcom/codedisaster/steamworks/SteamController$InputType;->values()[Lcom/codedisaster/steamworks/SteamController$InputType;

    move-result-object v0

    sput-object v0, Lcom/codedisaster/steamworks/SteamController$InputType;->values:[Lcom/codedisaster/steamworks/SteamController$InputType;

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

.method static byOrdinal(I)Lcom/codedisaster/steamworks/SteamController$InputType;
    .locals 1

    sget-object v0, Lcom/codedisaster/steamworks/SteamController$InputType;->values:[Lcom/codedisaster/steamworks/SteamController$InputType;

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/codedisaster/steamworks/SteamController$InputType;
    .locals 1

    const-class v0, Lcom/codedisaster/steamworks/SteamController$InputType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/codedisaster/steamworks/SteamController$InputType;

    return-object p0
.end method

.method public static values()[Lcom/codedisaster/steamworks/SteamController$InputType;
    .locals 1

    sget-object v0, Lcom/codedisaster/steamworks/SteamController$InputType;->$VALUES:[Lcom/codedisaster/steamworks/SteamController$InputType;

    invoke-virtual {v0}, [Lcom/codedisaster/steamworks/SteamController$InputType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/codedisaster/steamworks/SteamController$InputType;

    return-object v0
.end method
