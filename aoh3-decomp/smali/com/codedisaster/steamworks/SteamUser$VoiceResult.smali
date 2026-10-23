.class public final enum Lcom/codedisaster/steamworks/SteamUser$VoiceResult;
.super Ljava/lang/Enum;
.source "SteamUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codedisaster/steamworks/SteamUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VoiceResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/codedisaster/steamworks/SteamUser$VoiceResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/codedisaster/steamworks/SteamUser$VoiceResult;

.field public static final enum BufferTooSmall:Lcom/codedisaster/steamworks/SteamUser$VoiceResult;

.field public static final enum DataCorrupted:Lcom/codedisaster/steamworks/SteamUser$VoiceResult;

.field public static final enum NoData:Lcom/codedisaster/steamworks/SteamUser$VoiceResult;

.field public static final enum NotInitialized:Lcom/codedisaster/steamworks/SteamUser$VoiceResult;

.field public static final enum NotRecording:Lcom/codedisaster/steamworks/SteamUser$VoiceResult;

.field public static final enum OK:Lcom/codedisaster/steamworks/SteamUser$VoiceResult;

.field public static final enum ReceiverDidNotAnswer:Lcom/codedisaster/steamworks/SteamUser$VoiceResult;

.field public static final enum ReceiverOutOfDate:Lcom/codedisaster/steamworks/SteamUser$VoiceResult;

.field public static final enum Restricted:Lcom/codedisaster/steamworks/SteamUser$VoiceResult;

.field public static final enum UnsupportedCodec:Lcom/codedisaster/steamworks/SteamUser$VoiceResult;

.field private static final values:[Lcom/codedisaster/steamworks/SteamUser$VoiceResult;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/codedisaster/steamworks/SteamUser$VoiceResult;

    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamUser$VoiceResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamUser$VoiceResult;->OK:Lcom/codedisaster/steamworks/SteamUser$VoiceResult;

    new-instance v1, Lcom/codedisaster/steamworks/SteamUser$VoiceResult;

    const-string v2, "NotInitialized"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/codedisaster/steamworks/SteamUser$VoiceResult;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/codedisaster/steamworks/SteamUser$VoiceResult;->NotInitialized:Lcom/codedisaster/steamworks/SteamUser$VoiceResult;

    new-instance v2, Lcom/codedisaster/steamworks/SteamUser$VoiceResult;

    const-string v3, "NotRecording"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/codedisaster/steamworks/SteamUser$VoiceResult;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/codedisaster/steamworks/SteamUser$VoiceResult;->NotRecording:Lcom/codedisaster/steamworks/SteamUser$VoiceResult;

    new-instance v3, Lcom/codedisaster/steamworks/SteamUser$VoiceResult;

    const-string v4, "NoData"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/codedisaster/steamworks/SteamUser$VoiceResult;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/codedisaster/steamworks/SteamUser$VoiceResult;->NoData:Lcom/codedisaster/steamworks/SteamUser$VoiceResult;

    new-instance v4, Lcom/codedisaster/steamworks/SteamUser$VoiceResult;

    const/4 v5, 0x0

    sget-object v5, Lcom/google/android/gms/internal/tasks/Vhe/SwmJtrccN;->zaNnfHTj:Ljava/lang/String;

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/codedisaster/steamworks/SteamUser$VoiceResult;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/codedisaster/steamworks/SteamUser$VoiceResult;->BufferTooSmall:Lcom/codedisaster/steamworks/SteamUser$VoiceResult;

    new-instance v5, Lcom/codedisaster/steamworks/SteamUser$VoiceResult;

    const-string v6, "DataCorrupted"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/codedisaster/steamworks/SteamUser$VoiceResult;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/codedisaster/steamworks/SteamUser$VoiceResult;->DataCorrupted:Lcom/codedisaster/steamworks/SteamUser$VoiceResult;

    new-instance v6, Lcom/codedisaster/steamworks/SteamUser$VoiceResult;

    const-string v7, "Restricted"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/codedisaster/steamworks/SteamUser$VoiceResult;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/codedisaster/steamworks/SteamUser$VoiceResult;->Restricted:Lcom/codedisaster/steamworks/SteamUser$VoiceResult;

    new-instance v7, Lcom/codedisaster/steamworks/SteamUser$VoiceResult;

    const-string v8, "UnsupportedCodec"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/codedisaster/steamworks/SteamUser$VoiceResult;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/codedisaster/steamworks/SteamUser$VoiceResult;->UnsupportedCodec:Lcom/codedisaster/steamworks/SteamUser$VoiceResult;

    new-instance v8, Lcom/codedisaster/steamworks/SteamUser$VoiceResult;

    const-string v9, "ReceiverOutOfDate"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lcom/codedisaster/steamworks/SteamUser$VoiceResult;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/codedisaster/steamworks/SteamUser$VoiceResult;->ReceiverOutOfDate:Lcom/codedisaster/steamworks/SteamUser$VoiceResult;

    new-instance v9, Lcom/codedisaster/steamworks/SteamUser$VoiceResult;

    const-string v10, "ReceiverDidNotAnswer"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Lcom/codedisaster/steamworks/SteamUser$VoiceResult;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/codedisaster/steamworks/SteamUser$VoiceResult;->ReceiverDidNotAnswer:Lcom/codedisaster/steamworks/SteamUser$VoiceResult;

    filled-new-array/range {v0 .. v9}, [Lcom/codedisaster/steamworks/SteamUser$VoiceResult;

    move-result-object v0

    sput-object v0, Lcom/codedisaster/steamworks/SteamUser$VoiceResult;->$VALUES:[Lcom/codedisaster/steamworks/SteamUser$VoiceResult;

    invoke-static {}, Lcom/codedisaster/steamworks/SteamUser$VoiceResult;->values()[Lcom/codedisaster/steamworks/SteamUser$VoiceResult;

    move-result-object v0

    sput-object v0, Lcom/codedisaster/steamworks/SteamUser$VoiceResult;->values:[Lcom/codedisaster/steamworks/SteamUser$VoiceResult;

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

.method static byOrdinal(I)Lcom/codedisaster/steamworks/SteamUser$VoiceResult;
    .locals 1

    sget-object v0, Lcom/codedisaster/steamworks/SteamUser$VoiceResult;->values:[Lcom/codedisaster/steamworks/SteamUser$VoiceResult;

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/codedisaster/steamworks/SteamUser$VoiceResult;
    .locals 1

    const-class v0, Lcom/codedisaster/steamworks/SteamUser$VoiceResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/codedisaster/steamworks/SteamUser$VoiceResult;

    return-object p0
.end method

.method public static values()[Lcom/codedisaster/steamworks/SteamUser$VoiceResult;
    .locals 1

    sget-object v0, Lcom/codedisaster/steamworks/SteamUser$VoiceResult;->$VALUES:[Lcom/codedisaster/steamworks/SteamUser$VoiceResult;

    invoke-virtual {v0}, [Lcom/codedisaster/steamworks/SteamUser$VoiceResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/codedisaster/steamworks/SteamUser$VoiceResult;

    return-object v0
.end method
