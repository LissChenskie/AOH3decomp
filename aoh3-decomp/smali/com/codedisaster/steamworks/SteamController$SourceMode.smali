.class public final enum Lcom/codedisaster/steamworks/SteamController$SourceMode;
.super Ljava/lang/Enum;
.source "SteamController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codedisaster/steamworks/SteamController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SourceMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/codedisaster/steamworks/SteamController$SourceMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/codedisaster/steamworks/SteamController$SourceMode;

.field public static final enum AbsoluteMouse:Lcom/codedisaster/steamworks/SteamController$SourceMode;

.field public static final enum Buttons:Lcom/codedisaster/steamworks/SteamController$SourceMode;

.field public static final enum Dpad:Lcom/codedisaster/steamworks/SteamController$SourceMode;

.field public static final enum FourButtons:Lcom/codedisaster/steamworks/SteamController$SourceMode;

.field public static final enum JoystickCamera:Lcom/codedisaster/steamworks/SteamController$SourceMode;

.field public static final enum JoystickMouse:Lcom/codedisaster/steamworks/SteamController$SourceMode;

.field public static final enum JoystickMove:Lcom/codedisaster/steamworks/SteamController$SourceMode;

.field public static final enum MouseJoystick:Lcom/codedisaster/steamworks/SteamController$SourceMode;

.field public static final enum MouseRegion:Lcom/codedisaster/steamworks/SteamController$SourceMode;

.field public static final enum None:Lcom/codedisaster/steamworks/SteamController$SourceMode;

.field public static final enum RadialMenu:Lcom/codedisaster/steamworks/SteamController$SourceMode;

.field public static final enum RelativeMouse:Lcom/codedisaster/steamworks/SteamController$SourceMode;

.field public static final enum ScrollWheel:Lcom/codedisaster/steamworks/SteamController$SourceMode;

.field public static final enum SingleButton:Lcom/codedisaster/steamworks/SteamController$SourceMode;

.field public static final enum Switches:Lcom/codedisaster/steamworks/SteamController$SourceMode;

.field public static final enum TouchMenu:Lcom/codedisaster/steamworks/SteamController$SourceMode;

.field public static final enum Trigger:Lcom/codedisaster/steamworks/SteamController$SourceMode;

.field private static final values:[Lcom/codedisaster/steamworks/SteamController$SourceMode;


# direct methods
.method static constructor <clinit>()V
    .locals 20

    new-instance v1, Lcom/codedisaster/steamworks/SteamController$SourceMode;

    move-object v0, v1

    const-string v2, "None"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/codedisaster/steamworks/SteamController$SourceMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/codedisaster/steamworks/SteamController$SourceMode;->None:Lcom/codedisaster/steamworks/SteamController$SourceMode;

    new-instance v2, Lcom/codedisaster/steamworks/SteamController$SourceMode;

    move-object v1, v2

    const-string v3, "Dpad"

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/codedisaster/steamworks/SteamController$SourceMode;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/codedisaster/steamworks/SteamController$SourceMode;->Dpad:Lcom/codedisaster/steamworks/SteamController$SourceMode;

    new-instance v3, Lcom/codedisaster/steamworks/SteamController$SourceMode;

    move-object v2, v3

    const-string v4, "Buttons"

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5}, Lcom/codedisaster/steamworks/SteamController$SourceMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/codedisaster/steamworks/SteamController$SourceMode;->Buttons:Lcom/codedisaster/steamworks/SteamController$SourceMode;

    new-instance v4, Lcom/codedisaster/steamworks/SteamController$SourceMode;

    move-object v3, v4

    const-string v5, "FourButtons"

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6}, Lcom/codedisaster/steamworks/SteamController$SourceMode;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/codedisaster/steamworks/SteamController$SourceMode;->FourButtons:Lcom/codedisaster/steamworks/SteamController$SourceMode;

    new-instance v5, Lcom/codedisaster/steamworks/SteamController$SourceMode;

    move-object v4, v5

    const-string v6, "AbsoluteMouse"

    const/4 v7, 0x4

    invoke-direct {v5, v6, v7}, Lcom/codedisaster/steamworks/SteamController$SourceMode;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/codedisaster/steamworks/SteamController$SourceMode;->AbsoluteMouse:Lcom/codedisaster/steamworks/SteamController$SourceMode;

    new-instance v6, Lcom/codedisaster/steamworks/SteamController$SourceMode;

    move-object v5, v6

    const-string v7, "RelativeMouse"

    const/4 v8, 0x5

    invoke-direct {v6, v7, v8}, Lcom/codedisaster/steamworks/SteamController$SourceMode;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/codedisaster/steamworks/SteamController$SourceMode;->RelativeMouse:Lcom/codedisaster/steamworks/SteamController$SourceMode;

    new-instance v7, Lcom/codedisaster/steamworks/SteamController$SourceMode;

    move-object v6, v7

    const-string v8, "JoystickMove"

    const/4 v9, 0x6

    invoke-direct {v7, v8, v9}, Lcom/codedisaster/steamworks/SteamController$SourceMode;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/codedisaster/steamworks/SteamController$SourceMode;->JoystickMove:Lcom/codedisaster/steamworks/SteamController$SourceMode;

    new-instance v8, Lcom/codedisaster/steamworks/SteamController$SourceMode;

    move-object v7, v8

    const-string v9, "JoystickMouse"

    const/4 v10, 0x7

    invoke-direct {v8, v9, v10}, Lcom/codedisaster/steamworks/SteamController$SourceMode;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/codedisaster/steamworks/SteamController$SourceMode;->JoystickMouse:Lcom/codedisaster/steamworks/SteamController$SourceMode;

    new-instance v9, Lcom/codedisaster/steamworks/SteamController$SourceMode;

    move-object v8, v9

    const-string v10, "JoystickCamera"

    const/16 v11, 0x8

    invoke-direct {v9, v10, v11}, Lcom/codedisaster/steamworks/SteamController$SourceMode;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/codedisaster/steamworks/SteamController$SourceMode;->JoystickCamera:Lcom/codedisaster/steamworks/SteamController$SourceMode;

    new-instance v10, Lcom/codedisaster/steamworks/SteamController$SourceMode;

    move-object v9, v10

    const-string v11, "ScrollWheel"

    const/16 v12, 0x9

    invoke-direct {v10, v11, v12}, Lcom/codedisaster/steamworks/SteamController$SourceMode;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/codedisaster/steamworks/SteamController$SourceMode;->ScrollWheel:Lcom/codedisaster/steamworks/SteamController$SourceMode;

    new-instance v11, Lcom/codedisaster/steamworks/SteamController$SourceMode;

    move-object v10, v11

    const-string v12, "Trigger"

    const/16 v13, 0xa

    invoke-direct {v11, v12, v13}, Lcom/codedisaster/steamworks/SteamController$SourceMode;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/codedisaster/steamworks/SteamController$SourceMode;->Trigger:Lcom/codedisaster/steamworks/SteamController$SourceMode;

    new-instance v12, Lcom/codedisaster/steamworks/SteamController$SourceMode;

    move-object v11, v12

    const-string v13, "TouchMenu"

    const/16 v14, 0xb

    invoke-direct {v12, v13, v14}, Lcom/codedisaster/steamworks/SteamController$SourceMode;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/codedisaster/steamworks/SteamController$SourceMode;->TouchMenu:Lcom/codedisaster/steamworks/SteamController$SourceMode;

    new-instance v13, Lcom/codedisaster/steamworks/SteamController$SourceMode;

    move-object v12, v13

    const-string v14, "MouseJoystick"

    const/16 v15, 0xc

    invoke-direct {v13, v14, v15}, Lcom/codedisaster/steamworks/SteamController$SourceMode;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/codedisaster/steamworks/SteamController$SourceMode;->MouseJoystick:Lcom/codedisaster/steamworks/SteamController$SourceMode;

    new-instance v14, Lcom/codedisaster/steamworks/SteamController$SourceMode;

    move-object v13, v14

    const-string v15, "MouseRegion"

    move-object/from16 v17, v0

    const/16 v0, 0xd

    invoke-direct {v14, v15, v0}, Lcom/codedisaster/steamworks/SteamController$SourceMode;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/codedisaster/steamworks/SteamController$SourceMode;->MouseRegion:Lcom/codedisaster/steamworks/SteamController$SourceMode;

    new-instance v0, Lcom/codedisaster/steamworks/SteamController$SourceMode;

    move-object v14, v0

    const-string v15, "RadialMenu"

    move-object/from16 v18, v1

    const/16 v1, 0xe

    invoke-direct {v0, v15, v1}, Lcom/codedisaster/steamworks/SteamController$SourceMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamController$SourceMode;->RadialMenu:Lcom/codedisaster/steamworks/SteamController$SourceMode;

    new-instance v0, Lcom/codedisaster/steamworks/SteamController$SourceMode;

    move-object v15, v0

    const-string v1, "SingleButton"

    move-object/from16 v19, v2

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamController$SourceMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamController$SourceMode;->SingleButton:Lcom/codedisaster/steamworks/SteamController$SourceMode;

    new-instance v0, Lcom/codedisaster/steamworks/SteamController$SourceMode;

    move-object/from16 v16, v0

    const-string v1, "Switches"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamController$SourceMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamController$SourceMode;->Switches:Lcom/codedisaster/steamworks/SteamController$SourceMode;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    filled-new-array/range {v0 .. v16}, [Lcom/codedisaster/steamworks/SteamController$SourceMode;

    move-result-object v0

    sput-object v0, Lcom/codedisaster/steamworks/SteamController$SourceMode;->$VALUES:[Lcom/codedisaster/steamworks/SteamController$SourceMode;

    invoke-static {}, Lcom/codedisaster/steamworks/SteamController$SourceMode;->values()[Lcom/codedisaster/steamworks/SteamController$SourceMode;

    move-result-object v0

    sput-object v0, Lcom/codedisaster/steamworks/SteamController$SourceMode;->values:[Lcom/codedisaster/steamworks/SteamController$SourceMode;

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

.method static byOrdinal(I)Lcom/codedisaster/steamworks/SteamController$SourceMode;
    .locals 1

    sget-object v0, Lcom/codedisaster/steamworks/SteamController$SourceMode;->values:[Lcom/codedisaster/steamworks/SteamController$SourceMode;

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/codedisaster/steamworks/SteamController$SourceMode;
    .locals 1

    const-class v0, Lcom/codedisaster/steamworks/SteamController$SourceMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/codedisaster/steamworks/SteamController$SourceMode;

    return-object p0
.end method

.method public static values()[Lcom/codedisaster/steamworks/SteamController$SourceMode;
    .locals 1

    sget-object v0, Lcom/codedisaster/steamworks/SteamController$SourceMode;->$VALUES:[Lcom/codedisaster/steamworks/SteamController$SourceMode;

    invoke-virtual {v0}, [Lcom/codedisaster/steamworks/SteamController$SourceMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/codedisaster/steamworks/SteamController$SourceMode;

    return-object v0
.end method
