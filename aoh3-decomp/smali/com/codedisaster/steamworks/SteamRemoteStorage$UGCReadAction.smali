.class public final enum Lcom/codedisaster/steamworks/SteamRemoteStorage$UGCReadAction;
.super Ljava/lang/Enum;
.source "SteamRemoteStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codedisaster/steamworks/SteamRemoteStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UGCReadAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/codedisaster/steamworks/SteamRemoteStorage$UGCReadAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/codedisaster/steamworks/SteamRemoteStorage$UGCReadAction;

.field public static final enum Close:Lcom/codedisaster/steamworks/SteamRemoteStorage$UGCReadAction;

.field public static final enum ContinueReading:Lcom/codedisaster/steamworks/SteamRemoteStorage$UGCReadAction;

.field public static final enum ContinueReadingUntilFinished:Lcom/codedisaster/steamworks/SteamRemoteStorage$UGCReadAction;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/codedisaster/steamworks/SteamRemoteStorage$UGCReadAction;

    const/4 v1, 0x0

    sget-object v1, Laoc/kingdoms/lukasz/menusInGame/DrawOver/SQ/XjthpFh;->KyzqcpMjsYtm:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamRemoteStorage$UGCReadAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamRemoteStorage$UGCReadAction;->ContinueReadingUntilFinished:Lcom/codedisaster/steamworks/SteamRemoteStorage$UGCReadAction;

    new-instance v1, Lcom/codedisaster/steamworks/SteamRemoteStorage$UGCReadAction;

    const-string v2, "ContinueReading"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/codedisaster/steamworks/SteamRemoteStorage$UGCReadAction;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/codedisaster/steamworks/SteamRemoteStorage$UGCReadAction;->ContinueReading:Lcom/codedisaster/steamworks/SteamRemoteStorage$UGCReadAction;

    new-instance v2, Lcom/codedisaster/steamworks/SteamRemoteStorage$UGCReadAction;

    const-string v3, "Close"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/codedisaster/steamworks/SteamRemoteStorage$UGCReadAction;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/codedisaster/steamworks/SteamRemoteStorage$UGCReadAction;->Close:Lcom/codedisaster/steamworks/SteamRemoteStorage$UGCReadAction;

    filled-new-array {v0, v1, v2}, [Lcom/codedisaster/steamworks/SteamRemoteStorage$UGCReadAction;

    move-result-object v0

    sput-object v0, Lcom/codedisaster/steamworks/SteamRemoteStorage$UGCReadAction;->$VALUES:[Lcom/codedisaster/steamworks/SteamRemoteStorage$UGCReadAction;

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

.method public static valueOf(Ljava/lang/String;)Lcom/codedisaster/steamworks/SteamRemoteStorage$UGCReadAction;
    .locals 1

    const-class v0, Lcom/codedisaster/steamworks/SteamRemoteStorage$UGCReadAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/codedisaster/steamworks/SteamRemoteStorage$UGCReadAction;

    return-object p0
.end method

.method public static values()[Lcom/codedisaster/steamworks/SteamRemoteStorage$UGCReadAction;
    .locals 1

    sget-object v0, Lcom/codedisaster/steamworks/SteamRemoteStorage$UGCReadAction;->$VALUES:[Lcom/codedisaster/steamworks/SteamRemoteStorage$UGCReadAction;

    invoke-virtual {v0}, [Lcom/codedisaster/steamworks/SteamRemoteStorage$UGCReadAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/codedisaster/steamworks/SteamRemoteStorage$UGCReadAction;

    return-object v0
.end method
