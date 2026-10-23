.class public final enum Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;
.super Ljava/lang/Enum;
.source "SteamHTTP.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codedisaster/steamworks/SteamHTTP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HTTPStatusCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

.field public static final enum Accepted:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

.field public static final enum BadGateway:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

.field public static final enum BadRequest:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

.field public static final enum Conflict:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

.field public static final enum Continue:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

.field public static final enum Created:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

.field public static final enum ExpectationFailed:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

.field public static final enum Forbidden:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

.field public static final enum Found:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

.field public static final enum GatewayTimeout:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

.field public static final enum Gone:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

.field public static final enum HTTPVersionNotSupported:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

.field public static final enum InternalServerError:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

.field public static final enum Invalid:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

.field public static final enum LengthRequired:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

.field public static final enum MethodNotAllowed:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

.field public static final enum MovedPermanently:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

.field public static final enum MultipleChoices:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

.field public static final enum NoContent:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

.field public static final enum NonAuthoritative:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

.field public static final enum NotAcceptable:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

.field public static final enum NotFound:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

.field public static final enum NotImplemented:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

.field public static final enum NotModified:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

.field public static final enum OK:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

.field public static final enum PartialContent:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

.field public static final enum PaymentRequired:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

.field public static final enum PreconditionFailed:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

.field public static final enum ProxyAuthRequired:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

.field public static final enum RequestEntityTooLarge:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

.field public static final enum RequestTimeout:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

.field public static final enum RequestURITooLong:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

.field public static final enum RequestedRangeNotSatisfiable:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

.field public static final enum ResetContent:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

.field public static final enum SeeOther:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

.field public static final enum ServiceUnavailable:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

.field public static final enum SwitchingProtocols:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

.field public static final enum TemporaryRedirect:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

.field public static final enum TooManyRequests:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

.field public static final enum Unauthorized:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

.field public static final enum Unknown4xx:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

.field public static final enum Unknown5xx:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

.field public static final enum UnsupportedMediaType:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

.field public static final enum UseProxy:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

.field private static final values:[Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;


# instance fields
.field private final code:I


# direct methods
.method static constructor <clinit>()V
    .locals 48

    new-instance v1, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    move-object v0, v1

    const-string v2, "Invalid"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->Invalid:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    new-instance v2, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    move-object v1, v2

    const/4 v3, 0x1

    const/16 v4, 0x64

    const-string v5, "Continue"

    invoke-direct {v2, v5, v3, v4}, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->Continue:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    new-instance v3, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    move-object v2, v3

    const/4 v4, 0x2

    const/16 v5, 0x65

    const-string v6, "SwitchingProtocols"

    invoke-direct {v3, v6, v4, v5}, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->SwitchingProtocols:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    new-instance v4, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    move-object v3, v4

    const/4 v5, 0x3

    const/16 v6, 0xc8

    const-string v7, "OK"

    invoke-direct {v4, v7, v5, v6}, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->OK:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    new-instance v5, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    move-object v4, v5

    const/4 v6, 0x4

    const/16 v7, 0xc9

    const-string v8, "Created"

    invoke-direct {v5, v8, v6, v7}, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->Created:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    new-instance v6, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    move-object v5, v6

    const/4 v7, 0x5

    const/16 v8, 0xca

    const-string v9, "Accepted"

    invoke-direct {v6, v9, v7, v8}, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->Accepted:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    new-instance v7, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    move-object v6, v7

    const/4 v8, 0x6

    const/16 v9, 0xcb

    const-string v10, "NonAuthoritative"

    invoke-direct {v7, v10, v8, v9}, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->NonAuthoritative:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    new-instance v8, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    move-object v7, v8

    const/4 v9, 0x7

    const/16 v10, 0xcc

    const-string v11, "NoContent"

    invoke-direct {v8, v11, v9, v10}, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->NoContent:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    new-instance v9, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    move-object v8, v9

    const/16 v10, 0x8

    const/16 v11, 0xcd

    const-string v12, "ResetContent"

    invoke-direct {v9, v12, v10, v11}, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->ResetContent:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    new-instance v10, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    move-object v9, v10

    const/16 v11, 0x9

    const/16 v12, 0xce

    const-string v13, "PartialContent"

    invoke-direct {v10, v13, v11, v12}, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->PartialContent:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    new-instance v11, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    move-object v10, v11

    const/16 v12, 0xa

    const/16 v13, 0x12c

    const-string v14, "MultipleChoices"

    invoke-direct {v11, v14, v12, v13}, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->MultipleChoices:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    new-instance v12, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    move-object v11, v12

    const/16 v13, 0xb

    const/16 v14, 0x12d

    const-string v15, "MovedPermanently"

    invoke-direct {v12, v15, v13, v14}, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->MovedPermanently:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    new-instance v13, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    move-object v12, v13

    const/16 v14, 0xc

    const/16 v15, 0x12e

    move-object/from16 v44, v0

    const-string v0, "Found"

    invoke-direct {v13, v0, v14, v15}, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->Found:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    new-instance v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    move-object v13, v0

    const/16 v14, 0xd

    const/16 v15, 0x12f

    move-object/from16 v45, v1

    const-string v1, "SeeOther"

    invoke-direct {v0, v1, v14, v15}, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->SeeOther:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    new-instance v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    move-object v14, v0

    const/16 v1, 0xe

    const/16 v15, 0x130

    move-object/from16 v46, v2

    const-string v2, "NotModified"

    invoke-direct {v0, v2, v1, v15}, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->NotModified:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    new-instance v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    move-object v15, v0

    const/16 v1, 0xf

    const/16 v2, 0x131

    move-object/from16 v47, v3

    const-string v3, "UseProxy"

    invoke-direct {v0, v3, v1, v2}, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->UseProxy:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    new-instance v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    move-object/from16 v16, v0

    const/16 v1, 0x10

    const/16 v2, 0x133

    const-string v3, "TemporaryRedirect"

    invoke-direct {v0, v3, v1, v2}, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->TemporaryRedirect:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    new-instance v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    move-object/from16 v17, v0

    const/16 v1, 0x11

    const/16 v2, 0x190

    const-string v3, "BadRequest"

    invoke-direct {v0, v3, v1, v2}, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->BadRequest:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    new-instance v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    move-object/from16 v18, v0

    const/16 v1, 0x12

    const/16 v2, 0x191

    const-string v3, "Unauthorized"

    invoke-direct {v0, v3, v1, v2}, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->Unauthorized:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    new-instance v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    move-object/from16 v19, v0

    const/16 v1, 0x13

    const/16 v2, 0x192

    const-string v3, "PaymentRequired"

    invoke-direct {v0, v3, v1, v2}, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->PaymentRequired:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    new-instance v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    move-object/from16 v20, v0

    const/16 v1, 0x14

    const/16 v2, 0x193

    const-string v3, "Forbidden"

    invoke-direct {v0, v3, v1, v2}, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->Forbidden:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    new-instance v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    move-object/from16 v21, v0

    const/16 v1, 0x15

    const/16 v2, 0x194

    const-string v3, "NotFound"

    invoke-direct {v0, v3, v1, v2}, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->NotFound:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    new-instance v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    move-object/from16 v22, v0

    const/16 v1, 0x16

    const/16 v2, 0x195

    const-string v3, "MethodNotAllowed"

    invoke-direct {v0, v3, v1, v2}, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->MethodNotAllowed:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    new-instance v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    move-object/from16 v23, v0

    const/16 v1, 0x17

    const/16 v2, 0x196

    const-string v3, "NotAcceptable"

    invoke-direct {v0, v3, v1, v2}, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->NotAcceptable:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    new-instance v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    move-object/from16 v24, v0

    const/16 v1, 0x18

    const/16 v2, 0x197

    const-string v3, "ProxyAuthRequired"

    invoke-direct {v0, v3, v1, v2}, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->ProxyAuthRequired:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    new-instance v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    move-object/from16 v25, v0

    const/16 v1, 0x19

    const/16 v2, 0x198

    const-string v3, "RequestTimeout"

    invoke-direct {v0, v3, v1, v2}, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->RequestTimeout:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    new-instance v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    move-object/from16 v26, v0

    const/16 v1, 0x1a

    const/16 v2, 0x199

    const-string v3, "Conflict"

    invoke-direct {v0, v3, v1, v2}, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->Conflict:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    new-instance v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    move-object/from16 v27, v0

    const/16 v1, 0x1b

    const/16 v2, 0x19a

    const-string v3, "Gone"

    invoke-direct {v0, v3, v1, v2}, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->Gone:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    new-instance v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    move-object/from16 v28, v0

    const/16 v1, 0x1c

    const/16 v2, 0x19b

    const-string v3, "LengthRequired"

    invoke-direct {v0, v3, v1, v2}, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->LengthRequired:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    new-instance v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    move-object/from16 v29, v0

    const/16 v1, 0x1d

    const/16 v2, 0x19c

    const-string v3, "PreconditionFailed"

    invoke-direct {v0, v3, v1, v2}, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->PreconditionFailed:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    new-instance v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    move-object/from16 v30, v0

    const/16 v1, 0x1e

    const/16 v2, 0x19d

    const-string v3, "RequestEntityTooLarge"

    invoke-direct {v0, v3, v1, v2}, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->RequestEntityTooLarge:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    new-instance v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    move-object/from16 v31, v0

    const/16 v1, 0x1f

    const/16 v2, 0x19e

    const-string v3, "RequestURITooLong"

    invoke-direct {v0, v3, v1, v2}, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->RequestURITooLong:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    new-instance v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    move-object/from16 v32, v0

    const/16 v1, 0x20

    const/16 v2, 0x19f

    const-string v3, "UnsupportedMediaType"

    invoke-direct {v0, v3, v1, v2}, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->UnsupportedMediaType:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    new-instance v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    move-object/from16 v33, v0

    const/16 v1, 0x21

    const/16 v2, 0x1a0

    const-string v3, "RequestedRangeNotSatisfiable"

    invoke-direct {v0, v3, v1, v2}, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->RequestedRangeNotSatisfiable:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    new-instance v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    move-object/from16 v34, v0

    const/16 v1, 0x22

    const/16 v2, 0x1a1

    const-string v3, "ExpectationFailed"

    invoke-direct {v0, v3, v1, v2}, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->ExpectationFailed:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    new-instance v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    move-object/from16 v35, v0

    const/16 v1, 0x23

    const/16 v2, 0x1a2

    const-string v3, "Unknown4xx"

    invoke-direct {v0, v3, v1, v2}, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->Unknown4xx:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    new-instance v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    move-object/from16 v36, v0

    const/16 v1, 0x24

    const/16 v2, 0x1ad

    const-string v3, "TooManyRequests"

    invoke-direct {v0, v3, v1, v2}, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->TooManyRequests:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    new-instance v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    move-object/from16 v37, v0

    const/16 v1, 0x25

    const/16 v2, 0x1f4

    const-string v3, "InternalServerError"

    invoke-direct {v0, v3, v1, v2}, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->InternalServerError:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    new-instance v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    move-object/from16 v38, v0

    const/16 v1, 0x26

    const/16 v2, 0x1f5

    const-string v3, "NotImplemented"

    invoke-direct {v0, v3, v1, v2}, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->NotImplemented:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    new-instance v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    move-object/from16 v39, v0

    const/16 v1, 0x27

    const/16 v2, 0x1f6

    const-string v3, "BadGateway"

    invoke-direct {v0, v3, v1, v2}, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->BadGateway:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    new-instance v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    move-object/from16 v40, v0

    const/16 v1, 0x28

    const/16 v2, 0x1f7

    const-string v3, "ServiceUnavailable"

    invoke-direct {v0, v3, v1, v2}, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->ServiceUnavailable:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    new-instance v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    move-object/from16 v41, v0

    const/16 v1, 0x29

    const/16 v2, 0x1f8

    const-string v3, "GatewayTimeout"

    invoke-direct {v0, v3, v1, v2}, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->GatewayTimeout:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    new-instance v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    move-object/from16 v42, v0

    const/16 v1, 0x2a

    const/16 v2, 0x1f9

    const-string v3, "HTTPVersionNotSupported"

    invoke-direct {v0, v3, v1, v2}, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->HTTPVersionNotSupported:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    new-instance v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    move-object/from16 v43, v0

    const/16 v1, 0x2b

    const/16 v2, 0x257

    const-string v3, "Unknown5xx"

    invoke-direct {v0, v3, v1, v2}, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->Unknown5xx:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    move-object/from16 v2, v46

    move-object/from16 v3, v47

    filled-new-array/range {v0 .. v43}, [Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    move-result-object v0

    sput-object v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->$VALUES:[Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    invoke-static {}, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->values()[Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    move-result-object v0

    sput-object v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->values:[Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

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

    iput p3, p0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->code:I

    return-void
.end method

.method static byValue(I)Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;
    .locals 5

    sget-object v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->values:[Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-gt v1, v0, :cond_2

    add-int v2, v1, v0

    div-int/lit8 v2, v2, 0x2

    sget-object v3, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->values:[Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    aget-object v3, v3, v2

    iget v4, v3, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->code:I

    if-ge p0, v4, :cond_0

    add-int/lit8 v2, v2, -0x1

    move v0, v2

    goto :goto_0

    :cond_0
    if-le p0, v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    move v1, v2

    goto :goto_0

    :cond_1
    return-object v3

    :cond_2
    sget-object p0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->Invalid:Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;
    .locals 1

    const-class v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    return-object p0
.end method

.method public static values()[Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;
    .locals 1

    sget-object v0, Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->$VALUES:[Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    invoke-virtual {v0}, [Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/codedisaster/steamworks/SteamHTTP$HTTPStatusCode;

    return-object v0
.end method
