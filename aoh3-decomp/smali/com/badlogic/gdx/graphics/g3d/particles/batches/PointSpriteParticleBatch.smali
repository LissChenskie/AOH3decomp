.class public Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;
.super Lcom/badlogic/gdx/graphics/g3d/particles/batches/BufferedParticleBatch;
.source "PointSpriteParticleBatch.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/graphics/g3d/particles/batches/BufferedParticleBatch<",
        "Lcom/badlogic/gdx/graphics/g3d/particles/renderers/PointSpriteControllerRenderData;",
        ">;"
    }
.end annotation


# static fields
.field protected static final CPU_ATTRIBUTES:Lcom/badlogic/gdx/graphics/VertexAttributes;

.field protected static final CPU_COLOR_OFFSET:I

.field protected static final CPU_POSITION_OFFSET:I

.field protected static final CPU_REGION_OFFSET:I

.field protected static final CPU_SIZE_AND_ROTATION_OFFSET:I

.field protected static final CPU_VERTEX_SIZE:I

.field protected static final TMP_V1:Lcom/badlogic/gdx/math/Vector3;

.field private static pointSpritesEnabled:Z = false

.field protected static final sizeAndRotationUsage:I = 0x200


# instance fields
.field protected blendingAttribute:Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;

.field protected depthTestAttribute:Lcom/badlogic/gdx/graphics/g3d/attributes/DepthTestAttribute;

.field renderable:Lcom/badlogic/gdx/graphics/g3d/Renderable;

.field private vertices:[F


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->TMP_V1:Lcom/badlogic/gdx/math/Vector3;

    new-instance v0, Lcom/badlogic/gdx/graphics/VertexAttributes;

    const/4 v1, 0x4

    new-array v2, v1, [Lcom/badlogic/gdx/graphics/VertexAttribute;

    new-instance v3, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const-string v4, "a_position"

    const/4 v5, 0x1

    const/4 v6, 0x3

    invoke-direct {v3, v5, v6, v4}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const-string v4, "a_color"

    const/4 v7, 0x2

    invoke-direct {v3, v7, v1, v4}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v3, v2, v5

    new-instance v3, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/4 v4, 0x0

    sget-object v4, Lcom/badlogic/gdx/net/otUh/aBEBOpwLZcQFCZ;->OjHNQQHfYN:Ljava/lang/String;

    const/16 v8, 0x10

    invoke-direct {v3, v8, v1, v4}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v3, v2, v7

    new-instance v3, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const-string v4, "a_sizeAndRotation"

    const/16 v9, 0x200

    invoke-direct {v3, v9, v6, v4}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v3, v2, v6

    invoke-direct {v0, v2}, Lcom/badlogic/gdx/graphics/VertexAttributes;-><init>([Lcom/badlogic/gdx/graphics/VertexAttribute;)V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->CPU_ATTRIBUTES:Lcom/badlogic/gdx/graphics/VertexAttributes;

    iget v2, v0, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    div-int/2addr v2, v1

    int-to-short v2, v2

    sput v2, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->CPU_VERTEX_SIZE:I

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/graphics/VertexAttributes;->findByUsage(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v2

    iget v2, v2, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/2addr v2, v1

    int-to-short v2, v2

    sput v2, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->CPU_POSITION_OFFSET:I

    invoke-virtual {v0, v7}, Lcom/badlogic/gdx/graphics/VertexAttributes;->findByUsage(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v2

    iget v2, v2, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/2addr v2, v1

    int-to-short v2, v2

    sput v2, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->CPU_COLOR_OFFSET:I

    invoke-virtual {v0, v8}, Lcom/badlogic/gdx/graphics/VertexAttributes;->findByUsage(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v2

    iget v2, v2, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/2addr v2, v1

    int-to-short v2, v2

    sput v2, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->CPU_REGION_OFFSET:I

    invoke-virtual {v0, v9}, Lcom/badlogic/gdx/graphics/VertexAttributes;->findByUsage(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/2addr v0, v1

    int-to-short v0, v0

    sput v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->CPU_SIZE_AND_ROTATION_OFFSET:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x3e8

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Config;

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$ParticleType;->Point:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$ParticleType;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Config;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$ParticleType;)V

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;-><init>(ILcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Config;)V

    return-void
.end method

.method public constructor <init>(ILcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Config;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;-><init>(ILcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Config;Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;Lcom/badlogic/gdx/graphics/g3d/attributes/DepthTestAttribute;)V

    return-void
.end method

.method public constructor <init>(ILcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Config;Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;Lcom/badlogic/gdx/graphics/g3d/attributes/DepthTestAttribute;)V
    .locals 2

    const-class v0, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/PointSpriteControllerRenderData;

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/BufferedParticleBatch;-><init>(Ljava/lang/Class;)V

    sget-boolean v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->pointSpritesEnabled:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->enablePointSprites()V

    :cond_0
    iput-object p3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->blendingAttribute:Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;

    iput-object p4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->depthTestAttribute:Lcom/badlogic/gdx/graphics/g3d/attributes/DepthTestAttribute;

    if-nez p3, :cond_1

    new-instance p3, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;

    const/16 p4, 0x303

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    invoke-direct {p3, v1, p4, v0}, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;-><init>(IIF)V

    iput-object p3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->blendingAttribute:Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;

    :cond_1
    iget-object p3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->depthTestAttribute:Lcom/badlogic/gdx/graphics/g3d/attributes/DepthTestAttribute;

    if-nez p3, :cond_2

    new-instance p3, Lcom/badlogic/gdx/graphics/g3d/attributes/DepthTestAttribute;

    const/16 p4, 0x203

    const/4 v0, 0x0

    invoke-direct {p3, p4, v0}, Lcom/badlogic/gdx/graphics/g3d/attributes/DepthTestAttribute;-><init>(IZ)V

    iput-object p3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->depthTestAttribute:Lcom/badlogic/gdx/graphics/g3d/attributes/DepthTestAttribute;

    :cond_2
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->allocRenderable()V

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->ensureCapacity(I)V

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->renderable:Lcom/badlogic/gdx/graphics/g3d/Renderable;

    new-instance p3, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader;

    iget-object p4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->renderable:Lcom/badlogic/gdx/graphics/g3d/Renderable;

    invoke-direct {p3, p4, p2}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader;-><init>(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/particles/ParticleShader$Config;)V

    iput-object p3, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->shader:Lcom/badlogic/gdx/graphics/g3d/Shader;

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->renderable:Lcom/badlogic/gdx/graphics/g3d/Renderable;

    iget-object p1, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->shader:Lcom/badlogic/gdx/graphics/g3d/Shader;

    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/g3d/Shader;->init()V

    return-void
.end method

.method private static enablePointSprites()V
    .locals 2

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const v1, 0x8642

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glEnable(I)V

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/Application$ApplicationType;->Desktop:Lcom/badlogic/gdx/Application$ApplicationType;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const v1, 0x8861

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glEnable(I)V

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->pointSpritesEnabled:Z

    return-void
.end method


# virtual methods
.method protected allocParticlesData(I)V
    .locals 4

    sget v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->CPU_VERTEX_SIZE:I

    mul-int/2addr v0, p1

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->vertices:[F

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->renderable:Lcom/badlogic/gdx/graphics/g3d/Renderable;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->renderable:Lcom/badlogic/gdx/graphics/g3d/Renderable;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Mesh;->dispose()V

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->renderable:Lcom/badlogic/gdx/graphics/g3d/Renderable;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    new-instance v1, Lcom/badlogic/gdx/graphics/Mesh;

    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->CPU_ATTRIBUTES:Lcom/badlogic/gdx/graphics/VertexAttributes;

    const/4 v3, 0x0

    invoke-direct {v1, v3, p1, v3, v2}, Lcom/badlogic/gdx/graphics/Mesh;-><init>(ZIILcom/badlogic/gdx/graphics/VertexAttributes;)V

    iput-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    return-void
.end method

.method protected allocRenderable()V
    .locals 5

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/Renderable;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/Renderable;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->renderable:Lcom/badlogic/gdx/graphics/g3d/Renderable;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    const/4 v1, 0x0

    iput v1, v0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->primitiveType:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->renderable:Lcom/badlogic/gdx/graphics/g3d/Renderable;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iput v1, v0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->offset:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->renderable:Lcom/badlogic/gdx/graphics/g3d/Renderable;

    new-instance v2, Lcom/badlogic/gdx/graphics/g3d/Material;

    const/4 v3, 0x3

    new-array v3, v3, [Lcom/badlogic/gdx/graphics/g3d/Attribute;

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->blendingAttribute:Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->depthTestAttribute:Lcom/badlogic/gdx/graphics/g3d/attributes/DepthTestAttribute;

    aput-object v4, v3, v1

    const/4 v1, 0x0

    move-object v4, v1

    check-cast v4, Lcom/badlogic/gdx/graphics/Texture;

    invoke-static {v1}, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->createDiffuse(Lcom/badlogic/gdx/graphics/Texture;)Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v3, v4

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/graphics/g3d/Material;-><init>([Lcom/badlogic/gdx/graphics/g3d/Attribute;)V

    iput-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->material:Lcom/badlogic/gdx/graphics/g3d/Material;

    return-void
.end method

.method protected flush([I)V
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->renderData:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v1

    const/4 v3, 0x0

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/PointSpriteControllerRenderData;

    iget-object v5, v4, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/PointSpriteControllerRenderData;->scaleChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v6, v4, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/PointSpriteControllerRenderData;->regionChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v7, v4, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/PointSpriteControllerRenderData;->positionChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v8, v4, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/PointSpriteControllerRenderData;->colorChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget-object v9, v4, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/PointSpriteControllerRenderData;->rotationChannel:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    const/4 v10, 0x0

    :goto_0
    iget-object v11, v4, Lcom/badlogic/gdx/graphics/g3d/particles/renderers/PointSpriteControllerRenderData;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v11, v11, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    iget v11, v11, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    if-ge v10, v11, :cond_0

    aget v11, p1, v3

    sget v12, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->CPU_VERTEX_SIZE:I

    mul-int/2addr v11, v12

    iget v12, v6, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    mul-int/2addr v12, v10

    iget v13, v7, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    mul-int/2addr v13, v10

    iget v14, v8, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    mul-int/2addr v14, v10

    iget v15, v9, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    mul-int/2addr v15, v10

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->vertices:[F

    sget v16, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->CPU_POSITION_OFFSET:I

    add-int v17, v11, v16

    move-object/from16 v18, v1

    iget-object v1, v7, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v19, v13, 0x0

    aget v1, v1, v19

    aput v1, v2, v17

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->vertices:[F

    add-int v2, v11, v16

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v17, v4

    iget-object v4, v7, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v19, v13, 0x1

    aget v4, v4, v19

    aput v4, v1, v2

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->vertices:[F

    add-int v16, v11, v16

    add-int/lit8 v16, v16, 0x2

    iget-object v2, v7, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v13, v13, 0x2

    aget v2, v2, v13

    aput v2, v1, v16

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->vertices:[F

    sget v2, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->CPU_COLOR_OFFSET:I

    add-int v4, v11, v2

    iget-object v13, v8, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v16, v14, 0x0

    aget v13, v13, v16

    aput v13, v1, v4

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->vertices:[F

    add-int v4, v11, v2

    add-int/lit8 v4, v4, 0x1

    iget-object v13, v8, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v16, v14, 0x1

    aget v13, v13, v16

    aput v13, v1, v4

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->vertices:[F

    add-int v4, v11, v2

    add-int/lit8 v4, v4, 0x2

    iget-object v13, v8, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v16, v14, 0x2

    aget v13, v13, v16

    aput v13, v1, v4

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->vertices:[F

    add-int/2addr v2, v11

    add-int/lit8 v2, v2, 0x3

    iget-object v4, v8, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v14, v14, 0x3

    aget v4, v4, v14

    aput v4, v1, v2

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->vertices:[F

    sget v2, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->CPU_SIZE_AND_ROTATION_OFFSET:I

    add-int v4, v11, v2

    iget-object v13, v5, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    iget v14, v5, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    mul-int/2addr v14, v10

    aget v13, v13, v14

    aput v13, v1, v4

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->vertices:[F

    add-int v4, v11, v2

    add-int/lit8 v4, v4, 0x1

    iget-object v13, v9, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v14, v15, 0x0

    aget v13, v13, v14

    aput v13, v1, v4

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->vertices:[F

    add-int/2addr v2, v11

    add-int/lit8 v2, v2, 0x2

    iget-object v4, v9, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v15, v15, 0x1

    aget v4, v4, v15

    aput v4, v1, v2

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->vertices:[F

    sget v2, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->CPU_REGION_OFFSET:I

    add-int v4, v11, v2

    iget-object v13, v6, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v14, v12, 0x0

    aget v13, v13, v14

    aput v13, v1, v4

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->vertices:[F

    add-int v4, v11, v2

    add-int/lit8 v4, v4, 0x1

    iget-object v13, v6, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v14, v12, 0x1

    aget v13, v13, v14

    aput v13, v1, v4

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->vertices:[F

    add-int v4, v11, v2

    add-int/lit8 v4, v4, 0x2

    iget-object v13, v6, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v14, v12, 0x2

    aget v13, v13, v14

    aput v13, v1, v4

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->vertices:[F

    add-int/2addr v11, v2

    add-int/lit8 v11, v11, 0x3

    iget-object v2, v6, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    add-int/lit8 v12, v12, 0x3

    aget v2, v2, v12

    aput v2, v1, v11

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v4, v17

    move-object/from16 v1, v18

    goto/16 :goto_0

    :cond_1
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->renderable:Lcom/badlogic/gdx/graphics/g3d/Renderable;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget v2, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->bufferedParticlesCount:I

    iput v2, v1, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->size:I

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->renderable:Lcom/badlogic/gdx/graphics/g3d/Renderable;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->vertices:[F

    iget v3, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->bufferedParticlesCount:I

    sget v4, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->CPU_VERTEX_SIZE:I

    mul-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Lcom/badlogic/gdx/graphics/Mesh;->setVertices([FII)Lcom/badlogic/gdx/graphics/Mesh;

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->renderable:Lcom/badlogic/gdx/graphics/g3d/Renderable;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->update()V

    return-void
.end method

.method public getBlendingAttribute()Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->blendingAttribute:Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;

    return-object v0
.end method

.method public getRenderables(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/utils/Pool;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g3d/Renderable;",
            ">;",
            "Lcom/badlogic/gdx/utils/Pool<",
            "Lcom/badlogic/gdx/graphics/g3d/Renderable;",
            ">;)V"
        }
    .end annotation

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->bufferedParticlesCount:I

    if-lez v0, :cond_0

    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/badlogic/gdx/graphics/g3d/Renderable;

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->renderable:Lcom/badlogic/gdx/graphics/g3d/Renderable;

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/graphics/g3d/Renderable;->set(Lcom/badlogic/gdx/graphics/g3d/Renderable;)Lcom/badlogic/gdx/graphics/g3d/Renderable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public getTexture()Lcom/badlogic/gdx/graphics/Texture;
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->renderable:Lcom/badlogic/gdx/graphics/g3d/Renderable;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->material:Lcom/badlogic/gdx/graphics/g3d/Material;

    sget-wide v1, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Diffuse:J

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/Material;->get(J)Lcom/badlogic/gdx/graphics/g3d/Attribute;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->textureDescription:Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->texture:Lcom/badlogic/gdx/graphics/GLTexture;

    check-cast v0, Lcom/badlogic/gdx/graphics/Texture;

    return-object v0
.end method

.method public load(Lcom/badlogic/gdx/assets/AssetManager;Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;)V
    .locals 1

    const-string v0, "pointSpriteBatch"

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;->getSaveData(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;->loadAsset()Lcom/badlogic/gdx/assets/AssetDescriptor;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/assets/AssetManager;->get(Lcom/badlogic/gdx/assets/AssetDescriptor;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->setTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    :cond_0
    return-void
.end method

.method public save(Lcom/badlogic/gdx/assets/AssetManager;Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;)V
    .locals 1

    const-string v0, "pointSpriteBatch"

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;->createSaveData(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;

    move-result-object p2

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/assets/AssetManager;->getAssetFileName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {p2, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$SaveData;->saveAsset(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public setTexture(Lcom/badlogic/gdx/graphics/Texture;)V
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/batches/PointSpriteParticleBatch;->renderable:Lcom/badlogic/gdx/graphics/g3d/Renderable;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->material:Lcom/badlogic/gdx/graphics/g3d/Material;

    sget-wide v1, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Diffuse:J

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/Material;->get(J)Lcom/badlogic/gdx/graphics/g3d/Attribute;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->textureDescription:Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;

    iput-object p1, v0, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->texture:Lcom/badlogic/gdx/graphics/GLTexture;

    return-void
.end method
