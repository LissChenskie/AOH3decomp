.class public final enum Lcom/badlogic/gdx/Input$VibrationType;
.super Ljava/lang/Enum;
.source "Input.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/Input;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VibrationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/badlogic/gdx/Input$VibrationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/badlogic/gdx/Input$VibrationType;

.field public static final enum HEAVY:Lcom/badlogic/gdx/Input$VibrationType;

.field public static final enum LIGHT:Lcom/badlogic/gdx/Input$VibrationType;

.field public static final enum MEDIUM:Lcom/badlogic/gdx/Input$VibrationType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/badlogic/gdx/Input$VibrationType;

    const-string v1, "LIGHT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/Input$VibrationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/Input$VibrationType;->LIGHT:Lcom/badlogic/gdx/Input$VibrationType;

    new-instance v1, Lcom/badlogic/gdx/Input$VibrationType;

    const-string v2, "MEDIUM"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/badlogic/gdx/Input$VibrationType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/badlogic/gdx/Input$VibrationType;->MEDIUM:Lcom/badlogic/gdx/Input$VibrationType;

    new-instance v2, Lcom/badlogic/gdx/Input$VibrationType;

    const-string v3, "HEAVY"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/badlogic/gdx/Input$VibrationType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/badlogic/gdx/Input$VibrationType;->HEAVY:Lcom/badlogic/gdx/Input$VibrationType;

    filled-new-array {v0, v1, v2}, [Lcom/badlogic/gdx/Input$VibrationType;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/Input$VibrationType;->$VALUES:[Lcom/badlogic/gdx/Input$VibrationType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/Input$VibrationType;
    .locals 1

    const-class v0, Lcom/badlogic/gdx/Input$VibrationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/badlogic/gdx/Input$VibrationType;

    return-object p0
.end method

.method public static values()[Lcom/badlogic/gdx/Input$VibrationType;
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/Input$VibrationType;->$VALUES:[Lcom/badlogic/gdx/Input$VibrationType;

    invoke-virtual {v0}, [Lcom/badlogic/gdx/Input$VibrationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/badlogic/gdx/Input$VibrationType;

    return-object v0
.end method
