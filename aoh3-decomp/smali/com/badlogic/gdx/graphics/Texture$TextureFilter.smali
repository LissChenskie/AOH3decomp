.class public final enum Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
.super Ljava/lang/Enum;
.source "Texture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/Texture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TextureFilter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/badlogic/gdx/graphics/Texture$TextureFilter;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

.field public static final enum Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

.field public static final enum MipMap:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

.field public static final enum MipMapLinearLinear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

.field public static final enum MipMapLinearNearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

.field public static final enum MipMapNearestLinear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

.field public static final enum MipMapNearestNearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

.field public static final enum Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;


# instance fields
.field final glEnum:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    const/4 v1, 0x0

    const/16 v2, 0x2600

    const-string v3, "Nearest"

    invoke-direct {v0, v3, v1, v2}, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    new-instance v1, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    const/4 v2, 0x1

    const/16 v3, 0x2601

    const-string v4, "Linear"

    invoke-direct {v1, v4, v2, v3}, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    new-instance v2, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    const-string v3, "MipMap"

    const/4 v4, 0x2

    const/16 v5, 0x2703

    invoke-direct {v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->MipMap:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    new-instance v3, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    const/4 v4, 0x3

    const/16 v6, 0x2700

    const-string v7, "MipMapNearestNearest"

    invoke-direct {v3, v7, v4, v6}, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->MipMapNearestNearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    new-instance v4, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    const/4 v6, 0x4

    const/16 v7, 0x2701

    const-string v8, "MipMapLinearNearest"

    invoke-direct {v4, v8, v6, v7}, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->MipMapLinearNearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    new-instance v6, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    const/4 v7, 0x5

    const/16 v8, 0x2702

    const-string v9, "MipMapNearestLinear"

    invoke-direct {v6, v9, v7, v8}, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->MipMapNearestLinear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    new-instance v7, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    const-string v8, "MipMapLinearLinear"

    const/4 v9, 0x6

    invoke-direct {v7, v8, v9, v5}, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->MipMapLinearLinear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    move-object v5, v6

    move-object v6, v7

    filled-new-array/range {v0 .. v6}, [Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->$VALUES:[Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

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

    iput p3, p0, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->glEnum:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .locals 1

    const-class v0, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    return-object p0
.end method

.method public static values()[Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->$VALUES:[Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-virtual {v0}, [Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    return-object v0
.end method


# virtual methods
.method public getGLEnum()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->glEnum:I

    return v0
.end method

.method public isMipMap()Z
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->glEnum:I

    const/16 v1, 0x2600

    if-eq v0, v1, :cond_0

    const/16 v1, 0x2601

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
