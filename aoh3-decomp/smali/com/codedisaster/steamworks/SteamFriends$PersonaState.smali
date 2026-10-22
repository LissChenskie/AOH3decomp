.class public final enum Lcom/codedisaster/steamworks/SteamFriends$PersonaState;
.super Ljava/lang/Enum;
.source "SteamFriends.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codedisaster/steamworks/SteamFriends;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PersonaState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/codedisaster/steamworks/SteamFriends$PersonaState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/codedisaster/steamworks/SteamFriends$PersonaState;

.field public static final enum Away:Lcom/codedisaster/steamworks/SteamFriends$PersonaState;

.field public static final enum Busy:Lcom/codedisaster/steamworks/SteamFriends$PersonaState;

.field public static final enum Invisible:Lcom/codedisaster/steamworks/SteamFriends$PersonaState;

.field public static final enum LookingToPlay:Lcom/codedisaster/steamworks/SteamFriends$PersonaState;

.field public static final enum LookingToTrade:Lcom/codedisaster/steamworks/SteamFriends$PersonaState;

.field public static final enum Offline:Lcom/codedisaster/steamworks/SteamFriends$PersonaState;

.field public static final enum Online:Lcom/codedisaster/steamworks/SteamFriends$PersonaState;

.field public static final enum Snooze:Lcom/codedisaster/steamworks/SteamFriends$PersonaState;

.field private static final values:[Lcom/codedisaster/steamworks/SteamFriends$PersonaState;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/codedisaster/steamworks/SteamFriends$PersonaState;

    const-string v1, "Offline"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamFriends$PersonaState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamFriends$PersonaState;->Offline:Lcom/codedisaster/steamworks/SteamFriends$PersonaState;

    new-instance v1, Lcom/codedisaster/steamworks/SteamFriends$PersonaState;

    const-string v2, "Online"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/codedisaster/steamworks/SteamFriends$PersonaState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/codedisaster/steamworks/SteamFriends$PersonaState;->Online:Lcom/codedisaster/steamworks/SteamFriends$PersonaState;

    new-instance v2, Lcom/codedisaster/steamworks/SteamFriends$PersonaState;

    const-string v3, "Busy"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/codedisaster/steamworks/SteamFriends$PersonaState;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/codedisaster/steamworks/SteamFriends$PersonaState;->Busy:Lcom/codedisaster/steamworks/SteamFriends$PersonaState;

    new-instance v3, Lcom/codedisaster/steamworks/SteamFriends$PersonaState;

    const-string v4, "Away"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/codedisaster/steamworks/SteamFriends$PersonaState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/codedisaster/steamworks/SteamFriends$PersonaState;->Away:Lcom/codedisaster/steamworks/SteamFriends$PersonaState;

    new-instance v4, Lcom/codedisaster/steamworks/SteamFriends$PersonaState;

    const-string v5, "Snooze"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/codedisaster/steamworks/SteamFriends$PersonaState;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/codedisaster/steamworks/SteamFriends$PersonaState;->Snooze:Lcom/codedisaster/steamworks/SteamFriends$PersonaState;

    new-instance v5, Lcom/codedisaster/steamworks/SteamFriends$PersonaState;

    const-string v6, "LookingToTrade"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/codedisaster/steamworks/SteamFriends$PersonaState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/codedisaster/steamworks/SteamFriends$PersonaState;->LookingToTrade:Lcom/codedisaster/steamworks/SteamFriends$PersonaState;

    new-instance v6, Lcom/codedisaster/steamworks/SteamFriends$PersonaState;

    const/4 v7, 0x0

    sget-object v7, Laoc/kingdoms/lukasz/map/allianceHRE/JgPF/HTGgowNjn;->kLUzEFDcPPVzXx:Ljava/lang/String;

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/codedisaster/steamworks/SteamFriends$PersonaState;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/codedisaster/steamworks/SteamFriends$PersonaState;->LookingToPlay:Lcom/codedisaster/steamworks/SteamFriends$PersonaState;

    new-instance v7, Lcom/codedisaster/steamworks/SteamFriends$PersonaState;

    const-string v8, "Invisible"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/codedisaster/steamworks/SteamFriends$PersonaState;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/codedisaster/steamworks/SteamFriends$PersonaState;->Invisible:Lcom/codedisaster/steamworks/SteamFriends$PersonaState;

    filled-new-array/range {v0 .. v7}, [Lcom/codedisaster/steamworks/SteamFriends$PersonaState;

    move-result-object v0

    sput-object v0, Lcom/codedisaster/steamworks/SteamFriends$PersonaState;->$VALUES:[Lcom/codedisaster/steamworks/SteamFriends$PersonaState;

    invoke-static {}, Lcom/codedisaster/steamworks/SteamFriends$PersonaState;->values()[Lcom/codedisaster/steamworks/SteamFriends$PersonaState;

    move-result-object v0

    sput-object v0, Lcom/codedisaster/steamworks/SteamFriends$PersonaState;->values:[Lcom/codedisaster/steamworks/SteamFriends$PersonaState;

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

.method static byOrdinal(I)Lcom/codedisaster/steamworks/SteamFriends$PersonaState;
    .locals 1

    sget-object v0, Lcom/codedisaster/steamworks/SteamFriends$PersonaState;->values:[Lcom/codedisaster/steamworks/SteamFriends$PersonaState;

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/codedisaster/steamworks/SteamFriends$PersonaState;
    .locals 1

    const-class v0, Lcom/codedisaster/steamworks/SteamFriends$PersonaState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/codedisaster/steamworks/SteamFriends$PersonaState;

    return-object p0
.end method

.method public static values()[Lcom/codedisaster/steamworks/SteamFriends$PersonaState;
    .locals 1

    sget-object v0, Lcom/codedisaster/steamworks/SteamFriends$PersonaState;->$VALUES:[Lcom/codedisaster/steamworks/SteamFriends$PersonaState;

    invoke-virtual {v0}, [Lcom/codedisaster/steamworks/SteamFriends$PersonaState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/codedisaster/steamworks/SteamFriends$PersonaState;

    return-object v0
.end method
