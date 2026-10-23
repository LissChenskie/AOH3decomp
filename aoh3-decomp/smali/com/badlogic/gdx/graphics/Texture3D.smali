.class public Lcom/badlogic/gdx/graphics/Texture3D;
.super Lcom/badlogic/gdx/graphics/GLTexture;
.source "Texture3D.java"


# static fields
.field static final managedTexture3Ds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/badlogic/gdx/Application;",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/Texture3D;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private data:Lcom/badlogic/gdx/graphics/Texture3DData;

.field protected rWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/Texture3D;->managedTexture3Ds:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 9

    new-instance v8, Lcom/badlogic/gdx/graphics/glutils/CustomTexture3DData;

    const/4 v4, 0x0

    move-object v0, v8

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/badlogic/gdx/graphics/glutils/CustomTexture3DData;-><init>(IIIIIII)V

    invoke-direct {p0, v8}, Lcom/badlogic/gdx/graphics/Texture3D;-><init>(Lcom/badlogic/gdx/graphics/Texture3DData;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/Texture3DData;)V
    .locals 2

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/GL20;->glGenTexture()I

    move-result v0

    const v1, 0x806f

    invoke-direct {p0, v1, v0}, Lcom/badlogic/gdx/graphics/GLTexture;-><init>(II)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/Texture3D;->rWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/Texture3D;->load(Lcom/badlogic/gdx/graphics/Texture3DData;)V

    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/Texture3DData;->isManaged()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-static {p1, p0}, Lcom/badlogic/gdx/graphics/Texture3D;->addManagedTexture(Lcom/badlogic/gdx/Application;Lcom/badlogic/gdx/graphics/Texture3D;)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v0, "Texture3D requires a device running with GLES 3.0 compatibilty"

    invoke-direct {p1, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static addManagedTexture(Lcom/badlogic/gdx/Application;Lcom/badlogic/gdx/graphics/Texture3D;)V
    .locals 2

    sget-object v0, Lcom/badlogic/gdx/graphics/Texture3D;->managedTexture3Ds:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/Array;

    if-nez v1, :cond_0

    new-instance v1, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    :cond_0
    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static clearAllTextureArrays(Lcom/badlogic/gdx/Application;)V
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/graphics/Texture3D;->managedTexture3Ds:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getManagedStatus()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Managed TextureArrays/app: { "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Texture3D;->managedTexture3Ds:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/Application;

    sget-object v3, Lcom/badlogic/gdx/graphics/Texture3D;->managedTexture3Ds:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNumManagedTextures3D()I
    .locals 2

    sget-object v0, Lcom/badlogic/gdx/graphics/Texture3D;->managedTexture3Ds:Ljava/util/Map;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    return v0
.end method

.method public static invalidateAllTextureArrays(Lcom/badlogic/gdx/Application;)V
    .locals 2

    sget-object v0, Lcom/badlogic/gdx/graphics/Texture3D;->managedTexture3Ds:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/badlogic/gdx/utils/Array;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/Texture3D;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture3D;->reload()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private load(Lcom/badlogic/gdx/graphics/Texture3DData;)V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Texture3D;->data:Lcom/badlogic/gdx/graphics/Texture3DData;

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/Texture3DData;->isManaged()Z

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/Texture3D;->data:Lcom/badlogic/gdx/graphics/Texture3DData;

    invoke-interface {v1}, Lcom/badlogic/gdx/graphics/Texture3DData;->isManaged()Z

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v0, "New data must have the same managed status as the old data"

    invoke-direct {p1, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/Texture3D;->data:Lcom/badlogic/gdx/graphics/Texture3DData;

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Texture3D;->bind()V

    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/Texture3DData;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/Texture3DData;->prepare()V

    :cond_2
    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/Texture3DData;->consume3DData()V

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/Texture3D;->minFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Texture3D;->magFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/Texture3D;->setFilter(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/Texture3D;->uWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Texture3D;->vWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/Texture3D;->rWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-virtual {p0, p1, v0, v1}, Lcom/badlogic/gdx/graphics/Texture3D;->setWrap(Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    sget-object p1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    iget v0, p0, Lcom/badlogic/gdx/graphics/Texture3D;->glTarget:I

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glBindTexture(II)V

    return-void
.end method


# virtual methods
.method public getData()Lcom/badlogic/gdx/graphics/Texture3DData;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Texture3D;->data:Lcom/badlogic/gdx/graphics/Texture3DData;

    return-object v0
.end method

.method public getDepth()I
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Texture3D;->data:Lcom/badlogic/gdx/graphics/Texture3DData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/Texture3DData;->getDepth()I

    move-result v0

    return v0
.end method

.method public getHeight()I
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Texture3D;->data:Lcom/badlogic/gdx/graphics/Texture3DData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/Texture3DData;->getHeight()I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Texture3D;->data:Lcom/badlogic/gdx/graphics/Texture3DData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/Texture3DData;->getWidth()I

    move-result v0

    return v0
.end method

.method public isManaged()Z
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Texture3D;->data:Lcom/badlogic/gdx/graphics/Texture3DData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/Texture3DData;->isManaged()Z

    move-result v0

    return v0
.end method

.method protected reload()V
    .locals 2

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Texture3D;->isManaged()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/GL20;->glGenTexture()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/Texture3D;->glHandle:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Texture3D;->data:Lcom/badlogic/gdx/graphics/Texture3DData;

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/Texture3D;->load(Lcom/badlogic/gdx/graphics/Texture3DData;)V

    return-void

    :cond_0
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Tried to reload an unmanaged TextureArray"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setWrap(Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V
    .locals 1

    iput-object p3, p0, Lcom/badlogic/gdx/graphics/Texture3D;->rWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/graphics/GLTexture;->setWrap(Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    sget-object p1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    iget p2, p0, Lcom/badlogic/gdx/graphics/Texture3D;->glTarget:I

    const v0, 0x8072

    invoke-virtual {p3}, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->getGLEnum()I

    move-result p3

    invoke-interface {p1, p2, v0, p3}, Lcom/badlogic/gdx/graphics/GL20;->glTexParameteri(III)V

    return-void
.end method

.method public unsafeSetWrap(Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/badlogic/gdx/graphics/Texture3D;->unsafeSetWrap(Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Z)V

    return-void
.end method

.method public unsafeSetWrap(Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Z)V
    .locals 1

    invoke-virtual {p0, p1, p2, p4}, Lcom/badlogic/gdx/graphics/Texture3D;->unsafeSetWrap(Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Z)V

    if-eqz p3, :cond_1

    if-nez p4, :cond_0

    iget-object p2, p0, Lcom/badlogic/gdx/graphics/Texture3D;->rWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    if-eq p2, p3, :cond_1

    :cond_0
    sget-object p2, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    iget p4, p0, Lcom/badlogic/gdx/graphics/Texture3D;->glTarget:I

    const v0, 0x8072

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->getGLEnum()I

    move-result p1

    invoke-interface {p2, p4, v0, p1}, Lcom/badlogic/gdx/graphics/GL20;->glTexParameteri(III)V

    iput-object p3, p0, Lcom/badlogic/gdx/graphics/Texture3D;->rWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    :cond_1
    return-void
.end method

.method public upload()V
    .locals 1

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Texture3D;->bind()V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Texture3D;->data:Lcom/badlogic/gdx/graphics/Texture3DData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/Texture3DData;->consume3DData()V

    return-void
.end method
