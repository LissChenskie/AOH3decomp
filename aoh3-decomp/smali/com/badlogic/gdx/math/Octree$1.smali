.class Lcom/badlogic/gdx/math/Octree$1;
.super Lcom/badlogic/gdx/utils/Pool;
.source "Octree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/math/Octree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/utils/Pool<",
        "Lcom/badlogic/gdx/math/Octree<",
        "TT;>.OctreeNode;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/math/Octree;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/math/Octree;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/math/Octree$1;->this$0:Lcom/badlogic/gdx/math/Octree;

    invoke-direct {p0}, Lcom/badlogic/gdx/utils/Pool;-><init>()V

    return-void
.end method


# virtual methods
.method protected newObject()Lcom/badlogic/gdx/math/Octree$OctreeNode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/math/Octree<",
            "TT;>.OctreeNode;"
        }
    .end annotation

    new-instance v0, Lcom/badlogic/gdx/math/Octree$OctreeNode;

    iget-object v1, p0, Lcom/badlogic/gdx/math/Octree$1;->this$0:Lcom/badlogic/gdx/math/Octree;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/math/Octree$OctreeNode;-><init>(Lcom/badlogic/gdx/math/Octree;)V

    return-object v0
.end method

.method protected bridge synthetic newObject()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Octree$1;->newObject()Lcom/badlogic/gdx/math/Octree$OctreeNode;

    move-result-object v0

    return-object v0
.end method
