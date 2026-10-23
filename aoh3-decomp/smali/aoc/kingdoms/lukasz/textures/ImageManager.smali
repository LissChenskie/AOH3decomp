.class public Laoc/kingdoms/lukasz/textures/ImageManager;
.super Ljava/lang/Object;
.source "ImageManager.java"


# static fields
.field private static images:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/textures/Image;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/textures/ImageManager;->images:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final addImage(Ljava/lang/String;)I
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->addImage(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)I

    move-result p0

    return p0
.end method

.method public static final addImage(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)I
    .locals 2

    sget-object v0, Laoc/kingdoms/lukasz/textures/ImageManager;->images:Ljava/util/List;

    new-instance v1, Laoc/kingdoms/lukasz/textures/Image;

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->loadTexture(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;)Lcom/badlogic/gdx/graphics/Texture;

    move-result-object p0

    invoke-direct {v1, p0, p2}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p0, Laoc/kingdoms/lukasz/textures/ImageManager;->images:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public static final addImage(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)I
    .locals 2

    sget-object v0, Laoc/kingdoms/lukasz/textures/ImageManager;->images:Ljava/util/List;

    new-instance v1, Laoc/kingdoms/lukasz/textures/Image;

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->loadTexture(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;)Lcom/badlogic/gdx/graphics/Texture;

    move-result-object p0

    invoke-direct {v1, p0, p2, p3}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p0, Laoc/kingdoms/lukasz/textures/ImageManager;->images:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public static final addImage(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)I
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-static {p0, v0, p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->addImage(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)I

    move-result p0

    return p0
.end method

.method public static final buildPix()I
    .locals 5

    new-instance v0, Lcom/badlogic/gdx/graphics/Pixmap;

    sget-object v1, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Color;->toIntBits()I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixel(III)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/ImageManager;->images:Ljava/util/List;

    new-instance v3, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v4, Lcom/badlogic/gdx/graphics/Texture;

    invoke-direct {v4, v0}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;)V

    invoke-direct {v3, v4}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Laoc/kingdoms/lukasz/textures/ImageManager;->images:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    return v0
.end method

.method public static final buildPix_IMG()Laoc/kingdoms/lukasz/textures/Image;
    .locals 3

    new-instance v0, Lcom/badlogic/gdx/graphics/Pixmap;

    const/4 v1, 0x1

    sget-object v2, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v0, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Color;->toIntBits()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixel(III)V

    new-instance v1, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v2, Lcom/badlogic/gdx/graphics/Texture;

    invoke-direct {v2, v0}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;)V

    invoke-direct {v1, v2}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    return-object v1
.end method

.method public static final getImage(I)Laoc/kingdoms/lukasz/textures/Image;
    .locals 1

    sget-object v0, Laoc/kingdoms/lukasz/textures/ImageManager;->images:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/textures/Image;

    return-object p0
.end method

.method public static final getImagesSize()I
    .locals 1

    sget-object v0, Laoc/kingdoms/lukasz/textures/ImageManager;->images:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public static final loadImage(Ljava/lang/String;)Laoc/kingdoms/lukasz/textures/Image;
    .locals 2

    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    sget-object v1, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-static {p0, v0, v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->loadImage(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p0

    return-object p0
.end method

.method public static final loadImage(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;)Laoc/kingdoms/lukasz/textures/Image;
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-static {p0, p1, v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->loadImage(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p0

    return-object p0
.end method

.method public static final loadImage(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)Laoc/kingdoms/lukasz/textures/Image;
    .locals 1

    new-instance v0, Laoc/kingdoms/lukasz/textures/Image;

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->loadTexture(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;)Lcom/badlogic/gdx/graphics/Texture;

    move-result-object p0

    invoke-direct {v0, p0, p2}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    return-object v0
.end method

.method public static final loadImage(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)Laoc/kingdoms/lukasz/textures/Image;
    .locals 1

    new-instance v0, Laoc/kingdoms/lukasz/textures/Image;

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->loadTexture(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;)Lcom/badlogic/gdx/graphics/Texture;

    move-result-object p0

    invoke-direct {v0, p0, p2, p3}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    return-object v0
.end method

.method public static final loadImage(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)Laoc/kingdoms/lukasz/textures/Image;
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-static {p0, v0, p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->loadImage(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p0

    return-object p0
.end method

.method public static final loadImageRegion(Ljava/lang/String;I)Laoc/kingdoms/lukasz/textures/ImageRegion;
    .locals 2

    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    sget-object v1, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-static {p0, v0, v1, p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->loadImageRegion(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;I)Laoc/kingdoms/lukasz/textures/ImageRegion;

    move-result-object p0

    return-object p0
.end method

.method public static final loadImageRegion(Ljava/lang/String;II)Laoc/kingdoms/lukasz/textures/ImageRegion;
    .locals 2

    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    sget-object v1, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-static {p0, v0, v1, p1, p2}, Laoc/kingdoms/lukasz/textures/ImageManager;->loadImageRegion(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;II)Laoc/kingdoms/lukasz/textures/ImageRegion;

    move-result-object p0

    return-object p0
.end method

.method public static final loadImageRegion(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;II)Laoc/kingdoms/lukasz/textures/ImageRegion;
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-static {p0, p1, v0, p2, p3}, Laoc/kingdoms/lukasz/textures/ImageManager;->loadImageRegion(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;II)Laoc/kingdoms/lukasz/textures/ImageRegion;

    move-result-object p0

    return-object p0
.end method

.method public static final loadImageRegion(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;I)Laoc/kingdoms/lukasz/textures/ImageRegion;
    .locals 1

    new-instance v0, Laoc/kingdoms/lukasz/textures/ImageRegion;

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->loadTexture(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;)Lcom/badlogic/gdx/graphics/Texture;

    move-result-object p0

    invoke-direct {v0, p0, p2, p3}, Laoc/kingdoms/lukasz/textures/ImageRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;I)V

    return-object v0
.end method

.method public static final loadImageRegion(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;II)Laoc/kingdoms/lukasz/textures/ImageRegion;
    .locals 1

    new-instance v0, Laoc/kingdoms/lukasz/textures/ImageRegion;

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->loadTexture(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;)Lcom/badlogic/gdx/graphics/Texture;

    move-result-object p0

    invoke-direct {v0, p0, p2, p3, p4}, Laoc/kingdoms/lukasz/textures/ImageRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;II)V

    return-object v0
.end method

.method public static final loadImageRegion(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;II)Laoc/kingdoms/lukasz/textures/ImageRegion;
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-static {p0, v0, p1, p2, p3}, Laoc/kingdoms/lukasz/textures/ImageManager;->loadImageRegion(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;II)Laoc/kingdoms/lukasz/textures/ImageRegion;

    move-result-object p0

    return-object p0
.end method

.method public static final loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Texture;
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->loadTexture(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;)Lcom/badlogic/gdx/graphics/Texture;

    move-result-object p0

    return-object p0
.end method

.method public static final loadTexture(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;)Lcom/badlogic/gdx/graphics/Texture;
    .locals 7

    const-string v0, "/"

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v2

    if-eqz v2, :cond_5

    sget-boolean v2, Laoc/kingdoms/lukasz/jakowski/FileManager;->IS_MAC:Z

    if-eqz v2, :cond_1

    move v2, v1

    :goto_0
    sget v3, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->modsFoldersSize:I

    if-ge v2, v3, :cond_3

    sget-object v3, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->modsFolders:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v0, Lcom/badlogic/gdx/graphics/Texture;

    sget-object v3, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->modsFolders:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-direct {v0, v2, p1, v1}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V

    return-object v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_1
    sget v3, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->modsFoldersSize:I

    if-ge v2, v3, :cond_3

    sget-object v3, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->modsFolders:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v0, Lcom/badlogic/gdx/graphics/Texture;

    sget-object v3, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->modsFolders:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-direct {v0, v2, p1, v1}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V

    return-object v0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    move v2, v1

    :goto_2
    sget v3, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->itemsInstalledSize:I

    if-ge v2, v3, :cond_5

    sget-object v3, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->itemsInstalled:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;

    invoke-virtual {v5}, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;->getFolder()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/badlogic/gdx/Files;->absolute(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Lcom/badlogic/gdx/graphics/Texture;

    sget-object v4, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->itemsInstalled:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;

    invoke-virtual {v2}, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;->getFolder()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Lcom/badlogic/gdx/Files;->absolute(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-direct {v3, v0, p1, v1}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception v0

    :try_start_1
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_5
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/FileManager;->IS_MAC:Z

    if-eqz v0, :cond_6

    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v0, p0}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lcom/badlogic/gdx/graphics/Texture;

    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v2, p0}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object p0

    invoke-direct {v0, p0, p1, v1}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V

    return-object v0

    :cond_6
    new-instance v0, Lcom/badlogic/gdx/graphics/Texture;

    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v2, p0}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object p0

    invoke-direct {v0, p0, p1, v1}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V
    :try_end_1
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :goto_3
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    new-instance p0, Lcom/badlogic/gdx/graphics/Texture;

    const-string p1, "gfx/imageNotFound.png"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public static final loadTexture_RGB888(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Texture;
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGB888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->loadTexture(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;)Lcom/badlogic/gdx/graphics/Texture;

    move-result-object p0

    return-object p0
.end method
