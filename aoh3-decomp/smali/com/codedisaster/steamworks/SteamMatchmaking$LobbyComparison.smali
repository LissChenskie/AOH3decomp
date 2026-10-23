.class public final enum Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyComparison;
.super Ljava/lang/Enum;
.source "SteamMatchmaking.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codedisaster/steamworks/SteamMatchmaking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LobbyComparison"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyComparison;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyComparison;

.field public static final enum Equal:Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyComparison;

.field public static final enum EqualToOrGreaterThan:Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyComparison;

.field public static final enum EqualToOrLessThan:Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyComparison;

.field public static final enum GreaterThan:Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyComparison;

.field public static final enum LessThan:Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyComparison;

.field public static final enum NotEqual:Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyComparison;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyComparison;

    const/4 v1, -0x2

    const-string v2, "EqualToOrLessThan"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyComparison;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyComparison;->EqualToOrLessThan:Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyComparison;

    new-instance v1, Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyComparison;

    const/4 v2, -0x1

    const-string v4, "LessThan"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyComparison;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyComparison;->LessThan:Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyComparison;

    new-instance v2, Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyComparison;

    const-string v4, "Equal"

    const/4 v6, 0x2

    invoke-direct {v2, v4, v6, v3}, Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyComparison;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyComparison;->Equal:Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyComparison;

    new-instance v3, Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyComparison;

    const-string v4, "GreaterThan"

    const/4 v7, 0x3

    invoke-direct {v3, v4, v7, v5}, Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyComparison;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyComparison;->GreaterThan:Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyComparison;

    new-instance v4, Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyComparison;

    const-string v5, "EqualToOrGreaterThan"

    const/4 v8, 0x4

    invoke-direct {v4, v5, v8, v6}, Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyComparison;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyComparison;->EqualToOrGreaterThan:Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyComparison;

    new-instance v5, Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyComparison;

    const-string v6, "NotEqual"

    const/4 v8, 0x5

    invoke-direct {v5, v6, v8, v7}, Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyComparison;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyComparison;->NotEqual:Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyComparison;

    filled-new-array/range {v0 .. v5}, [Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyComparison;

    move-result-object v0

    sput-object v0, Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyComparison;->$VALUES:[Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyComparison;

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

    iput p3, p0, Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyComparison;->value:I

    return-void
.end method

.method static synthetic access$000(Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyComparison;)I
    .locals 0

    iget p0, p0, Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyComparison;->value:I

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyComparison;
    .locals 1

    const-class v0, Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyComparison;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyComparison;

    return-object p0
.end method

.method public static values()[Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyComparison;
    .locals 1

    sget-object v0, Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyComparison;->$VALUES:[Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyComparison;

    invoke-virtual {v0}, [Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyComparison;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyComparison;

    return-object v0
.end method
