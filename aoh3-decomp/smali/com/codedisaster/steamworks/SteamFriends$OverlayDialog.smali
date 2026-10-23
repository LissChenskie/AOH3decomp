.class public final enum Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;
.super Ljava/lang/Enum;
.source "SteamFriends.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codedisaster/steamworks/SteamFriends;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OverlayDialog"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;

.field public static final enum Achievements:Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;

.field public static final enum Community:Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;

.field public static final enum Friends:Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;

.field public static final enum OfficialGameGroup:Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;

.field public static final enum Players:Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;

.field public static final enum Settings:Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;

.field public static final enum Stats:Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;


# instance fields
.field private final id:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;

    const-string v1, "Friends"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;->Friends:Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;

    new-instance v1, Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;

    const-string v2, "Community"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v2}, Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;->Community:Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;

    new-instance v2, Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;

    const-string v3, "Players"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v3}, Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;->Players:Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;

    new-instance v3, Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;

    const-string v4, "Settings"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v4}, Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;->Settings:Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;

    new-instance v4, Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;

    const/4 v5, 0x0

    sget-object v5, Laoc/kingdoms/lukasz/menusEditor/RJR/ATsAGKCnv;->eggMOxuiHzFSoc:Ljava/lang/String;

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v5}, Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;->OfficialGameGroup:Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;

    new-instance v5, Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;

    const-string v6, "Stats"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v6}, Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;->Stats:Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;

    new-instance v6, Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;

    const-string v7, "Achievements"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8, v7}, Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;->Achievements:Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;

    filled-new-array/range {v0 .. v6}, [Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;

    move-result-object v0

    sput-object v0, Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;->$VALUES:[Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;->id:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;->id:Ljava/lang/String;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;
    .locals 1

    const-class v0, Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;

    return-object p0
.end method

.method public static values()[Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;
    .locals 1

    sget-object v0, Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;->$VALUES:[Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;

    invoke-virtual {v0}, [Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;

    return-object v0
.end method
