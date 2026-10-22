.class public Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader;
.super Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;
.source "DepthShader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader$Config;
    }
.end annotation


# static fields
.field private static defaultFragmentShader:Ljava/lang/String;

.field private static defaultVertexShader:Ljava/lang/String;

.field private static final tmpAttributes:Lcom/badlogic/gdx/graphics/g3d/Attributes;


# instance fields
.field private final alphaTestAttribute:Lcom/badlogic/gdx/graphics/g3d/attributes/FloatAttribute;

.field public final numBones:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/Attributes;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/Attributes;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader;->tmpAttributes:Lcom/badlogic/gdx/graphics/g3d/Attributes;

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/Renderable;)V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader$Config;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader$Config;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader;-><init>(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader$Config;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader$Config;)V
    .locals 1

    invoke-static {p1, p2}, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader;->createPrefix(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader$Config;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader;-><init>(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader$Config;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader$Config;Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;-><init>(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    invoke-static {p1}, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader;->combineAttributes(Lcom/badlogic/gdx/graphics/g3d/Renderable;)Lcom/badlogic/gdx/graphics/g3d/Attributes;

    iget-object p3, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->bones:[Lcom/badlogic/gdx/math/Matrix4;

    const-string v0, ", max configured: "

    if-eqz p3, :cond_1

    iget-object p3, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->bones:[Lcom/badlogic/gdx/math/Matrix4;

    array-length p3, p3

    iget v1, p2, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader$Config;->numBones:I

    if-gt p3, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p3, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "too many bones: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->bones:[Lcom/badlogic/gdx/math/Matrix4;

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p2, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader$Config;->numBones:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p3

    :cond_1
    :goto_0
    iget-object p3, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->bones:[Lcom/badlogic/gdx/math/Matrix4;

    if-nez p3, :cond_2

    const/4 p3, 0x0

    goto :goto_1

    :cond_2
    iget p3, p2, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader$Config;->numBones:I

    :goto_1
    iput p3, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader;->numBones:I

    iget-object p1, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget-object p1, p1, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/VertexAttributes;->getBoneWeights()I

    move-result p1

    iget p3, p2, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader$Config;->numBoneWeights:I

    if-gt p1, p3, :cond_3

    new-instance p1, Lcom/badlogic/gdx/graphics/g3d/attributes/FloatAttribute;

    sget-wide v0, Lcom/badlogic/gdx/graphics/g3d/attributes/FloatAttribute;->AlphaTest:J

    iget p2, p2, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader$Config;->defaultAlphaTest:F

    invoke-direct {p1, v0, v1, p2}, Lcom/badlogic/gdx/graphics/g3d/attributes/FloatAttribute;-><init>(JF)V

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader;->alphaTestAttribute:Lcom/badlogic/gdx/graphics/g3d/attributes/FloatAttribute;

    return-void

    :cond_3
    new-instance p3, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "too many bone weights: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p2, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader$Config;->numBoneWeights:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader$Config;Ljava/lang/String;)V
    .locals 7

    iget-object v0, p2, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader$Config;->vertexShader:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader$Config;->vertexShader:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader;->getDefaultVertexShader()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v5, v0

    iget-object v0, p2, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader$Config;->fragmentShader:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader$Config;->fragmentShader:Ljava/lang/String;

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader;->getDefaultFragmentShader()Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v6, v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader;-><init>(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader$Config;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader$Config;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v0, p4, p3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader;-><init>(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader$Config;Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    return-void
.end method

.method private static final combineAttributes(Lcom/badlogic/gdx/graphics/g3d/Renderable;)Lcom/badlogic/gdx/graphics/g3d/Attributes;
    .locals 2

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader;->tmpAttributes:Lcom/badlogic/gdx/graphics/g3d/Attributes;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->clear()V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->environment:Lcom/badlogic/gdx/graphics/g3d/Environment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->environment:Lcom/badlogic/gdx/graphics/g3d/Environment;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->set(Ljava/lang/Iterable;)V

    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->material:Lcom/badlogic/gdx/graphics/g3d/Material;

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/badlogic/gdx/graphics/g3d/Renderable;->material:Lcom/badlogic/gdx/graphics/g3d/Material;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->set(Ljava/lang/Iterable;)V

    :cond_1
    return-object v0
.end method

.method public static createPrefix(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader$Config;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->createPrefix(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;)Ljava/lang/String;

    move-result-object p0

    iget-boolean p1, p1, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader$Config;->depthBufferOnly:Z

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "#define PackedDepthFlag\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static final getDefaultFragmentShader()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader;->defaultFragmentShader:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v1, "com/badlogic/gdx/graphics/g3d/shaders/depth.fragment.glsl"

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Files;->classpath(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader;->defaultFragmentShader:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader;->defaultFragmentShader:Ljava/lang/String;

    return-object v0
.end method

.method public static final getDefaultVertexShader()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader;->defaultVertexShader:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v1, "com/badlogic/gdx/graphics/g3d/shaders/depth.vertex.glsl"

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Files;->classpath(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader;->defaultVertexShader:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader;->defaultVertexShader:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public begin(Lcom/badlogic/gdx/graphics/Camera;Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->begin(Lcom/badlogic/gdx/graphics/Camera;Lcom/badlogic/gdx/graphics/g3d/utils/RenderContext;)V

    return-void
.end method

.method public canRender(Lcom/badlogic/gdx/graphics/g3d/Renderable;)Z
    .locals 8

    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->bones:[Lcom/badlogic/gdx/math/Matrix4;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->bones:[Lcom/badlogic/gdx/math/Matrix4;

    array-length v0, v0

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader;->config:Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;

    iget v2, v2, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->numBones:I

    if-le v0, v2, :cond_0

    return v1

    :cond_0
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->meshPart:Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/model/MeshPart;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/VertexAttributes;->getBoneWeights()I

    move-result v0

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader;->config:Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;

    iget v2, v2, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Config;->numBoneWeights:I

    if-le v0, v2, :cond_1

    return v1

    :cond_1
    invoke-static {p1}, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader;->combineAttributes(Lcom/badlogic/gdx/graphics/g3d/Renderable;)Lcom/badlogic/gdx/graphics/g3d/Attributes;

    move-result-object v0

    sget-wide v2, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;->Type:J

    invoke-virtual {v0, v2, v3}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->has(J)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    iget-wide v4, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader;->attributesMask:J

    sget-wide v6, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;->Type:J

    and-long/2addr v4, v6

    sget-wide v6, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;->Type:J

    cmp-long v2, v4, v6

    if-eqz v2, :cond_2

    return v1

    :cond_2
    sget-wide v4, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Diffuse:J

    invoke-virtual {v0, v4, v5}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->has(J)Z

    move-result v0

    iget-wide v4, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader;->attributesMask:J

    sget-wide v6, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Diffuse:J

    and-long/2addr v4, v6

    sget-wide v6, Lcom/badlogic/gdx/graphics/g3d/attributes/TextureAttribute;->Diffuse:J

    cmp-long v2, v4, v6

    if-nez v2, :cond_3

    move v2, v3

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_0
    if-eq v0, v2, :cond_4

    return v1

    :cond_4
    iget-object p1, p1, Lcom/badlogic/gdx/graphics/g3d/Renderable;->bones:[Lcom/badlogic/gdx/math/Matrix4;

    if-eqz p1, :cond_5

    move p1, v3

    goto :goto_1

    :cond_5
    move p1, v1

    :goto_1
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader;->numBones:I

    if-lez v0, :cond_6

    move v0, v3

    goto :goto_2

    :cond_6
    move v0, v1

    :goto_2
    if-ne p1, v0, :cond_7

    move v1, v3

    :cond_7
    return v1
.end method

.method public end()V
    .locals 0

    invoke-super {p0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->end()V

    return-void
.end method

.method public render(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/Attributes;)V
    .locals 5

    sget-wide v0, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;->Type:J

    invoke-virtual {p2, v0, v1}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->has(J)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-wide v0, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;->Type:J

    invoke-virtual {p2, v0, v1}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->get(J)Lcom/badlogic/gdx/graphics/g3d/Attribute;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;

    sget-wide v1, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;->Type:J

    invoke-virtual {p2, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->remove(J)V

    sget-wide v1, Lcom/badlogic/gdx/graphics/g3d/attributes/FloatAttribute;->AlphaTest:J

    invoke-virtual {p2, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->has(J)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader;->alphaTestAttribute:Lcom/badlogic/gdx/graphics/g3d/attributes/FloatAttribute;

    invoke-virtual {p2, v2}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->set(Lcom/badlogic/gdx/graphics/g3d/Attribute;)V

    :cond_0
    iget v2, v0, Lcom/badlogic/gdx/graphics/g3d/attributes/BlendingAttribute;->opacity:F

    sget-wide v3, Lcom/badlogic/gdx/graphics/g3d/attributes/FloatAttribute;->AlphaTest:J

    invoke-virtual {p2, v3, v4}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->get(J)Lcom/badlogic/gdx/graphics/g3d/Attribute;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/g3d/attributes/FloatAttribute;

    iget v3, v3, Lcom/badlogic/gdx/graphics/g3d/attributes/FloatAttribute;->value:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1

    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->render(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/Attributes;)V

    :cond_1
    if-nez v1, :cond_2

    sget-wide v1, Lcom/badlogic/gdx/graphics/g3d/attributes/FloatAttribute;->AlphaTest:J

    invoke-virtual {p2, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->remove(J)V

    :cond_2
    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/graphics/g3d/Attributes;->set(Lcom/badlogic/gdx/graphics/g3d/Attribute;)V

    goto :goto_0

    :cond_3
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader;->render(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/Attributes;)V

    :goto_0
    return-void
.end method
