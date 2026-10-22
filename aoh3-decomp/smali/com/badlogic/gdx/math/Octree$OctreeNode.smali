.class public Lcom/badlogic/gdx/math/Octree$OctreeNode;
.super Ljava/lang/Object;
.source "Octree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/math/Octree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "OctreeNode"
.end annotation


# instance fields
.field final bounds:Lcom/badlogic/gdx/math/collision/BoundingBox;

.field private children:[Lcom/badlogic/gdx/math/Octree$OctreeNode;

.field private final geometries:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "TT;>;"
        }
    .end annotation
.end field

.field leaf:Z

.field level:I

.field final synthetic this$0:Lcom/badlogic/gdx/math/Octree;


# direct methods
.method protected constructor <init>(Lcom/badlogic/gdx/math/Octree;)V
    .locals 2

    iput-object p1, p0, Lcom/badlogic/gdx/math/Octree$OctreeNode;->this$0:Lcom/badlogic/gdx/math/Octree;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/math/collision/BoundingBox;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/collision/BoundingBox;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/math/Octree$OctreeNode;->bounds:Lcom/badlogic/gdx/math/collision/BoundingBox;

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/16 v1, 0x10

    iget p1, p1, Lcom/badlogic/gdx/math/Octree;->maxItemsPerNode:I

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/math/Octree$OctreeNode;->geometries:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method

.method private clearChildren()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/math/Octree$OctreeNode;->children:[Lcom/badlogic/gdx/math/Octree$OctreeNode;

    aget-object v1, v1, v0

    invoke-direct {v1}, Lcom/badlogic/gdx/math/Octree$OctreeNode;->free()V

    iget-object v1, p0, Lcom/badlogic/gdx/math/Octree$OctreeNode;->children:[Lcom/badlogic/gdx/math/Octree$OctreeNode;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private free()V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/math/Octree$OctreeNode;->geometries:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    iget-boolean v0, p0, Lcom/badlogic/gdx/math/Octree$OctreeNode;->leaf:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/badlogic/gdx/math/Octree$OctreeNode;->clearChildren()V

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/math/Octree$OctreeNode;->this$0:Lcom/badlogic/gdx/math/Octree;

    iget-object v0, v0, Lcom/badlogic/gdx/math/Octree;->nodePool:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    return-void
.end method

.method private merge()V
    .locals 1

    invoke-direct {p0}, Lcom/badlogic/gdx/math/Octree$OctreeNode;->clearChildren()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/math/Octree$OctreeNode;->leaf:Z

    return-void
.end method

.method private split()V
    .locals 13

    iget-object v0, p0, Lcom/badlogic/gdx/math/Octree$OctreeNode;->bounds:Lcom/badlogic/gdx/math/collision/BoundingBox;

    iget-object v0, v0, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v1, p0, Lcom/badlogic/gdx/math/Octree$OctreeNode;->bounds:Lcom/badlogic/gdx/math/collision/BoundingBox;

    iget-object v1, v1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->x:F

    add-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    iget-object v2, p0, Lcom/badlogic/gdx/math/Octree$OctreeNode;->bounds:Lcom/badlogic/gdx/math/collision/BoundingBox;

    iget-object v2, v2, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v3, p0, Lcom/badlogic/gdx/math/Octree$OctreeNode;->bounds:Lcom/badlogic/gdx/math/collision/BoundingBox;

    iget-object v3, v3, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    add-float/2addr v2, v3

    mul-float/2addr v2, v1

    iget-object v3, p0, Lcom/badlogic/gdx/math/Octree$OctreeNode;->bounds:Lcom/badlogic/gdx/math/collision/BoundingBox;

    iget-object v3, v3, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget-object v4, p0, Lcom/badlogic/gdx/math/Octree$OctreeNode;->bounds:Lcom/badlogic/gdx/math/collision/BoundingBox;

    iget-object v4, v4, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->z:F

    add-float/2addr v3, v4

    mul-float/2addr v3, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Octree$OctreeNode;->level:I

    const/4 v4, 0x1

    sub-int/2addr v1, v4

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/badlogic/gdx/math/Octree$OctreeNode;->leaf:Z

    iget-object v6, p0, Lcom/badlogic/gdx/math/Octree$OctreeNode;->children:[Lcom/badlogic/gdx/math/Octree$OctreeNode;

    if-nez v6, :cond_0

    const/16 v6, 0x8

    new-array v6, v6, [Lcom/badlogic/gdx/math/Octree$OctreeNode;

    iput-object v6, p0, Lcom/badlogic/gdx/math/Octree$OctreeNode;->children:[Lcom/badlogic/gdx/math/Octree$OctreeNode;

    :cond_0
    iget-object v6, p0, Lcom/badlogic/gdx/math/Octree$OctreeNode;->children:[Lcom/badlogic/gdx/math/Octree$OctreeNode;

    iget-object v7, p0, Lcom/badlogic/gdx/math/Octree$OctreeNode;->this$0:Lcom/badlogic/gdx/math/Octree;

    new-instance v8, Lcom/badlogic/gdx/math/Vector3;

    iget-object v9, p0, Lcom/badlogic/gdx/math/Octree$OctreeNode;->bounds:Lcom/badlogic/gdx/math/collision/BoundingBox;

    iget-object v9, v9, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v9, v9, Lcom/badlogic/gdx/math/Vector3;->x:F

    invoke-direct {v8, v9, v2, v3}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    new-instance v9, Lcom/badlogic/gdx/math/Vector3;

    iget-object v10, p0, Lcom/badlogic/gdx/math/Octree$OctreeNode;->bounds:Lcom/badlogic/gdx/math/collision/BoundingBox;

    iget-object v10, v10, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v10, v10, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v11, p0, Lcom/badlogic/gdx/math/Octree$OctreeNode;->bounds:Lcom/badlogic/gdx/math/collision/BoundingBox;

    iget-object v11, v11, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v11, v11, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-direct {v9, v0, v10, v11}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    invoke-virtual {v7, v8, v9, v1}, Lcom/badlogic/gdx/math/Octree;->createNode(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;I)Lcom/badlogic/gdx/math/Octree$OctreeNode;

    move-result-object v7

    aput-object v7, v6, v5

    iget-object v6, p0, Lcom/badlogic/gdx/math/Octree$OctreeNode;->children:[Lcom/badlogic/gdx/math/Octree$OctreeNode;

    iget-object v7, p0, Lcom/badlogic/gdx/math/Octree$OctreeNode;->this$0:Lcom/badlogic/gdx/math/Octree;

    new-instance v8, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v8, v0, v2, v3}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    new-instance v9, Lcom/badlogic/gdx/math/Vector3;

    iget-object v10, p0, Lcom/badlogic/gdx/math/Octree$OctreeNode;->bounds:Lcom/badlogic/gdx/math/collision/BoundingBox;

    iget-object v10, v10, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v10, v10, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v11, p0, Lcom/badlogic/gdx/math/Octree$OctreeNode;->bounds:Lcom/badlogic/gdx/math/collision/BoundingBox;

    iget-object v11, v11, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v11, v11, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v12, p0, Lcom/badlogic/gdx/math/Octree$OctreeNode;->bounds:Lcom/badlogic/gdx/math/collision/BoundingBox;

    iget-object v12, v12, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v12, v12, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-direct {v9, v10, v11, v12}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    invoke-virtual {v7, v8, v9, v1}, Lcom/badlogic/gdx/math/Octree;->createNode(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;I)Lcom/badlogic/gdx/math/Octree$OctreeNode;

    move-result-object v7

    aput-object v7, v6, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/Octree$OctreeNode;->children:[Lcom/badlogic/gdx/math/Octree$OctreeNode;

    iget-object v6, p0, Lcom/badlogic/gdx/math/Octree$OctreeNode;->this$0:Lcom/badlogic/gdx/math/Octree;

    new-instance v7, Lcom/badlogic/gdx/math/Vector3;

    iget-object v8, p0, Lcom/badlogic/gdx/math/Octree$OctreeNode;->bounds:Lcom/badlogic/gdx/math/collision/BoundingBox;

    iget-object v8, v8, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-direct {v7, v0, v2, v8}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    new-instance v8, Lcom/badlogic/gdx/math/Vector3;

    iget-object v9, p0, Lcom/badlogic/gdx/math/Octree$OctreeNode;->bounds:Lcom/badlogic/gdx/math/collision/BoundingBox;

    iget-object v9, v9, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v9, v9, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v10, p0, Lcom/badlogic/gdx/math/Octree$OctreeNode;->bounds:Lcom/badlogic/gdx/math/collision/BoundingBox;

    iget-object v10, v10, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v10, v10, Lcom/badlogic/gdx/math/Vector3;->y:F

    invoke-direct {v8, v9, v10, v3}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    invoke-virtual {v6, v7, v8, v1}, Lcom/badlogic/gdx/math/Octree;->createNode(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;I)Lcom/badlogic/gdx/math/Octree$OctreeNode;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v4, v7

    iget-object v4, p0, Lcom/badlogic/gdx/math/Octree$OctreeNode;->children:[Lcom/badlogic/gdx/math/Octree$OctreeNode;

    iget-object v6, p0, Lcom/badlogic/gdx/math/Octree$OctreeNode;->this$0:Lcom/badlogic/gdx/math/Octree;

    new-instance v7, Lcom/badlogic/gdx/math/Vector3;

    iget-object v8, p0, Lcom/badlogic/gdx/math/Octree$OctreeNode;->bounds:Lcom/badlogic/gdx/math/collision/BoundingBox;

    iget-object v8, v8, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v9, p0, Lcom/badlogic/gdx/math/Octree$OctreeNode;->bounds:Lcom/badlogic/gdx/math/collision/BoundingBox;

    iget-object v9, v9, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v9, v9, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-direct {v7, v8, v2, v9}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    new-instance v8, Lcom/badlogic/gdx/math/Vector3;

    iget-object v9, p0, Lcom/badlogic/gdx/math/Octree$OctreeNode;->bounds:Lcom/badlogic/gdx/math/collision/BoundingBox;

    iget-object v9, v9, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v9, v9, Lcom/badlogic/gdx/math/Vector3;->y:F

    invoke-direct {v8, v0, v9, v3}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    invoke-virtual {v6, v7, v8, v1}, Lcom/badlogic/gdx/math/Octree;->createNode(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;I)Lcom/badlogic/gdx/math/Octree$OctreeNode;

    move-result-object v6

    const/4 v7, 0x3

    aput-object v6, v4, v7

    iget-object v4, p0, Lcom/badlogic/gdx/math/Octree$OctreeNode;->children:[Lcom/badlogic/gdx/math/Octree$OctreeNode;

    iget-object v6, p0, Lcom/badlogic/gdx/math/Octree$OctreeNode;->this$0:Lcom/badlogic/gdx/math/Octree;

    new-instance v7, Lcom/badlogic/gdx/math/Vector3;

    iget-object v8, p0, Lcom/badlogic/gdx/math/Octree$OctreeNode;->bounds:Lcom/badlogic/gdx/math/collision/BoundingBox;

    iget-object v8, v8, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v9, p0, Lcom/badlogic/gdx/math/Octree$OctreeNode;->bounds:Lcom/badlogic/gdx/math/collision/BoundingBox;

    iget-object v9, v9, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v9, v9, Lcom/badlogic/gdx/math/Vector3;->y:F

    invoke-direct {v7, v8, v9, v3}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    new-instance v8, Lcom/badlogic/gdx/math/Vector3;

    iget-object v9, p0, Lcom/badlogic/gdx/math/Octree$OctreeNode;->bounds:Lcom/badlogic/gdx/math/collision/BoundingBox;

    iget-object v9, v9, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v9, v9, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-direct {v8, v0, v2, v9}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    invoke-virtual {v6, v7, v8, v1}, Lcom/badlogic/gdx/math/Octree;->createNode(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;I)Lcom/badlogic/gdx/math/Octree$OctreeNode;

    move-result-object v6

    const/4 v7, 0x4

    aput-object v6, v4, v7

    iget-object v4, p0, Lcom/badlogic/gdx/math/Octree$OctreeNode;->children:[Lcom/badlogic/gdx/math/Octree$OctreeNode;

    iget-object v6, p0, Lcom/badlogic/gdx/math/Octree$OctreeNode;->this$0:Lcom/badlogic/gdx/math/Octree;

    new-instance v7, Lcom/badlogic/gdx/math/Vector3;

    iget-object v8, p0, Lcom/badlogic/gdx/math/Octree$OctreeNode;->bounds:Lcom/badlogic/gdx/math/collision/BoundingBox;

    iget-object v8, v8, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector3;->y:F

    invoke-direct {v7, v0, v8, v3}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    new-instance v8, Lcom/badlogic/gdx/math/Vector3;

    iget-object v9, p0, Lcom/badlogic/gdx/math/Octree$OctreeNode;->bounds:Lcom/badlogic/gdx/math/collision/BoundingBox;

    iget-object v9, v9, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v9, v9, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v10, p0, Lcom/badlogic/gdx/math/Octree$OctreeNode;->bounds:Lcom/badlogic/gdx/math/collision/BoundingBox;

    iget-object v10, v10, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v10, v10, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-direct {v8, v9, v2, v10}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    invoke-virtual {v6, v7, v8, v1}, Lcom/badlogic/gdx/math/Octree;->createNode(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;I)Lcom/badlogic/gdx/math/Octree$OctreeNode;

    move-result-object v6

    const/4 v7, 0x5

    aput-object v6, v4, v7

    iget-object v4, p0, Lcom/badlogic/gdx/math/Octree$OctreeNode;->children:[Lcom/badlogic/gdx/math/Octree$OctreeNode;

    iget-object v6, p0, Lcom/badlogic/gdx/math/Octree$OctreeNode;->this$0:Lcom/badlogic/gdx/math/Octree;

    new-instance v7, Lcom/badlogic/gdx/math/Vector3;

    iget-object v8, p0, Lcom/badlogic/gdx/math/Octree$OctreeNode;->bounds:Lcom/badlogic/gdx/math/collision/BoundingBox;

    iget-object v8, v8, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v9, p0, Lcom/badlogic/gdx/math/Octree$OctreeNode;->bounds:Lcom/badlogic/gdx/math/collision/BoundingBox;

    iget-object v9, v9, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v9, v9, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-direct {v7, v0, v8, v9}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    new-instance v8, Lcom/badlogic/gdx/math/Vector3;

    iget-object v9, p0, Lcom/badlogic/gdx/math/Octree$OctreeNode;->bounds:Lcom/badlogic/gdx/math/collision/BoundingBox;

    iget-object v9, v9, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v9, v9, Lcom/badlogic/gdx/math/Vector3;->x:F

    invoke-direct {v8, v9, v2, v3}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    invoke-virtual {v6, v7, v8, v1}, Lcom/badlogic/gdx/math/Octree;->createNode(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;I)Lcom/badlogic/gdx/math/Octree$OctreeNode;

    move-result-object v6

    const/4 v7, 0x6

    aput-object v6, v4, v7

    iget-object v4, p0, Lcom/badlogic/gdx/math/Octree$OctreeNode;->children:[Lcom/badlogic/gdx/math/Octree$OctreeNode;

    iget-object v6, p0, Lcom/badlogic/gdx/math/Octree$OctreeNode;->this$0:Lcom/badlogic/gdx/math/Octree;

    new-instance v7, Lcom/badlogic/gdx/math/Vector3;

    iget-object v8, p0, Lcom/badlogic/gdx/math/Octree$OctreeNode;->bounds:Lcom/badlogic/gdx/math/collision/BoundingBox;

    iget-object v8, v8, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v9, p0, Lcom/badlogic/gdx/math/Octree$OctreeNode;->bounds:Lcom/badlogic/gdx/math/collision/BoundingBox;

    iget-object v9, v9, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v9, v9, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v10, p0, Lcom/badlogic/gdx/math/Octree$OctreeNode;->bounds:Lcom/badlogic/gdx/math/collision/BoundingBox;

    iget-object v10, v10, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v10, v10, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-direct {v7, v8, v9, v10}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    new-instance v8, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v8, v0, v2, v3}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    invoke-virtual {v6, v7, v8, v1}, Lcom/badlogic/gdx/math/Octree;->createNode(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;I)Lcom/badlogic/gdx/math/Octree$OctreeNode;

    move-result-object v0

    const/4 v1, 0x7

    aput-object v0, v4, v1

    iget-object v0, p0, Lcom/badlogic/gdx/math/Octree$OctreeNode;->children:[Lcom/badlogic/gdx/math/Octree$OctreeNode;

    array-length v1, v0

    :goto_0
    if-ge v5, v1, :cond_2

    aget-object v2, v0, v5

    iget-object v3, p0, Lcom/badlogic/gdx/math/Octree$OctreeNode;->geometries:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/math/Octree$OctreeNode;->add(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/math/Octree$OctreeNode;->geometries:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    return-void
.end method


# virtual methods
.method protected add(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/math/Octree$OctreeNode;->this$0:Lcom/badlogic/gdx/math/Octree;

    iget-object v0, v0, Lcom/badlogic/gdx/math/Octree;->collider:Lcom/badlogic/gdx/math/Octree$Collider;

    iget-object v1, p0, Lcom/badlogic/gdx/math/Octree$OctreeNode;->bounds:Lcom/badlogic/gdx/math/collision/BoundingBox;

    invoke-interface {v0, v1, p1}, Lcom/badlogic/gdx/math/Octree$Collider;->intersects(Lcom/badlogic/gdx/math/collision/BoundingBox;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/math/Octree$OctreeNode;->leaf:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/math/Octree$OctreeNode;->children:[Lcom/badlogic/gdx/math/Octree$OctreeNode;

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    invoke-virtual {v3, p1}, Lcom/badlogic/gdx/math/Octree$OctreeNode;->add(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/math/Octree$OctreeNode;->geometries:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    iget-object v2, p0, Lcom/badlogic/gdx/math/Octree$OctreeNode;->this$0:Lcom/badlogic/gdx/math/Octree;

    iget v2, v2, Lcom/badlogic/gdx/math/Octree;->maxItemsPerNode:I

    if-lt v0, v2, :cond_2

    iget v0, p0, Lcom/badlogic/gdx/math/Octree$OctreeNode;->level:I

    if-lez v0, :cond_2

    invoke-direct {p0}, Lcom/badlogic/gdx/math/Octree$OctreeNode;->split()V

    iget-object v0, p0, Lcom/badlogic/gdx/math/Octree$OctreeNode;->children:[Lcom/badlogic/gdx/math/Octree$OctreeNode;

    array-length v2, v0

    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    invoke-virtual {v3, p1}, Lcom/badlogic/gdx/math/Octree$OctreeNode;->add(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/math/Octree$OctreeNode;->geometries:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method protected getAll(Lcom/badlogic/gdx/utils/ObjectSet;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/ObjectSet<",
            "TT;>;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/badlogic/gdx/math/Octree$OctreeNode;->leaf:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/math/Octree$OctreeNode;->children:[Lcom/badlogic/gdx/math/Octree$OctreeNode;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Lcom/badlogic/gdx/math/Octree$OctreeNode;->getAll(Lcom/badlogic/gdx/utils/ObjectSet;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/math/Octree$OctreeNode;->geometries:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/ObjectSet;->addAll(Lcom/badlogic/gdx/utils/Array;)V

    return-void
.end method

.method protected getBoundingBox(Lcom/badlogic/gdx/utils/ObjectSet;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/ObjectSet<",
            "Lcom/badlogic/gdx/math/collision/BoundingBox;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/badlogic/gdx/math/Octree$OctreeNode;->leaf:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/math/Octree$OctreeNode;->children:[Lcom/badlogic/gdx/math/Octree$OctreeNode;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Lcom/badlogic/gdx/math/Octree$OctreeNode;->getBoundingBox(Lcom/badlogic/gdx/utils/ObjectSet;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/math/Octree$OctreeNode;->bounds:Lcom/badlogic/gdx/math/collision/BoundingBox;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/ObjectSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected isLeaf()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/math/Octree$OctreeNode;->leaf:Z

    return v0
.end method

.method protected query(Lcom/badlogic/gdx/math/Frustum;Lcom/badlogic/gdx/utils/ObjectSet;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/math/Frustum;",
            "Lcom/badlogic/gdx/utils/ObjectSet<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/math/Octree$OctreeNode;->bounds:Lcom/badlogic/gdx/math/collision/BoundingBox;

    invoke-static {p1, v0}, Lcom/badlogic/gdx/math/Intersector;->intersectFrustumBounds(Lcom/badlogic/gdx/math/Frustum;Lcom/badlogic/gdx/math/collision/BoundingBox;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/math/Octree$OctreeNode;->leaf:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/math/Octree$OctreeNode;->children:[Lcom/badlogic/gdx/math/Octree$OctreeNode;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    invoke-virtual {v3, p1, p2}, Lcom/badlogic/gdx/math/Octree$OctreeNode;->query(Lcom/badlogic/gdx/math/Frustum;Lcom/badlogic/gdx/utils/ObjectSet;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/math/Octree$OctreeNode;->geometries:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/badlogic/gdx/math/Octree$OctreeNode;->this$0:Lcom/badlogic/gdx/math/Octree;

    iget-object v2, v2, Lcom/badlogic/gdx/math/Octree;->collider:Lcom/badlogic/gdx/math/Octree$Collider;

    invoke-interface {v2, p1, v1}, Lcom/badlogic/gdx/math/Octree$Collider;->intersects(Lcom/badlogic/gdx/math/Frustum;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p2, v1}, Lcom/badlogic/gdx/utils/ObjectSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-void
.end method

.method protected query(Lcom/badlogic/gdx/math/collision/BoundingBox;Lcom/badlogic/gdx/utils/ObjectSet;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/math/collision/BoundingBox;",
            "Lcom/badlogic/gdx/utils/ObjectSet<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/math/Octree$OctreeNode;->bounds:Lcom/badlogic/gdx/math/collision/BoundingBox;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/math/collision/BoundingBox;->intersects(Lcom/badlogic/gdx/math/collision/BoundingBox;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/math/Octree$OctreeNode;->leaf:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/math/Octree$OctreeNode;->children:[Lcom/badlogic/gdx/math/Octree$OctreeNode;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    invoke-virtual {v3, p1, p2}, Lcom/badlogic/gdx/math/Octree$OctreeNode;->query(Lcom/badlogic/gdx/math/collision/BoundingBox;Lcom/badlogic/gdx/utils/ObjectSet;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/badlogic/gdx/math/Octree$OctreeNode;->geometries:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/math/Octree$OctreeNode;->this$0:Lcom/badlogic/gdx/math/Octree;

    iget-object v1, v1, Lcom/badlogic/gdx/math/Octree;->collider:Lcom/badlogic/gdx/math/Octree$Collider;

    iget-object v2, p0, Lcom/badlogic/gdx/math/Octree$OctreeNode;->bounds:Lcom/badlogic/gdx/math/collision/BoundingBox;

    invoke-interface {v1, v2, v0}, Lcom/badlogic/gdx/math/Octree$Collider;->intersects(Lcom/badlogic/gdx/math/collision/BoundingBox;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/utils/ObjectSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-void
.end method

.method protected rayCast(Lcom/badlogic/gdx/math/collision/Ray;Lcom/badlogic/gdx/math/Octree$RayCastResult;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/math/collision/Ray;",
            "Lcom/badlogic/gdx/math/Octree$RayCastResult<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/math/Octree$OctreeNode;->bounds:Lcom/badlogic/gdx/math/collision/BoundingBox;

    sget-object v1, Lcom/badlogic/gdx/math/Octree;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-static {p1, v0, v1}, Lcom/badlogic/gdx/math/Intersector;->intersectRayBounds(Lcom/badlogic/gdx/math/collision/Ray;Lcom/badlogic/gdx/math/collision/BoundingBox;Lcom/badlogic/gdx/math/Vector3;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/badlogic/gdx/math/Octree;->tmp:Lcom/badlogic/gdx/math/Vector3;

    iget-object v1, p1, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->dst2(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v0

    iget v1, p2, Lcom/badlogic/gdx/math/Octree$RayCastResult;->maxDistanceSq:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/badlogic/gdx/math/Octree$OctreeNode;->leaf:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/badlogic/gdx/math/Octree$OctreeNode;->children:[Lcom/badlogic/gdx/math/Octree$OctreeNode;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_5

    aget-object v3, v0, v2

    invoke-virtual {v3, p1, p2}, Lcom/badlogic/gdx/math/Octree$OctreeNode;->rayCast(Lcom/badlogic/gdx/math/collision/Ray;Lcom/badlogic/gdx/math/Octree$RayCastResult;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/math/Octree$OctreeNode;->geometries:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/badlogic/gdx/math/Octree$OctreeNode;->this$0:Lcom/badlogic/gdx/math/Octree;

    iget-object v2, v2, Lcom/badlogic/gdx/math/Octree;->collider:Lcom/badlogic/gdx/math/Octree$Collider;

    invoke-interface {v2, p1, v1}, Lcom/badlogic/gdx/math/Octree$Collider;->intersects(Lcom/badlogic/gdx/math/collision/Ray;Ljava/lang/Object;)F

    move-result v2

    iget-object v3, p2, Lcom/badlogic/gdx/math/Octree$RayCastResult;->geometry:Ljava/lang/Object;

    if-eqz v3, :cond_4

    iget v3, p2, Lcom/badlogic/gdx/math/Octree$RayCastResult;->distance:F

    cmpg-float v3, v2, v3

    if-gez v3, :cond_3

    :cond_4
    iput-object v1, p2, Lcom/badlogic/gdx/math/Octree$RayCastResult;->geometry:Ljava/lang/Object;

    iput v2, p2, Lcom/badlogic/gdx/math/Octree$RayCastResult;->distance:F

    goto :goto_1

    :cond_5
    return-void
.end method

.method protected remove(Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/badlogic/gdx/math/Octree$OctreeNode;->leaf:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/badlogic/gdx/math/Octree$OctreeNode;->children:[Lcom/badlogic/gdx/math/Octree$OctreeNode;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v5, v0, v3

    invoke-virtual {v5, p1}, Lcom/badlogic/gdx/math/Octree$OctreeNode;->remove(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    if-eqz v4, :cond_3

    new-instance p1, Lcom/badlogic/gdx/utils/ObjectSet;

    invoke-direct {p1}, Lcom/badlogic/gdx/utils/ObjectSet;-><init>()V

    iget-object v0, p0, Lcom/badlogic/gdx/math/Octree$OctreeNode;->children:[Lcom/badlogic/gdx/math/Octree$OctreeNode;

    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Lcom/badlogic/gdx/math/Octree$OctreeNode;->getAll(Lcom/badlogic/gdx/utils/ObjectSet;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget v0, p1, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    iget-object v1, p0, Lcom/badlogic/gdx/math/Octree$OctreeNode;->this$0:Lcom/badlogic/gdx/math/Octree;

    iget v1, v1, Lcom/badlogic/gdx/math/Octree;->maxItemsPerNode:I

    if-gt v0, v1, :cond_3

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/ObjectSet;->iterator()Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/math/Octree$OctreeNode;->geometries:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    invoke-direct {p0}, Lcom/badlogic/gdx/math/Octree$OctreeNode;->merge()V

    :cond_3
    return v4

    :cond_4
    iget-object v0, p0, Lcom/badlogic/gdx/math/Octree$OctreeNode;->geometries:Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    move-result p1

    return p1
.end method
