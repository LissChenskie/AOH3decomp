.class public final enum Lcom/codedisaster/steamworks/SteamController$Source;
.super Ljava/lang/Enum;
.source "SteamController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codedisaster/steamworks/SteamController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Source"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/codedisaster/steamworks/SteamController$Source;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/codedisaster/steamworks/SteamController$Source;

.field public static final enum ABXY:Lcom/codedisaster/steamworks/SteamController$Source;

.field public static final enum CenterTrackpad:Lcom/codedisaster/steamworks/SteamController$Source;

.field public static final enum DPad:Lcom/codedisaster/steamworks/SteamController$Source;

.field public static final enum Gyro:Lcom/codedisaster/steamworks/SteamController$Source;

.field public static final enum Joystick:Lcom/codedisaster/steamworks/SteamController$Source;

.field public static final enum Key:Lcom/codedisaster/steamworks/SteamController$Source;

.field public static final enum LeftBumper:Lcom/codedisaster/steamworks/SteamController$Source;

.field public static final enum LeftGyro:Lcom/codedisaster/steamworks/SteamController$Source;

.field public static final enum LeftTrackpad:Lcom/codedisaster/steamworks/SteamController$Source;

.field public static final enum LeftTrigger:Lcom/codedisaster/steamworks/SteamController$Source;

.field public static final enum Mouse:Lcom/codedisaster/steamworks/SteamController$Source;

.field public static final enum None:Lcom/codedisaster/steamworks/SteamController$Source;

.field public static final enum RightBumper:Lcom/codedisaster/steamworks/SteamController$Source;

.field public static final enum RightJoystick:Lcom/codedisaster/steamworks/SteamController$Source;

.field public static final enum RightTrackpad:Lcom/codedisaster/steamworks/SteamController$Source;

.field public static final enum RightTrigger:Lcom/codedisaster/steamworks/SteamController$Source;

.field public static final enum Switch:Lcom/codedisaster/steamworks/SteamController$Source;


# direct methods
.method static constructor <clinit>()V
    .locals 20

    new-instance v1, Lcom/codedisaster/steamworks/SteamController$Source;

    move-object v0, v1

    const-string v2, "None"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/codedisaster/steamworks/SteamController$Source;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/codedisaster/steamworks/SteamController$Source;->None:Lcom/codedisaster/steamworks/SteamController$Source;

    new-instance v2, Lcom/codedisaster/steamworks/SteamController$Source;

    move-object v1, v2

    const-string v3, "LeftTrackpad"

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/codedisaster/steamworks/SteamController$Source;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/codedisaster/steamworks/SteamController$Source;->LeftTrackpad:Lcom/codedisaster/steamworks/SteamController$Source;

    new-instance v3, Lcom/codedisaster/steamworks/SteamController$Source;

    move-object v2, v3

    const-string v4, "RightTrackpad"

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5}, Lcom/codedisaster/steamworks/SteamController$Source;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/codedisaster/steamworks/SteamController$Source;->RightTrackpad:Lcom/codedisaster/steamworks/SteamController$Source;

    new-instance v4, Lcom/codedisaster/steamworks/SteamController$Source;

    move-object v3, v4

    const-string v5, "Joystick"

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6}, Lcom/codedisaster/steamworks/SteamController$Source;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/codedisaster/steamworks/SteamController$Source;->Joystick:Lcom/codedisaster/steamworks/SteamController$Source;

    new-instance v5, Lcom/codedisaster/steamworks/SteamController$Source;

    move-object v4, v5

    const-string v6, "ABXY"

    const/4 v7, 0x4

    invoke-direct {v5, v6, v7}, Lcom/codedisaster/steamworks/SteamController$Source;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/codedisaster/steamworks/SteamController$Source;->ABXY:Lcom/codedisaster/steamworks/SteamController$Source;

    new-instance v6, Lcom/codedisaster/steamworks/SteamController$Source;

    move-object v5, v6

    const-string v7, "Switch"

    const/4 v8, 0x5

    invoke-direct {v6, v7, v8}, Lcom/codedisaster/steamworks/SteamController$Source;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/codedisaster/steamworks/SteamController$Source;->Switch:Lcom/codedisaster/steamworks/SteamController$Source;

    new-instance v7, Lcom/codedisaster/steamworks/SteamController$Source;

    move-object v6, v7

    const-string v8, "LeftTrigger"

    const/4 v9, 0x6

    invoke-direct {v7, v8, v9}, Lcom/codedisaster/steamworks/SteamController$Source;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/codedisaster/steamworks/SteamController$Source;->LeftTrigger:Lcom/codedisaster/steamworks/SteamController$Source;

    new-instance v8, Lcom/codedisaster/steamworks/SteamController$Source;

    move-object v7, v8

    const-string v9, "RightTrigger"

    const/4 v10, 0x7

    invoke-direct {v8, v9, v10}, Lcom/codedisaster/steamworks/SteamController$Source;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/codedisaster/steamworks/SteamController$Source;->RightTrigger:Lcom/codedisaster/steamworks/SteamController$Source;

    new-instance v9, Lcom/codedisaster/steamworks/SteamController$Source;

    move-object v8, v9

    const-string v10, "LeftBumper"

    const/16 v11, 0x8

    invoke-direct {v9, v10, v11}, Lcom/codedisaster/steamworks/SteamController$Source;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/codedisaster/steamworks/SteamController$Source;->LeftBumper:Lcom/codedisaster/steamworks/SteamController$Source;

    new-instance v10, Lcom/codedisaster/steamworks/SteamController$Source;

    move-object v9, v10

    const-string v11, "RightBumper"

    const/16 v12, 0x9

    invoke-direct {v10, v11, v12}, Lcom/codedisaster/steamworks/SteamController$Source;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/codedisaster/steamworks/SteamController$Source;->RightBumper:Lcom/codedisaster/steamworks/SteamController$Source;

    new-instance v11, Lcom/codedisaster/steamworks/SteamController$Source;

    move-object v10, v11

    const-string v12, "Gyro"

    const/16 v13, 0xa

    invoke-direct {v11, v12, v13}, Lcom/codedisaster/steamworks/SteamController$Source;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/codedisaster/steamworks/SteamController$Source;->Gyro:Lcom/codedisaster/steamworks/SteamController$Source;

    new-instance v12, Lcom/codedisaster/steamworks/SteamController$Source;

    move-object v11, v12

    const-string v13, "CenterTrackpad"

    const/16 v14, 0xb

    invoke-direct {v12, v13, v14}, Lcom/codedisaster/steamworks/SteamController$Source;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/codedisaster/steamworks/SteamController$Source;->CenterTrackpad:Lcom/codedisaster/steamworks/SteamController$Source;

    new-instance v13, Lcom/codedisaster/steamworks/SteamController$Source;

    move-object v12, v13

    const-string v14, "RightJoystick"

    const/16 v15, 0xc

    invoke-direct {v13, v14, v15}, Lcom/codedisaster/steamworks/SteamController$Source;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/codedisaster/steamworks/SteamController$Source;->RightJoystick:Lcom/codedisaster/steamworks/SteamController$Source;

    new-instance v14, Lcom/codedisaster/steamworks/SteamController$Source;

    move-object v13, v14

    const-string v15, "DPad"

    move-object/from16 v17, v0

    const/16 v0, 0xd

    invoke-direct {v14, v15, v0}, Lcom/codedisaster/steamworks/SteamController$Source;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/codedisaster/steamworks/SteamController$Source;->DPad:Lcom/codedisaster/steamworks/SteamController$Source;

    new-instance v0, Lcom/codedisaster/steamworks/SteamController$Source;

    move-object v14, v0

    const-string v15, "Key"

    move-object/from16 v18, v1

    const/16 v1, 0xe

    invoke-direct {v0, v15, v1}, Lcom/codedisaster/steamworks/SteamController$Source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamController$Source;->Key:Lcom/codedisaster/steamworks/SteamController$Source;

    new-instance v0, Lcom/codedisaster/steamworks/SteamController$Source;

    move-object v15, v0

    const-string v1, "Mouse"

    move-object/from16 v19, v2

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamController$Source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamController$Source;->Mouse:Lcom/codedisaster/steamworks/SteamController$Source;

    new-instance v0, Lcom/codedisaster/steamworks/SteamController$Source;

    move-object/from16 v16, v0

    const-string v1, "LeftGyro"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamController$Source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamController$Source;->LeftGyro:Lcom/codedisaster/steamworks/SteamController$Source;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    filled-new-array/range {v0 .. v16}, [Lcom/codedisaster/steamworks/SteamController$Source;

    move-result-object v0

    sput-object v0, Lcom/codedisaster/steamworks/SteamController$Source;->$VALUES:[Lcom/codedisaster/steamworks/SteamController$Source;

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

.method public static valueOf(Ljava/lang/String;)Lcom/codedisaster/steamworks/SteamController$Source;
    .locals 1

    const-class v0, Lcom/codedisaster/steamworks/SteamController$Source;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/codedisaster/steamworks/SteamController$Source;

    return-object p0
.end method

.method public static values()[Lcom/codedisaster/steamworks/SteamController$Source;
    .locals 1

    sget-object v0, Lcom/codedisaster/steamworks/SteamController$Source;->$VALUES:[Lcom/codedisaster/steamworks/SteamController$Source;

    invoke-virtual {v0}, [Lcom/codedisaster/steamworks/SteamController$Source;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/codedisaster/steamworks/SteamController$Source;

    return-object v0
.end method
