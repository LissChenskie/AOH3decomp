.class public Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;
.super Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;
.source "GL32Interceptor.java"

# interfaces
.implements Lcom/badlogic/gdx/graphics/GL32;


# instance fields
.field final gl32:Lcom/badlogic/gdx/graphics/GL32;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/graphics/profiling/GLProfiler;Lcom/badlogic/gdx/graphics/GL32;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;-><init>(Lcom/badlogic/gdx/graphics/profiling/GLProfiler;Lcom/badlogic/gdx/graphics/GL31;)V

    iput-object p2, p0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->gl32:Lcom/badlogic/gdx/graphics/GL32;

    return-void
.end method


# virtual methods
.method public glBlendBarrier()V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->calls:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->gl32:Lcom/badlogic/gdx/graphics/GL32;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/GL32;->glBlendBarrier()V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->check()V

    return-void
.end method

.method public glBlendEquationSeparatei(III)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->calls:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->gl32:Lcom/badlogic/gdx/graphics/GL32;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL32;->glBlendEquationSeparatei(III)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->check()V

    return-void
.end method

.method public glBlendEquationi(II)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->calls:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->gl32:Lcom/badlogic/gdx/graphics/GL32;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL32;->glBlendEquationi(II)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->check()V

    return-void
.end method

.method public glBlendFuncSeparatei(IIIII)V
    .locals 7

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->calls:I

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->gl32:Lcom/badlogic/gdx/graphics/GL32;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/GL32;->glBlendFuncSeparatei(IIIII)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->check()V

    return-void
.end method

.method public glBlendFunci(III)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->calls:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->gl32:Lcom/badlogic/gdx/graphics/GL32;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL32;->glBlendFunci(III)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->check()V

    return-void
.end method

.method public glColorMaski(IZZZZ)V
    .locals 7

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->calls:I

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->gl32:Lcom/badlogic/gdx/graphics/GL32;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/GL32;->glColorMaski(IZZZZ)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->check()V

    return-void
.end method

.method public glCopyImageSubData(IIIIIIIIIIIIIII)V
    .locals 18

    move-object/from16 v0, p0

    iget v1, v0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->calls:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->calls:I

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->gl32:Lcom/badlogic/gdx/graphics/GL32;

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    move/from16 v14, p12

    move/from16 v15, p13

    move/from16 v16, p14

    move/from16 v17, p15

    invoke-interface/range {v2 .. v17}, Lcom/badlogic/gdx/graphics/GL32;->glCopyImageSubData(IIIIIIIIIIIIIII)V

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->check()V

    return-void
.end method

.method public glDebugMessageCallback(Lcom/badlogic/gdx/graphics/GL32$DebugProc;)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->calls:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->gl32:Lcom/badlogic/gdx/graphics/GL32;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL32;->glDebugMessageCallback(Lcom/badlogic/gdx/graphics/GL32$DebugProc;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->check()V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->check()V

    return-void
.end method

.method public glDebugMessageControl(IIILjava/nio/IntBuffer;Z)V
    .locals 7

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->calls:I

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->gl32:Lcom/badlogic/gdx/graphics/GL32;

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/GL32;->glDebugMessageControl(IIILjava/nio/IntBuffer;Z)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->check()V

    return-void
.end method

.method public glDebugMessageInsert(IIIILjava/lang/String;)V
    .locals 7

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->calls:I

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->gl32:Lcom/badlogic/gdx/graphics/GL32;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/GL32;->glDebugMessageInsert(IIIILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->check()V

    return-void
.end method

.method public glDisablei(II)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->calls:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->gl32:Lcom/badlogic/gdx/graphics/GL32;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL32;->glDisablei(II)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->check()V

    return-void
.end method

.method public glDrawElementsBaseVertex(IIILjava/nio/Buffer;I)V
    .locals 7

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->vertexCount:Lcom/badlogic/gdx/math/FloatCounter;

    int-to-float v1, p2

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/FloatCounter;->put(F)V

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->drawCalls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->drawCalls:I

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->calls:I

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->gl32:Lcom/badlogic/gdx/graphics/GL32;

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/GL32;->glDrawElementsBaseVertex(IIILjava/nio/Buffer;I)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->check()V

    return-void
.end method

.method public glDrawElementsInstancedBaseVertex(IIIIII)V
    .locals 8

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->vertexCount:Lcom/badlogic/gdx/math/FloatCounter;

    int-to-float v1, p2

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/FloatCounter;->put(F)V

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->drawCalls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->drawCalls:I

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->calls:I

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->gl32:Lcom/badlogic/gdx/graphics/GL32;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/badlogic/gdx/graphics/GL32;->glDrawElementsInstancedBaseVertex(IIIIII)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->check()V

    return-void
.end method

.method public glDrawElementsInstancedBaseVertex(IIILjava/nio/Buffer;II)V
    .locals 8

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->vertexCount:Lcom/badlogic/gdx/math/FloatCounter;

    int-to-float v1, p2

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/FloatCounter;->put(F)V

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->drawCalls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->drawCalls:I

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->calls:I

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->gl32:Lcom/badlogic/gdx/graphics/GL32;

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/badlogic/gdx/graphics/GL32;->glDrawElementsInstancedBaseVertex(IIILjava/nio/Buffer;II)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->check()V

    return-void
.end method

.method public glDrawRangeElementsBaseVertex(IIIIILjava/nio/Buffer;I)V
    .locals 10

    move-object v0, p0

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->vertexCount:Lcom/badlogic/gdx/math/FloatCounter;

    move v6, p4

    int-to-float v2, v6

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/FloatCounter;->put(F)V

    iget v1, v0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->drawCalls:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->drawCalls:I

    iget v1, v0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->calls:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->calls:I

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->gl32:Lcom/badlogic/gdx/graphics/GL32;

    move v3, p1

    move v4, p2

    move v5, p3

    move v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-interface/range {v2 .. v9}, Lcom/badlogic/gdx/graphics/GL32;->glDrawRangeElementsBaseVertex(IIIIILjava/nio/Buffer;I)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->check()V

    return-void
.end method

.method public glEnablei(II)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->calls:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->gl32:Lcom/badlogic/gdx/graphics/GL32;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL32;->glEnablei(II)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->check()V

    return-void
.end method

.method public glFramebufferTexture(IIII)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->calls:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->gl32:Lcom/badlogic/gdx/graphics/GL32;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL32;->glFramebufferTexture(IIII)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->check()V

    return-void
.end method

.method public glGetDebugMessageLog(ILjava/nio/IntBuffer;Ljava/nio/IntBuffer;Ljava/nio/IntBuffer;Ljava/nio/IntBuffer;Ljava/nio/IntBuffer;Ljava/nio/ByteBuffer;)I
    .locals 10

    move-object v0, p0

    iget v1, v0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->calls:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->calls:I

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->gl32:Lcom/badlogic/gdx/graphics/GL32;

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-interface/range {v2 .. v9}, Lcom/badlogic/gdx/graphics/GL32;->glGetDebugMessageLog(ILjava/nio/IntBuffer;Ljava/nio/IntBuffer;Ljava/nio/IntBuffer;Ljava/nio/IntBuffer;Ljava/nio/IntBuffer;Ljava/nio/ByteBuffer;)I

    move-result v1

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->check()V

    return v1
.end method

.method public glGetGraphicsResetStatus()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->calls:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->gl32:Lcom/badlogic/gdx/graphics/GL32;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/GL32;->glGetGraphicsResetStatus()I

    move-result v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->check()V

    return v0
.end method

.method public glGetObjectLabel(II)Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->calls:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->gl32:Lcom/badlogic/gdx/graphics/GL32;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL32;->glGetObjectLabel(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->check()V

    return-object p1
.end method

.method public glGetPointerv(I)J
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->calls:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->gl32:Lcom/badlogic/gdx/graphics/GL32;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL32;->glGetPointerv(I)J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->check()V

    return-wide v0
.end method

.method public glGetSamplerParameterIiv(IILjava/nio/IntBuffer;)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->calls:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->gl32:Lcom/badlogic/gdx/graphics/GL32;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL32;->glGetSamplerParameterIiv(IILjava/nio/IntBuffer;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->check()V

    return-void
.end method

.method public glGetSamplerParameterIuiv(IILjava/nio/IntBuffer;)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->calls:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->gl32:Lcom/badlogic/gdx/graphics/GL32;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL32;->glGetSamplerParameterIuiv(IILjava/nio/IntBuffer;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->check()V

    return-void
.end method

.method public glGetTexParameterIiv(IILjava/nio/IntBuffer;)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->calls:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->gl32:Lcom/badlogic/gdx/graphics/GL32;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL32;->glGetTexParameterIiv(IILjava/nio/IntBuffer;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->check()V

    return-void
.end method

.method public glGetTexParameterIuiv(IILjava/nio/IntBuffer;)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->calls:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->gl32:Lcom/badlogic/gdx/graphics/GL32;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL32;->glGetTexParameterIuiv(IILjava/nio/IntBuffer;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->check()V

    return-void
.end method

.method public glGetnUniformfv(IILjava/nio/FloatBuffer;)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->calls:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->gl32:Lcom/badlogic/gdx/graphics/GL32;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL32;->glGetnUniformfv(IILjava/nio/FloatBuffer;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->check()V

    return-void
.end method

.method public glGetnUniformiv(IILjava/nio/IntBuffer;)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->calls:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->gl32:Lcom/badlogic/gdx/graphics/GL32;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL32;->glGetnUniformiv(IILjava/nio/IntBuffer;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->check()V

    return-void
.end method

.method public glGetnUniformuiv(IILjava/nio/IntBuffer;)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->calls:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->gl32:Lcom/badlogic/gdx/graphics/GL32;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL32;->glGetnUniformuiv(IILjava/nio/IntBuffer;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->check()V

    return-void
.end method

.method public glIsEnabledi(II)Z
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->calls:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->gl32:Lcom/badlogic/gdx/graphics/GL32;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL32;->glIsEnabledi(II)Z

    move-result p1

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->check()V

    return p1
.end method

.method public glMinSampleShading(F)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->calls:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->gl32:Lcom/badlogic/gdx/graphics/GL32;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL32;->glMinSampleShading(F)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->check()V

    return-void
.end method

.method public glObjectLabel(IILjava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->calls:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->gl32:Lcom/badlogic/gdx/graphics/GL32;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL32;->glObjectLabel(IILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->check()V

    return-void
.end method

.method public glPatchParameteri(II)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->calls:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->gl32:Lcom/badlogic/gdx/graphics/GL32;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL32;->glPatchParameteri(II)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->check()V

    return-void
.end method

.method public glPopDebugGroup()V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->calls:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->gl32:Lcom/badlogic/gdx/graphics/GL32;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/GL32;->glPopDebugGroup()V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->check()V

    return-void
.end method

.method public glPushDebugGroup(IILjava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->calls:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->gl32:Lcom/badlogic/gdx/graphics/GL32;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL32;->glPushDebugGroup(IILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->check()V

    return-void
.end method

.method public glReadnPixels(IIIIIIILjava/nio/Buffer;)V
    .locals 11

    move-object v0, p0

    iget v1, v0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->calls:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->calls:I

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->gl32:Lcom/badlogic/gdx/graphics/GL32;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    invoke-interface/range {v2 .. v10}, Lcom/badlogic/gdx/graphics/GL32;->glReadnPixels(IIIIIIILjava/nio/Buffer;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->check()V

    return-void
.end method

.method public glSamplerParameterIiv(IILjava/nio/IntBuffer;)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->calls:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->gl32:Lcom/badlogic/gdx/graphics/GL32;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL32;->glSamplerParameterIiv(IILjava/nio/IntBuffer;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->check()V

    return-void
.end method

.method public glSamplerParameterIuiv(IILjava/nio/IntBuffer;)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->calls:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->gl32:Lcom/badlogic/gdx/graphics/GL32;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL32;->glSamplerParameterIuiv(IILjava/nio/IntBuffer;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->check()V

    return-void
.end method

.method public glTexBuffer(III)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->calls:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->gl32:Lcom/badlogic/gdx/graphics/GL32;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL32;->glTexBuffer(III)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->check()V

    return-void
.end method

.method public glTexBufferRange(IIIII)V
    .locals 7

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->calls:I

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->gl32:Lcom/badlogic/gdx/graphics/GL32;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/GL32;->glTexBufferRange(IIIII)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->check()V

    return-void
.end method

.method public glTexParameterIiv(IILjava/nio/IntBuffer;)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->calls:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->gl32:Lcom/badlogic/gdx/graphics/GL32;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL32;->glTexParameterIiv(IILjava/nio/IntBuffer;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->check()V

    return-void
.end method

.method public glTexParameterIuiv(IILjava/nio/IntBuffer;)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->calls:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->gl32:Lcom/badlogic/gdx/graphics/GL32;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL32;->glTexParameterIuiv(IILjava/nio/IntBuffer;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->check()V

    return-void
.end method

.method public glTexStorage3DMultisample(IIIIIIZ)V
    .locals 10

    move-object v0, p0

    iget v1, v0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->calls:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->calls:I

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->gl32:Lcom/badlogic/gdx/graphics/GL32;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-interface/range {v2 .. v9}, Lcom/badlogic/gdx/graphics/GL32;->glTexStorage3DMultisample(IIIIIIZ)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->check()V

    return-void
.end method
