.class public final enum Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;
.super Ljava/lang/Enum;
.source "Cursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/Cursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SystemCursor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;

.field public static final enum AllResize:Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;

.field public static final enum Arrow:Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;

.field public static final enum Crosshair:Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;

.field public static final enum Hand:Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;

.field public static final enum HorizontalResize:Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;

.field public static final enum Ibeam:Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;

.field public static final enum NESWResize:Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;

.field public static final enum NWSEResize:Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;

.field public static final enum None:Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;

.field public static final enum NotAllowed:Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;

.field public static final enum VerticalResize:Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;

    const-string v1, "Arrow"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;->Arrow:Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;

    new-instance v1, Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;

    const-string v2, "Ibeam"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;->Ibeam:Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;

    new-instance v2, Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;

    const-string v3, "Crosshair"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;->Crosshair:Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;

    new-instance v3, Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;

    const-string v4, "Hand"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;->Hand:Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;

    new-instance v4, Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;

    const-string v5, "HorizontalResize"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;->HorizontalResize:Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;

    new-instance v5, Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;

    const-string v6, "VerticalResize"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;->VerticalResize:Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;

    new-instance v6, Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;

    const-string v7, "NWSEResize"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;->NWSEResize:Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;

    new-instance v7, Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;

    const-string v8, "NESWResize"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;->NESWResize:Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;

    new-instance v8, Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;

    const-string v9, "AllResize"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;->AllResize:Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;

    new-instance v9, Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;

    const-string v10, "NotAllowed"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;->NotAllowed:Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;

    new-instance v10, Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;

    const-string v11, "None"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12}, Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;->None:Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;

    filled-new-array/range {v0 .. v10}, [Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;->$VALUES:[Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;

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

.method public static valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;
    .locals 1

    const-class v0, Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;

    return-object p0
.end method

.method public static values()[Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;->$VALUES:[Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;

    invoke-virtual {v0}, [Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;

    return-object v0
.end method
