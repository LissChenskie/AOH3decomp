.class public final enum Lcom/codedisaster/steamworks/SteamHTTP$HTTPMethod;
.super Ljava/lang/Enum;
.source "SteamHTTP.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codedisaster/steamworks/SteamHTTP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HTTPMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/codedisaster/steamworks/SteamHTTP$HTTPMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/codedisaster/steamworks/SteamHTTP$HTTPMethod;

.field public static final enum DELETE:Lcom/codedisaster/steamworks/SteamHTTP$HTTPMethod;

.field public static final enum GET:Lcom/codedisaster/steamworks/SteamHTTP$HTTPMethod;

.field public static final enum HEAD:Lcom/codedisaster/steamworks/SteamHTTP$HTTPMethod;

.field public static final enum Invalid:Lcom/codedisaster/steamworks/SteamHTTP$HTTPMethod;

.field public static final enum OPTIONS:Lcom/codedisaster/steamworks/SteamHTTP$HTTPMethod;

.field public static final enum POST:Lcom/codedisaster/steamworks/SteamHTTP$HTTPMethod;

.field public static final enum PUT:Lcom/codedisaster/steamworks/SteamHTTP$HTTPMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPMethod;

    const-string v1, "Invalid"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamHTTP$HTTPMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPMethod;->Invalid:Lcom/codedisaster/steamworks/SteamHTTP$HTTPMethod;

    new-instance v1, Lcom/codedisaster/steamworks/SteamHTTP$HTTPMethod;

    const-string v2, "GET"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/codedisaster/steamworks/SteamHTTP$HTTPMethod;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/codedisaster/steamworks/SteamHTTP$HTTPMethod;->GET:Lcom/codedisaster/steamworks/SteamHTTP$HTTPMethod;

    new-instance v2, Lcom/codedisaster/steamworks/SteamHTTP$HTTPMethod;

    const-string v3, "HEAD"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/codedisaster/steamworks/SteamHTTP$HTTPMethod;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/codedisaster/steamworks/SteamHTTP$HTTPMethod;->HEAD:Lcom/codedisaster/steamworks/SteamHTTP$HTTPMethod;

    new-instance v3, Lcom/codedisaster/steamworks/SteamHTTP$HTTPMethod;

    const-string v4, "POST"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/codedisaster/steamworks/SteamHTTP$HTTPMethod;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/codedisaster/steamworks/SteamHTTP$HTTPMethod;->POST:Lcom/codedisaster/steamworks/SteamHTTP$HTTPMethod;

    new-instance v4, Lcom/codedisaster/steamworks/SteamHTTP$HTTPMethod;

    const-string v5, "PUT"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/codedisaster/steamworks/SteamHTTP$HTTPMethod;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/codedisaster/steamworks/SteamHTTP$HTTPMethod;->PUT:Lcom/codedisaster/steamworks/SteamHTTP$HTTPMethod;

    new-instance v5, Lcom/codedisaster/steamworks/SteamHTTP$HTTPMethod;

    const-string v6, "DELETE"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/codedisaster/steamworks/SteamHTTP$HTTPMethod;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/codedisaster/steamworks/SteamHTTP$HTTPMethod;->DELETE:Lcom/codedisaster/steamworks/SteamHTTP$HTTPMethod;

    new-instance v6, Lcom/codedisaster/steamworks/SteamHTTP$HTTPMethod;

    const-string v7, "OPTIONS"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/codedisaster/steamworks/SteamHTTP$HTTPMethod;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/codedisaster/steamworks/SteamHTTP$HTTPMethod;->OPTIONS:Lcom/codedisaster/steamworks/SteamHTTP$HTTPMethod;

    filled-new-array/range {v0 .. v6}, [Lcom/codedisaster/steamworks/SteamHTTP$HTTPMethod;

    move-result-object v0

    sput-object v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPMethod;->$VALUES:[Lcom/codedisaster/steamworks/SteamHTTP$HTTPMethod;

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

.method public static valueOf(Ljava/lang/String;)Lcom/codedisaster/steamworks/SteamHTTP$HTTPMethod;
    .locals 1

    const-class v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPMethod;

    return-object p0
.end method

.method public static values()[Lcom/codedisaster/steamworks/SteamHTTP$HTTPMethod;
    .locals 1

    sget-object v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPMethod;->$VALUES:[Lcom/codedisaster/steamworks/SteamHTTP$HTTPMethod;

    invoke-virtual {v0}, [Lcom/codedisaster/steamworks/SteamHTTP$HTTPMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/codedisaster/steamworks/SteamHTTP$HTTPMethod;

    return-object v0
.end method
