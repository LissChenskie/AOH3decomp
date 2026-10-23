.class public Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;
.super Ljava/lang/Object;
.source "OrientedBoundingBox.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x359feb1ce71d67bdL

.field private static final tempAxes:[Lcom/badlogic/gdx/math/Vector3;

.field private static final tempVertices:[Lcom/badlogic/gdx/math/Vector3;

.field private static final tmpVectors:[Lcom/badlogic/gdx/math/Vector3;


# instance fields
.field private final axes:[Lcom/badlogic/gdx/math/Vector3;

.field private final bounds:Lcom/badlogic/gdx/math/collision/BoundingBox;

.field private final inverseTransform:Lcom/badlogic/gdx/math/Matrix4;

.field public final transform:Lcom/badlogic/gdx/math/Matrix4;

.field private final vertices:[Lcom/badlogic/gdx/math/Vector3;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xf

    new-array v0, v0, [Lcom/badlogic/gdx/math/Vector3;

    sput-object v0, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->tempAxes:[Lcom/badlogic/gdx/math/Vector3;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/badlogic/gdx/math/Vector3;

    sput-object v0, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->tempVertices:[Lcom/badlogic/gdx/math/Vector3;

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/badlogic/gdx/math/Vector3;

    sput-object v0, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->tmpVectors:[Lcom/badlogic/gdx/math/Vector3;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v2, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->tmpVectors:[Lcom/badlogic/gdx/math/Vector3;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    new-instance v3, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v3}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    sget-object v1, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->tempVertices:[Lcom/badlogic/gdx/math/Vector3;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    new-instance v2, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v2}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/math/collision/BoundingBox;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/collision/BoundingBox;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->bounds:Lcom/badlogic/gdx/math/collision/BoundingBox;

    new-instance v1, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v1}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v1, p0, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->transform:Lcom/badlogic/gdx/math/Matrix4;

    new-instance v1, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v1}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v1, p0, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->inverseTransform:Lcom/badlogic/gdx/math/Matrix4;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/badlogic/gdx/math/Vector3;

    iput-object v1, p0, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->axes:[Lcom/badlogic/gdx/math/Vector3;

    const/16 v1, 0x8

    new-array v1, v1, [Lcom/badlogic/gdx/math/Vector3;

    iput-object v1, p0, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->vertices:[Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/collision/BoundingBox;->clr()Lcom/badlogic/gdx/math/collision/BoundingBox;

    invoke-direct {p0}, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->init()V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/math/collision/BoundingBox;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/math/collision/BoundingBox;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/collision/BoundingBox;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->bounds:Lcom/badlogic/gdx/math/collision/BoundingBox;

    new-instance v1, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v1}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v1, p0, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->transform:Lcom/badlogic/gdx/math/Matrix4;

    new-instance v1, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v1}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v1, p0, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->inverseTransform:Lcom/badlogic/gdx/math/Matrix4;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/badlogic/gdx/math/Vector3;

    iput-object v1, p0, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->axes:[Lcom/badlogic/gdx/math/Vector3;

    const/16 v1, 0x8

    new-array v1, v1, [Lcom/badlogic/gdx/math/Vector3;

    iput-object v1, p0, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->vertices:[Lcom/badlogic/gdx/math/Vector3;

    iget-object v1, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget-object p1, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1, p1}, Lcom/badlogic/gdx/math/collision/BoundingBox;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/collision/BoundingBox;

    invoke-direct {p0}, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->init()V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/math/collision/BoundingBox;Lcom/badlogic/gdx/math/Matrix4;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/math/collision/BoundingBox;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/collision/BoundingBox;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->bounds:Lcom/badlogic/gdx/math/collision/BoundingBox;

    new-instance v1, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v1}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v1, p0, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->transform:Lcom/badlogic/gdx/math/Matrix4;

    new-instance v2, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v2}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v2, p0, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->inverseTransform:Lcom/badlogic/gdx/math/Matrix4;

    const/4 v2, 0x3

    new-array v2, v2, [Lcom/badlogic/gdx/math/Vector3;

    iput-object v2, p0, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->axes:[Lcom/badlogic/gdx/math/Vector3;

    const/16 v2, 0x8

    new-array v2, v2, [Lcom/badlogic/gdx/math/Vector3;

    iput-object v2, p0, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->vertices:[Lcom/badlogic/gdx/math/Vector3;

    iget-object v2, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget-object p1, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v2, p1}, Lcom/badlogic/gdx/math/collision/BoundingBox;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/collision/BoundingBox;

    invoke-virtual {v1, p2}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {p0}, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->init()V

    return-void
.end method

.method private contains(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Matrix4;)Z
    .locals 2

    sget-object v0, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->tmpVectors:[Lcom/badlogic/gdx/math/Vector3;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    iget-object p2, p0, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->bounds:Lcom/badlogic/gdx/math/collision/BoundingBox;

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/math/collision/BoundingBox;->contains(Lcom/badlogic/gdx/math/Vector3;)Z

    move-result p1

    return p1
.end method

.method private getVertices(Lcom/badlogic/gdx/math/collision/BoundingBox;)[Lcom/badlogic/gdx/math/Vector3;
    .locals 2

    sget-object v0, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->tempVertices:[Lcom/badlogic/gdx/math/Vector3;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/math/collision/BoundingBox;->getCorner000(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/math/collision/BoundingBox;->getCorner001(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    const/4 v1, 0x2

    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/math/collision/BoundingBox;->getCorner010(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    const/4 v1, 0x3

    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/math/collision/BoundingBox;->getCorner011(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    const/4 v1, 0x4

    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/math/collision/BoundingBox;->getCorner100(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    const/4 v1, 0x5

    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/math/collision/BoundingBox;->getCorner101(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    const/4 v1, 0x6

    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/math/collision/BoundingBox;->getCorner110(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    const/4 v1, 0x7

    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/math/collision/BoundingBox;->getCorner111(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    return-object v0
.end method

.method private init()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->axes:[Lcom/badlogic/gdx/math/Vector3;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    new-instance v3, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v3}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->vertices:[Lcom/badlogic/gdx/math/Vector3;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    new-instance v2, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v2}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->update()V

    return-void
.end method

.method private update()V
    .locals 9

    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->bounds:Lcom/badlogic/gdx/math/collision/BoundingBox;

    iget-object v1, p0, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->vertices:[Lcom/badlogic/gdx/math/Vector3;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/collision/BoundingBox;->getCorner000(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->transform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->bounds:Lcom/badlogic/gdx/math/collision/BoundingBox;

    iget-object v1, p0, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->vertices:[Lcom/badlogic/gdx/math/Vector3;

    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/collision/BoundingBox;->getCorner001(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->transform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->bounds:Lcom/badlogic/gdx/math/collision/BoundingBox;

    iget-object v1, p0, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->vertices:[Lcom/badlogic/gdx/math/Vector3;

    const/4 v4, 0x2

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/collision/BoundingBox;->getCorner010(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->transform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->bounds:Lcom/badlogic/gdx/math/collision/BoundingBox;

    iget-object v1, p0, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->vertices:[Lcom/badlogic/gdx/math/Vector3;

    const/4 v5, 0x3

    aget-object v1, v1, v5

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/collision/BoundingBox;->getCorner011(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->transform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->bounds:Lcom/badlogic/gdx/math/collision/BoundingBox;

    iget-object v1, p0, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->vertices:[Lcom/badlogic/gdx/math/Vector3;

    const/4 v5, 0x4

    aget-object v1, v1, v5

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/collision/BoundingBox;->getCorner100(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->transform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->bounds:Lcom/badlogic/gdx/math/collision/BoundingBox;

    iget-object v1, p0, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->vertices:[Lcom/badlogic/gdx/math/Vector3;

    const/4 v6, 0x5

    aget-object v1, v1, v6

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/collision/BoundingBox;->getCorner101(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->transform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->bounds:Lcom/badlogic/gdx/math/collision/BoundingBox;

    iget-object v1, p0, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->vertices:[Lcom/badlogic/gdx/math/Vector3;

    const/4 v7, 0x6

    aget-object v1, v1, v7

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/collision/BoundingBox;->getCorner110(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->transform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->bounds:Lcom/badlogic/gdx/math/collision/BoundingBox;

    iget-object v1, p0, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->vertices:[Lcom/badlogic/gdx/math/Vector3;

    const/4 v8, 0x7

    aget-object v1, v1, v8

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/collision/BoundingBox;->getCorner111(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->transform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->axes:[Lcom/badlogic/gdx/math/Vector3;

    aget-object v0, v0, v2

    iget-object v1, p0, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->transform:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v1, v1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->transform:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v2, v2, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v2, v2, v3

    iget-object v8, p0, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->transform:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v8, v8, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v8, v8, v4

    invoke-virtual {v0, v1, v2, v8}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->axes:[Lcom/badlogic/gdx/math/Vector3;

    aget-object v0, v0, v3

    iget-object v1, p0, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->transform:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v1, v1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v5

    iget-object v2, p0, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->transform:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v2, v2, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v2, v2, v6

    iget-object v3, p0, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->transform:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v3, v3, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->axes:[Lcom/badlogic/gdx/math/Vector3;

    aget-object v0, v0, v4

    iget-object v1, p0, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->transform:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v1, v1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v2, 0x8

    aget v1, v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->transform:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v2, v2, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0x9

    aget v2, v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->transform:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v3, v3, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v4, 0xa

    aget v3, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->inverseTransform:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v1, p0, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->transform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Matrix4;->inv()Lcom/badlogic/gdx/math/Matrix4;

    return-void
.end method


# virtual methods
.method public contains(Lcom/badlogic/gdx/math/Vector3;)Z
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->inverseTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->contains(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Matrix4;)Z

    move-result p1

    return p1
.end method

.method public contains(Lcom/badlogic/gdx/math/collision/BoundingBox;)Z
    .locals 4

    sget-object v0, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->tmpVectors:[Lcom/badlogic/gdx/math/Vector3;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/math/collision/BoundingBox;->getCorner000(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    iget-object v3, p0, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->inverseTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {p0, v2, v3}, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->contains(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Matrix4;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/math/collision/BoundingBox;->getCorner001(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    iget-object v3, p0, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->inverseTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {p0, v2, v3}, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->contains(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Matrix4;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/math/collision/BoundingBox;->getCorner010(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    iget-object v3, p0, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->inverseTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {p0, v2, v3}, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->contains(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Matrix4;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/math/collision/BoundingBox;->getCorner011(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    iget-object v3, p0, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->inverseTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {p0, v2, v3}, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->contains(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Matrix4;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/math/collision/BoundingBox;->getCorner100(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    iget-object v3, p0, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->inverseTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {p0, v2, v3}, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->contains(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Matrix4;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/math/collision/BoundingBox;->getCorner101(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    iget-object v3, p0, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->inverseTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {p0, v2, v3}, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->contains(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Matrix4;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/math/collision/BoundingBox;->getCorner110(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    iget-object v3, p0, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->inverseTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {p0, v2, v3}, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->contains(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Matrix4;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/math/collision/BoundingBox;->getCorner111(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->inverseTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->contains(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Matrix4;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public contains(Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;)Z
    .locals 4

    sget-object v0, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->tmpVectors:[Lcom/badlogic/gdx/math/Vector3;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->getCorner000(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    iget-object v3, p0, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->inverseTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {p0, v2, v3}, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->contains(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Matrix4;)Z

    move-result v2

    if-eqz v2, :cond_0

    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->getCorner001(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    iget-object v3, p0, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->inverseTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {p0, v2, v3}, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->contains(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Matrix4;)Z

    move-result v2

    if-eqz v2, :cond_0

    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->getCorner010(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    iget-object v3, p0, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->inverseTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {p0, v2, v3}, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->contains(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Matrix4;)Z

    move-result v2

    if-eqz v2, :cond_0

    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->getCorner011(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    iget-object v3, p0, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->inverseTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {p0, v2, v3}, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->contains(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Matrix4;)Z

    move-result v2

    if-eqz v2, :cond_0

    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->getCorner100(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    iget-object v3, p0, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->inverseTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {p0, v2, v3}, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->contains(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Matrix4;)Z

    move-result v2

    if-eqz v2, :cond_0

    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->getCorner101(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    iget-object v3, p0, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->inverseTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {p0, v2, v3}, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->contains(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Matrix4;)Z

    move-result v2

    if-eqz v2, :cond_0

    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->getCorner110(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    iget-object v3, p0, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->inverseTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {p0, v2, v3}, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->contains(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Matrix4;)Z

    move-result v2

    if-eqz v2, :cond_0

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->getCorner111(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->inverseTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->contains(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Matrix4;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getBounds()Lcom/badlogic/gdx/math/collision/BoundingBox;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->bounds:Lcom/badlogic/gdx/math/collision/BoundingBox;

    return-object v0
.end method

.method public getCorner000(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->vertices:[Lcom/badlogic/gdx/math/Vector3;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public getCorner001(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->vertices:[Lcom/badlogic/gdx/math/Vector3;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public getCorner010(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->vertices:[Lcom/badlogic/gdx/math/Vector3;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public getCorner011(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->vertices:[Lcom/badlogic/gdx/math/Vector3;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public getCorner100(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->vertices:[Lcom/badlogic/gdx/math/Vector3;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public getCorner101(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->vertices:[Lcom/badlogic/gdx/math/Vector3;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public getCorner110(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->vertices:[Lcom/badlogic/gdx/math/Vector3;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public getCorner111(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->vertices:[Lcom/badlogic/gdx/math/Vector3;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public getTransform()Lcom/badlogic/gdx/math/Matrix4;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->transform:Lcom/badlogic/gdx/math/Matrix4;

    return-object v0
.end method

.method public getVertices()[Lcom/badlogic/gdx/math/Vector3;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->vertices:[Lcom/badlogic/gdx/math/Vector3;

    return-object v0
.end method

.method public intersects(Lcom/badlogic/gdx/math/collision/BoundingBox;)Z
    .locals 12

    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->axes:[Lcom/badlogic/gdx/math/Vector3;

    sget-object v1, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->tempAxes:[Lcom/badlogic/gdx/math/Vector3;

    const/4 v2, 0x0

    aget-object v3, v0, v2

    aput-object v3, v1, v2

    const/4 v3, 0x1

    aget-object v4, v0, v3

    aput-object v4, v1, v3

    const/4 v4, 0x2

    aget-object v5, v0, v4

    aput-object v5, v1, v4

    sget-object v5, Lcom/badlogic/gdx/math/Vector3;->X:Lcom/badlogic/gdx/math/Vector3;

    const/4 v6, 0x3

    aput-object v5, v1, v6

    sget-object v5, Lcom/badlogic/gdx/math/Vector3;->Y:Lcom/badlogic/gdx/math/Vector3;

    const/4 v7, 0x4

    aput-object v5, v1, v7

    sget-object v5, Lcom/badlogic/gdx/math/Vector3;->Z:Lcom/badlogic/gdx/math/Vector3;

    const/4 v8, 0x5

    aput-object v5, v1, v8

    sget-object v5, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->tmpVectors:[Lcom/badlogic/gdx/math/Vector3;

    aget-object v9, v5, v2

    aget-object v10, v0, v2

    invoke-virtual {v9, v10}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v9

    sget-object v10, Lcom/badlogic/gdx/math/Vector3;->X:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v9, v10}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v9

    const/4 v10, 0x6

    aput-object v9, v1, v10

    aget-object v9, v5, v3

    aget-object v11, v0, v2

    invoke-virtual {v9, v11}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v9

    sget-object v11, Lcom/badlogic/gdx/math/Vector3;->Y:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v9, v11}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v9

    const/4 v11, 0x7

    aput-object v9, v1, v11

    aget-object v9, v5, v4

    aget-object v2, v0, v2

    invoke-virtual {v9, v2}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    sget-object v9, Lcom/badlogic/gdx/math/Vector3;->Z:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v2, v9}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    const/16 v9, 0x8

    aput-object v2, v1, v9

    aget-object v2, v5, v6

    aget-object v6, v0, v3

    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    sget-object v6, Lcom/badlogic/gdx/math/Vector3;->X:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    const/16 v6, 0x9

    aput-object v2, v1, v6

    aget-object v2, v5, v7

    aget-object v6, v0, v3

    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    sget-object v6, Lcom/badlogic/gdx/math/Vector3;->Y:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    const/16 v6, 0xa

    aput-object v2, v1, v6

    aget-object v2, v5, v8

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    sget-object v3, Lcom/badlogic/gdx/math/Vector3;->Z:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    const/16 v3, 0xb

    aput-object v2, v1, v3

    aget-object v2, v5, v10

    aget-object v3, v0, v4

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    sget-object v3, Lcom/badlogic/gdx/math/Vector3;->X:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    const/16 v3, 0xc

    aput-object v2, v1, v3

    aget-object v2, v5, v11

    aget-object v3, v0, v4

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    sget-object v3, Lcom/badlogic/gdx/math/Vector3;->Y:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    const/16 v3, 0xd

    aput-object v2, v1, v3

    aget-object v2, v5, v9

    aget-object v0, v0, v4

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    sget-object v2, Lcom/badlogic/gdx/math/Vector3;->Z:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    const/16 v2, 0xe

    aput-object v0, v1, v2

    invoke-virtual {p0}, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->getVertices()[Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->getVertices(Lcom/badlogic/gdx/math/collision/BoundingBox;)[Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    invoke-static {v1, v0, p1}, Lcom/badlogic/gdx/math/Intersector;->hasOverlap([Lcom/badlogic/gdx/math/Vector3;[Lcom/badlogic/gdx/math/Vector3;[Lcom/badlogic/gdx/math/Vector3;)Z

    move-result p1

    return p1
.end method

.method public intersects(Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;)Z
    .locals 14

    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->axes:[Lcom/badlogic/gdx/math/Vector3;

    iget-object v1, p1, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->axes:[Lcom/badlogic/gdx/math/Vector3;

    sget-object v2, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->tempAxes:[Lcom/badlogic/gdx/math/Vector3;

    const/4 v3, 0x0

    aget-object v4, v0, v3

    aput-object v4, v2, v3

    const/4 v4, 0x1

    aget-object v5, v0, v4

    aput-object v5, v2, v4

    const/4 v5, 0x2

    aget-object v6, v0, v5

    aput-object v6, v2, v5

    aget-object v6, v1, v3

    const/4 v7, 0x3

    aput-object v6, v2, v7

    aget-object v6, v1, v4

    const/4 v8, 0x4

    aput-object v6, v2, v8

    aget-object v6, v1, v5

    const/4 v9, 0x5

    aput-object v6, v2, v9

    sget-object v6, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->tmpVectors:[Lcom/badlogic/gdx/math/Vector3;

    aget-object v10, v6, v3

    aget-object v11, v0, v3

    invoke-virtual {v10, v11}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v10

    aget-object v11, v1, v3

    invoke-virtual {v10, v11}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v10

    const/4 v11, 0x6

    aput-object v10, v2, v11

    aget-object v10, v6, v4

    aget-object v12, v0, v3

    invoke-virtual {v10, v12}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v10

    aget-object v12, v1, v4

    invoke-virtual {v10, v12}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v10

    const/4 v12, 0x7

    aput-object v10, v2, v12

    aget-object v10, v6, v5

    aget-object v13, v0, v3

    invoke-virtual {v10, v13}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v10

    aget-object v13, v1, v5

    invoke-virtual {v10, v13}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v10

    const/16 v13, 0x8

    aput-object v10, v2, v13

    aget-object v7, v6, v7

    aget-object v10, v0, v4

    invoke-virtual {v7, v10}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v7

    aget-object v10, v1, v3

    invoke-virtual {v7, v10}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v7

    const/16 v10, 0x9

    aput-object v7, v2, v10

    aget-object v7, v6, v8

    aget-object v8, v0, v4

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v7

    aget-object v8, v1, v4

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v7

    const/16 v8, 0xa

    aput-object v7, v2, v8

    aget-object v7, v6, v9

    aget-object v8, v0, v4

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v7

    aget-object v8, v1, v5

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v7

    const/16 v8, 0xb

    aput-object v7, v2, v8

    aget-object v7, v6, v11

    aget-object v8, v0, v5

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v7

    aget-object v3, v1, v3

    invoke-virtual {v7, v3}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    const/16 v7, 0xc

    aput-object v3, v2, v7

    aget-object v3, v6, v12

    aget-object v7, v0, v5

    invoke-virtual {v3, v7}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    aget-object v4, v1, v4

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    const/16 v4, 0xd

    aput-object v3, v2, v4

    aget-object v3, v6, v13

    aget-object v0, v0, v5

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    aget-object v1, v1, v5

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    const/16 v1, 0xe

    aput-object v0, v2, v1

    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->vertices:[Lcom/badlogic/gdx/math/Vector3;

    iget-object p1, p1, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->vertices:[Lcom/badlogic/gdx/math/Vector3;

    invoke-static {v2, v0, p1}, Lcom/badlogic/gdx/math/Intersector;->hasOverlap([Lcom/badlogic/gdx/math/Vector3;[Lcom/badlogic/gdx/math/Vector3;[Lcom/badlogic/gdx/math/Vector3;)Z

    move-result p1

    return p1
.end method

.method public mul(Lcom/badlogic/gdx/math/Matrix4;)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->transform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Matrix4;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {p0}, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->update()V

    return-void
.end method

.method public set(Lcom/badlogic/gdx/math/collision/BoundingBox;Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->setBounds(Lcom/badlogic/gdx/math/collision/BoundingBox;)V

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->setTransform(Lcom/badlogic/gdx/math/Matrix4;)V

    return-object p0
.end method

.method public setBounds(Lcom/badlogic/gdx/math/collision/BoundingBox;)V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->bounds:Lcom/badlogic/gdx/math/collision/BoundingBox;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/collision/BoundingBox;->set(Lcom/badlogic/gdx/math/collision/BoundingBox;)Lcom/badlogic/gdx/math/collision/BoundingBox;

    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->vertices:[Lcom/badlogic/gdx/math/Vector3;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/math/collision/BoundingBox;->getCorner000(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->transform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->vertices:[Lcom/badlogic/gdx/math/Vector3;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/math/collision/BoundingBox;->getCorner001(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->transform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->vertices:[Lcom/badlogic/gdx/math/Vector3;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/math/collision/BoundingBox;->getCorner010(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->transform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->vertices:[Lcom/badlogic/gdx/math/Vector3;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/math/collision/BoundingBox;->getCorner011(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->transform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->vertices:[Lcom/badlogic/gdx/math/Vector3;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/math/collision/BoundingBox;->getCorner100(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->transform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->vertices:[Lcom/badlogic/gdx/math/Vector3;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/math/collision/BoundingBox;->getCorner101(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->transform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->vertices:[Lcom/badlogic/gdx/math/Vector3;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/math/collision/BoundingBox;->getCorner110(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->transform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->vertices:[Lcom/badlogic/gdx/math/Vector3;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/math/collision/BoundingBox;->getCorner111(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->transform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    return-void
.end method

.method public setTransform(Lcom/badlogic/gdx/math/Matrix4;)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->transform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {p0}, Lcom/badlogic/gdx/math/collision/OrientedBoundingBox;->update()V

    return-void
.end method
