.class public final enum Lcom/badlogic/gdx/utils/JsonValue$ValueType;
.super Ljava/lang/Enum;
.source "JsonValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/JsonValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ValueType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/badlogic/gdx/utils/JsonValue$ValueType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/badlogic/gdx/utils/JsonValue$ValueType;

.field public static final enum array:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

.field public static final enum booleanValue:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

.field public static final enum doubleValue:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

.field public static final enum longValue:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

.field public static final enum nullValue:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

.field public static final enum object:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

.field public static final enum stringValue:Lcom/badlogic/gdx/utils/JsonValue$ValueType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    const-string v1, "object"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue$ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->object:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    new-instance v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    const-string v2, "array"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/badlogic/gdx/utils/JsonValue$ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->array:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    new-instance v2, Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    const-string v3, "stringValue"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/badlogic/gdx/utils/JsonValue$ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->stringValue:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    new-instance v3, Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    const/4 v4, 0x0

    sget-object v4, Landroidx/core/text/util/pRCP/IwYCCQBuFGwl;->iniv:Ljava/lang/String;

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/badlogic/gdx/utils/JsonValue$ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->doubleValue:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    new-instance v4, Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    const-string v5, "longValue"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/badlogic/gdx/utils/JsonValue$ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->longValue:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    new-instance v5, Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    const-string v6, "booleanValue"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/badlogic/gdx/utils/JsonValue$ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->booleanValue:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    new-instance v6, Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    const-string v7, "nullValue"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/badlogic/gdx/utils/JsonValue$ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->nullValue:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    filled-new-array/range {v0 .. v6}, [Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->$VALUES:[Lcom/badlogic/gdx/utils/JsonValue$ValueType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue$ValueType;
    .locals 1

    const-class v0, Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    return-object p0
.end method

.method public static values()[Lcom/badlogic/gdx/utils/JsonValue$ValueType;
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->$VALUES:[Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v0}, [Lcom/badlogic/gdx/utils/JsonValue$ValueType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    return-object v0
.end method
