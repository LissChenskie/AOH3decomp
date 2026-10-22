.class public Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$Bones;
.super Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$LocalSetter;
.source "DefaultShader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Bones"
.end annotation


# static fields
.field private static final idtMatrix:Lcom/badlogic/gdx/math/Matrix4;


# instance fields
.field public final bones:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$Bones;->idtMatrix:Lcom/badlogic/gdx/math/Matrix4;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader$LocalSetter;-><init>()V

    mul-int/lit8 p1, p1, 0x10

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$Bones;->bones:[F

    return-void
.end method


# virtual methods
.method public set(Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;ILcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/Attributes;)V
    .locals 4

    const/4 p4, 0x0

    move v0, p4

    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$Bones;->bones:[F

    array-length v1, v1

    if-ge v0, v1, :cond_2

    div-int/lit8 v1, v0, 0x10

    iget-object v2, p3, Lcom/badlogic/gdx/graphics/g3d/Renderable;->bones:[Lcom/badlogic/gdx/math/Matrix4;

    const/16 v3, 0x10

    if-eqz v2, :cond_1

    iget-object v2, p3, Lcom/badlogic/gdx/graphics/g3d/Renderable;->bones:[Lcom/badlogic/gdx/math/Matrix4;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v2, p3, Lcom/badlogic/gdx/graphics/g3d/Renderable;->bones:[Lcom/badlogic/gdx/math/Matrix4;

    aget-object v2, v2, v1

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p3, Lcom/badlogic/gdx/graphics/g3d/Renderable;->bones:[Lcom/badlogic/gdx/math/Matrix4;

    aget-object v1, v2, v1

    iget-object v1, v1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$Bones;->bones:[F

    invoke-static {v1, p4, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    :cond_1
    :goto_1
    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$Bones;->idtMatrix:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v1, v1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$Bones;->bones:[F

    invoke-static {v1, p4, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_2
    add-int/lit8 v0, v0, 0x10

    goto :goto_0

    :cond_2
    iget-object p3, p1, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->program:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g3d/shaders/BaseShader;->loc(I)I

    move-result p1

    iget-object p2, p0, Lcom/badlogic/gdx/graphics/g3d/shaders/DefaultShader$Setters$Bones;->bones:[F

    array-length v0, p2

    invoke-virtual {p3, p1, p2, p4, v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformMatrix4fv(I[FII)V

    return-void
.end method
