.class Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;
.super Ljava/lang/Object;
.source "ObjLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Group"
.end annotation


# instance fields
.field faces:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field hasNorms:Z

.field hasUVs:Z

.field mat:Lcom/badlogic/gdx/graphics/g3d/Material;

.field materialName:Ljava/lang/String;

.field final name:Ljava/lang/String;

.field numFaces:I


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;->name:Ljava/lang/String;

    new-instance p1, Lcom/badlogic/gdx/utils/Array;

    const/16 v0, 0xc8

    invoke-direct {p1, v0}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;->faces:Lcom/badlogic/gdx/utils/Array;

    const/4 p1, 0x0

    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;->numFaces:I

    new-instance p1, Lcom/badlogic/gdx/graphics/g3d/Material;

    const-string v0, ""

    invoke-direct {p1, v0}, Lcom/badlogic/gdx/graphics/g3d/Material;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;->mat:Lcom/badlogic/gdx/graphics/g3d/Material;

    const/4 p1, 0x0

    sget-object p1, Lcom/badlogic/gdx/net/otUh/aBEBOpwLZcQFCZ;->GSCTnTa:Ljava/lang/String;

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;->materialName:Ljava/lang/String;

    return-void
.end method
