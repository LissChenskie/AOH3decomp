.class Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$13;
.super Ljava/lang/Object;
.source "TextureAtlas.java"

# interfaces
.implements Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Field;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;->load(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Field<",
        "Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;

.field final synthetic val$entry:[Ljava/lang/String;

.field final synthetic val$hasIndexes:[Z


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;[Ljava/lang/String;[Z)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$13;->this$0:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;

    iput-object p2, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$13;->val$entry:[Ljava/lang/String;

    iput-object p3, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$13;->val$hasIndexes:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;)V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$13;->val$entry:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;->index:I

    iget p1, p1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;->index:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$13;->val$hasIndexes:[Z

    const/4 v0, 0x0

    aput-boolean v1, p1, v0

    :cond_0
    return-void
.end method

.method public bridge synthetic parse(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$13;->parse(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;)V

    return-void
.end method
