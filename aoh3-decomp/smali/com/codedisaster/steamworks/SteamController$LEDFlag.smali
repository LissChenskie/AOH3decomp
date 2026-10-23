.class public final enum Lcom/codedisaster/steamworks/SteamController$LEDFlag;
.super Ljava/lang/Enum;
.source "SteamController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codedisaster/steamworks/SteamController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LEDFlag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/codedisaster/steamworks/SteamController$LEDFlag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/codedisaster/steamworks/SteamController$LEDFlag;

.field public static final enum RestoreUserDefault:Lcom/codedisaster/steamworks/SteamController$LEDFlag;

.field public static final enum SetColor:Lcom/codedisaster/steamworks/SteamController$LEDFlag;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/codedisaster/steamworks/SteamController$LEDFlag;

    const-string v1, "SetColor"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamController$LEDFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamController$LEDFlag;->SetColor:Lcom/codedisaster/steamworks/SteamController$LEDFlag;

    new-instance v1, Lcom/codedisaster/steamworks/SteamController$LEDFlag;

    const-string v2, "RestoreUserDefault"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/codedisaster/steamworks/SteamController$LEDFlag;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/codedisaster/steamworks/SteamController$LEDFlag;->RestoreUserDefault:Lcom/codedisaster/steamworks/SteamController$LEDFlag;

    filled-new-array {v0, v1}, [Lcom/codedisaster/steamworks/SteamController$LEDFlag;

    move-result-object v0

    sput-object v0, Lcom/codedisaster/steamworks/SteamController$LEDFlag;->$VALUES:[Lcom/codedisaster/steamworks/SteamController$LEDFlag;

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

.method public static valueOf(Ljava/lang/String;)Lcom/codedisaster/steamworks/SteamController$LEDFlag;
    .locals 1

    const-class v0, Lcom/codedisaster/steamworks/SteamController$LEDFlag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/codedisaster/steamworks/SteamController$LEDFlag;

    return-object p0
.end method

.method public static values()[Lcom/codedisaster/steamworks/SteamController$LEDFlag;
    .locals 1

    sget-object v0, Lcom/codedisaster/steamworks/SteamController$LEDFlag;->$VALUES:[Lcom/codedisaster/steamworks/SteamController$LEDFlag;

    invoke-virtual {v0}, [Lcom/codedisaster/steamworks/SteamController$LEDFlag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/codedisaster/steamworks/SteamController$LEDFlag;

    return-object v0
.end method
