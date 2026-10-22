.class public Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;
.super Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;
.source "GL31Interceptor.java"

# interfaces
.implements Lcom/badlogic/gdx/graphics/GL31;


# instance fields
.field final gl31:Lcom/badlogic/gdx/graphics/GL31;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/graphics/profiling/GLProfiler;Lcom/badlogic/gdx/graphics/GL31;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;-><init>(Lcom/badlogic/gdx/graphics/profiling/GLProfiler;Lcom/badlogic/gdx/graphics/GL30;)V

    iput-object p2, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->gl31:Lcom/badlogic/gdx/graphics/GL31;

    return-void
.end method


# virtual methods
.method protected check()V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/GL30;->glGetError()I

    move-result v0

    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->glProfiler:Lcom/badlogic/gdx/graphics/profiling/GLProfiler;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->getListener()Lcom/badlogic/gdx/graphics/profiling/GLErrorListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/profiling/GLErrorListener;->onError(I)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/GL30;->glGetError()I

    move-result v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public glActiveShaderProgram(II)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->gl31:Lcom/badlogic/gdx/graphics/GL31;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL31;->glActiveShaderProgram(II)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->check()V

    return-void
.end method

.method public glBindImageTexture(IIIZIII)V
    .locals 10

    move-object v0, p0

    iget v1, v0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->gl31:Lcom/badlogic/gdx/graphics/GL31;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-interface/range {v2 .. v9}, Lcom/badlogic/gdx/graphics/GL31;->glBindImageTexture(IIIZIII)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->check()V

    return-void
.end method

.method public glBindProgramPipeline(I)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->gl31:Lcom/badlogic/gdx/graphics/GL31;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL31;->glBindProgramPipeline(I)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->check()V

    return-void
.end method

.method public glBindVertexBuffer(IIJI)V
    .locals 7

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->gl31:Lcom/badlogic/gdx/graphics/GL31;

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/GL31;->glBindVertexBuffer(IIJI)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->check()V

    return-void
.end method

.method public glCreateShaderProgramv(I[Ljava/lang/String;)I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->gl31:Lcom/badlogic/gdx/graphics/GL31;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL31;->glCreateShaderProgramv(I[Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->check()V

    return p1
.end method

.method public glDeleteProgramPipelines(ILjava/nio/IntBuffer;)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->gl31:Lcom/badlogic/gdx/graphics/GL31;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL31;->glDeleteProgramPipelines(ILjava/nio/IntBuffer;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->check()V

    return-void
.end method

.method public glDispatchCompute(III)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->gl31:Lcom/badlogic/gdx/graphics/GL31;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL31;->glDispatchCompute(III)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->check()V

    return-void
.end method

.method public glDispatchComputeIndirect(J)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->gl31:Lcom/badlogic/gdx/graphics/GL31;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL31;->glDispatchComputeIndirect(J)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->check()V

    return-void
.end method

.method public glDrawArraysIndirect(IJ)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->drawCalls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->drawCalls:I

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->gl31:Lcom/badlogic/gdx/graphics/GL31;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL31;->glDrawArraysIndirect(IJ)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->check()V

    return-void
.end method

.method public glDrawElementsIndirect(IIJ)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->drawCalls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->drawCalls:I

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->gl31:Lcom/badlogic/gdx/graphics/GL31;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL31;->glDrawElementsIndirect(IIJ)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->check()V

    return-void
.end method

.method public glFramebufferParameteri(III)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->gl31:Lcom/badlogic/gdx/graphics/GL31;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL31;->glFramebufferParameteri(III)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->check()V

    return-void
.end method

.method public glGenProgramPipelines(ILjava/nio/IntBuffer;)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->gl31:Lcom/badlogic/gdx/graphics/GL31;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL31;->glGenProgramPipelines(ILjava/nio/IntBuffer;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->check()V

    return-void
.end method

.method public glGetBooleani_v(IILjava/nio/IntBuffer;)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->gl31:Lcom/badlogic/gdx/graphics/GL31;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL31;->glGetBooleani_v(IILjava/nio/IntBuffer;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->check()V

    return-void
.end method

.method public glGetFramebufferParameteriv(IILjava/nio/IntBuffer;)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->gl31:Lcom/badlogic/gdx/graphics/GL31;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL31;->glGetFramebufferParameteriv(IILjava/nio/IntBuffer;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->check()V

    return-void
.end method

.method public glGetMultisamplefv(IILjava/nio/FloatBuffer;)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->gl31:Lcom/badlogic/gdx/graphics/GL31;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL31;->glGetMultisamplefv(IILjava/nio/FloatBuffer;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->check()V

    return-void
.end method

.method public glGetProgramInterfaceiv(IIILjava/nio/IntBuffer;)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->gl31:Lcom/badlogic/gdx/graphics/GL31;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL31;->glGetProgramInterfaceiv(IIILjava/nio/IntBuffer;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->check()V

    return-void
.end method

.method public glGetProgramPipelineInfoLog(I)Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->gl31:Lcom/badlogic/gdx/graphics/GL31;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL31;->glGetProgramPipelineInfoLog(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->check()V

    return-object p1
.end method

.method public glGetProgramPipelineiv(IILjava/nio/IntBuffer;)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->gl31:Lcom/badlogic/gdx/graphics/GL31;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL31;->glGetProgramPipelineiv(IILjava/nio/IntBuffer;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->check()V

    return-void
.end method

.method public glGetProgramResourceIndex(IILjava/lang/String;)I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->gl31:Lcom/badlogic/gdx/graphics/GL31;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL31;->glGetProgramResourceIndex(IILjava/lang/String;)I

    move-result p1

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->check()V

    return p1
.end method

.method public glGetProgramResourceLocation(IILjava/lang/String;)I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->gl31:Lcom/badlogic/gdx/graphics/GL31;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL31;->glGetProgramResourceLocation(IILjava/lang/String;)I

    move-result p1

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->check()V

    return p1
.end method

.method public glGetProgramResourceName(III)Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->gl31:Lcom/badlogic/gdx/graphics/GL31;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL31;->glGetProgramResourceName(III)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->check()V

    return-object p1
.end method

.method public glGetProgramResourceiv(IIILjava/nio/IntBuffer;Ljava/nio/IntBuffer;Ljava/nio/IntBuffer;)V
    .locals 8

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->gl31:Lcom/badlogic/gdx/graphics/GL31;

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/badlogic/gdx/graphics/GL31;->glGetProgramResourceiv(IIILjava/nio/IntBuffer;Ljava/nio/IntBuffer;Ljava/nio/IntBuffer;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->check()V

    return-void
.end method

.method public glGetTexLevelParameterfv(IIILjava/nio/FloatBuffer;)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->gl31:Lcom/badlogic/gdx/graphics/GL31;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL31;->glGetTexLevelParameterfv(IIILjava/nio/FloatBuffer;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->check()V

    return-void
.end method

.method public glGetTexLevelParameteriv(IIILjava/nio/IntBuffer;)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->gl31:Lcom/badlogic/gdx/graphics/GL31;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL31;->glGetTexLevelParameteriv(IIILjava/nio/IntBuffer;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->check()V

    return-void
.end method

.method public glIsProgramPipeline(I)Z
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->gl31:Lcom/badlogic/gdx/graphics/GL31;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL31;->glIsProgramPipeline(I)Z

    move-result p1

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->check()V

    return p1
.end method

.method public glMemoryBarrier(I)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->gl31:Lcom/badlogic/gdx/graphics/GL31;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL31;->glMemoryBarrier(I)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->check()V

    return-void
.end method

.method public glMemoryBarrierByRegion(I)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->gl31:Lcom/badlogic/gdx/graphics/GL31;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL31;->glMemoryBarrierByRegion(I)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->check()V

    return-void
.end method

.method public glProgramUniform1f(IIF)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->gl31:Lcom/badlogic/gdx/graphics/GL31;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL31;->glProgramUniform1f(IIF)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->check()V

    return-void
.end method

.method public glProgramUniform1fv(IILjava/nio/FloatBuffer;)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->gl31:Lcom/badlogic/gdx/graphics/GL31;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL31;->glProgramUniform1fv(IILjava/nio/FloatBuffer;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->check()V

    return-void
.end method

.method public glProgramUniform1i(III)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->gl31:Lcom/badlogic/gdx/graphics/GL31;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL31;->glProgramUniform1i(III)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->check()V

    return-void
.end method

.method public glProgramUniform1iv(IILjava/nio/IntBuffer;)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->gl31:Lcom/badlogic/gdx/graphics/GL31;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL31;->glProgramUniform1iv(IILjava/nio/IntBuffer;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->check()V

    return-void
.end method

.method public glProgramUniform1ui(III)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->gl31:Lcom/badlogic/gdx/graphics/GL31;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL31;->glProgramUniform1ui(III)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->check()V

    return-void
.end method

.method public glProgramUniform1uiv(IILjava/nio/IntBuffer;)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->gl31:Lcom/badlogic/gdx/graphics/GL31;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL31;->glProgramUniform1uiv(IILjava/nio/IntBuffer;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->check()V

    return-void
.end method

.method public glProgramUniform2f(IIFF)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->gl31:Lcom/badlogic/gdx/graphics/GL31;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL31;->glProgramUniform2f(IIFF)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->check()V

    return-void
.end method

.method public glProgramUniform2fv(IILjava/nio/FloatBuffer;)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->gl31:Lcom/badlogic/gdx/graphics/GL31;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL31;->glProgramUniform2fv(IILjava/nio/FloatBuffer;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->check()V

    return-void
.end method

.method public glProgramUniform2i(IIII)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->gl31:Lcom/badlogic/gdx/graphics/GL31;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL31;->glProgramUniform2i(IIII)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->check()V

    return-void
.end method

.method public glProgramUniform2iv(IILjava/nio/IntBuffer;)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->gl31:Lcom/badlogic/gdx/graphics/GL31;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL31;->glProgramUniform2iv(IILjava/nio/IntBuffer;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->check()V

    return-void
.end method

.method public glProgramUniform2ui(IIII)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->gl31:Lcom/badlogic/gdx/graphics/GL31;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL31;->glProgramUniform2ui(IIII)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->check()V

    return-void
.end method

.method public glProgramUniform2uiv(IILjava/nio/IntBuffer;)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->gl31:Lcom/badlogic/gdx/graphics/GL31;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL31;->glProgramUniform2uiv(IILjava/nio/IntBuffer;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->check()V

    return-void
.end method

.method public glProgramUniform3f(IIFFF)V
    .locals 7

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->gl31:Lcom/badlogic/gdx/graphics/GL31;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/GL31;->glProgramUniform3f(IIFFF)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->check()V

    return-void
.end method

.method public glProgramUniform3fv(IILjava/nio/FloatBuffer;)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->gl31:Lcom/badlogic/gdx/graphics/GL31;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL31;->glProgramUniform3fv(IILjava/nio/FloatBuffer;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->check()V

    return-void
.end method

.method public glProgramUniform3i(IIIII)V
    .locals 7

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->gl31:Lcom/badlogic/gdx/graphics/GL31;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/GL31;->glProgramUniform3i(IIIII)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->check()V

    return-void
.end method

.method public glProgramUniform3iv(IILjava/nio/IntBuffer;)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->gl31:Lcom/badlogic/gdx/graphics/GL31;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL31;->glProgramUniform3iv(IILjava/nio/IntBuffer;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->check()V

    return-void
.end method

.method public glProgramUniform3ui(IIIII)V
    .locals 7

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->gl31:Lcom/badlogic/gdx/graphics/GL31;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/GL31;->glProgramUniform3ui(IIIII)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->check()V

    return-void
.end method

.method public glProgramUniform3uiv(IILjava/nio/IntBuffer;)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->gl31:Lcom/badlogic/gdx/graphics/GL31;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL31;->glProgramUniform3uiv(IILjava/nio/IntBuffer;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->check()V

    return-void
.end method

.method public glProgramUniform4f(IIFFFF)V
    .locals 8

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->gl31:Lcom/badlogic/gdx/graphics/GL31;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/badlogic/gdx/graphics/GL31;->glProgramUniform4f(IIFFFF)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->check()V

    return-void
.end method

.method public glProgramUniform4fv(IILjava/nio/FloatBuffer;)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->gl31:Lcom/badlogic/gdx/graphics/GL31;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL31;->glProgramUniform4fv(IILjava/nio/FloatBuffer;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->check()V

    return-void
.end method

.method public glProgramUniform4i(IIIIII)V
    .locals 8

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->gl31:Lcom/badlogic/gdx/graphics/GL31;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/badlogic/gdx/graphics/GL31;->glProgramUniform4i(IIIIII)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->check()V

    return-void
.end method

.method public glProgramUniform4iv(IILjava/nio/IntBuffer;)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->gl31:Lcom/badlogic/gdx/graphics/GL31;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL31;->glProgramUniform4iv(IILjava/nio/IntBuffer;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->check()V

    return-void
.end method

.method public glProgramUniform4ui(IIIIII)V
    .locals 8

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->gl31:Lcom/badlogic/gdx/graphics/GL31;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/badlogic/gdx/graphics/GL31;->glProgramUniform4ui(IIIIII)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->check()V

    return-void
.end method

.method public glProgramUniform4uiv(IILjava/nio/IntBuffer;)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->gl31:Lcom/badlogic/gdx/graphics/GL31;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL31;->glProgramUniform4uiv(IILjava/nio/IntBuffer;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->check()V

    return-void
.end method

.method public glProgramUniformMatrix2fv(IIZLjava/nio/FloatBuffer;)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->gl31:Lcom/badlogic/gdx/graphics/GL31;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL31;->glProgramUniformMatrix2fv(IIZLjava/nio/FloatBuffer;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->check()V

    return-void
.end method

.method public glProgramUniformMatrix2x3fv(IIZLjava/nio/FloatBuffer;)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->gl31:Lcom/badlogic/gdx/graphics/GL31;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL31;->glProgramUniformMatrix2x3fv(IIZLjava/nio/FloatBuffer;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->check()V

    return-void
.end method

.method public glProgramUniformMatrix2x4fv(IIZLjava/nio/FloatBuffer;)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->gl31:Lcom/badlogic/gdx/graphics/GL31;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL31;->glProgramUniformMatrix2x4fv(IIZLjava/nio/FloatBuffer;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->check()V

    return-void
.end method

.method public glProgramUniformMatrix3fv(IIZLjava/nio/FloatBuffer;)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->gl31:Lcom/badlogic/gdx/graphics/GL31;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL31;->glProgramUniformMatrix3fv(IIZLjava/nio/FloatBuffer;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->check()V

    return-void
.end method

.method public glProgramUniformMatrix3x2fv(IIZLjava/nio/FloatBuffer;)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->gl31:Lcom/badlogic/gdx/graphics/GL31;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL31;->glProgramUniformMatrix3x2fv(IIZLjava/nio/FloatBuffer;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->check()V

    return-void
.end method

.method public glProgramUniformMatrix3x4fv(IIZLjava/nio/FloatBuffer;)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->gl31:Lcom/badlogic/gdx/graphics/GL31;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL31;->glProgramUniformMatrix3x4fv(IIZLjava/nio/FloatBuffer;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->check()V

    return-void
.end method

.method public glProgramUniformMatrix4fv(IIZLjava/nio/FloatBuffer;)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->gl31:Lcom/badlogic/gdx/graphics/GL31;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL31;->glProgramUniformMatrix4fv(IIZLjava/nio/FloatBuffer;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->check()V

    return-void
.end method

.method public glProgramUniformMatrix4x2fv(IIZLjava/nio/FloatBuffer;)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->gl31:Lcom/badlogic/gdx/graphics/GL31;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL31;->glProgramUniformMatrix4x2fv(IIZLjava/nio/FloatBuffer;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->check()V

    return-void
.end method

.method public glProgramUniformMatrix4x3fv(IIZLjava/nio/FloatBuffer;)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->gl31:Lcom/badlogic/gdx/graphics/GL31;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL31;->glProgramUniformMatrix4x3fv(IIZLjava/nio/FloatBuffer;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->check()V

    return-void
.end method

.method public glSampleMaski(II)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->gl31:Lcom/badlogic/gdx/graphics/GL31;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL31;->glSampleMaski(II)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->check()V

    return-void
.end method

.method public glTexStorage2DMultisample(IIIIIZ)V
    .locals 8

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->gl31:Lcom/badlogic/gdx/graphics/GL31;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/badlogic/gdx/graphics/GL31;->glTexStorage2DMultisample(IIIIIZ)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->check()V

    return-void
.end method

.method public glUseProgramStages(III)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->gl31:Lcom/badlogic/gdx/graphics/GL31;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/GL31;->glUseProgramStages(III)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->check()V

    return-void
.end method

.method public glValidateProgramPipeline(I)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->gl31:Lcom/badlogic/gdx/graphics/GL31;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/GL31;->glValidateProgramPipeline(I)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->check()V

    return-void
.end method

.method public glVertexAttribBinding(II)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->gl31:Lcom/badlogic/gdx/graphics/GL31;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL31;->glVertexAttribBinding(II)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->check()V

    return-void
.end method

.method public glVertexAttribFormat(IIIZI)V
    .locals 7

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->gl31:Lcom/badlogic/gdx/graphics/GL31;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/GL31;->glVertexAttribFormat(IIIZI)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->check()V

    return-void
.end method

.method public glVertexAttribIFormat(IIII)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->gl31:Lcom/badlogic/gdx/graphics/GL31;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL31;->glVertexAttribIFormat(IIII)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->check()V

    return-void
.end method

.method public glVertexBindingDivisor(II)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->calls:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->gl31:Lcom/badlogic/gdx/graphics/GL31;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/graphics/GL31;->glVertexBindingDivisor(II)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->check()V

    return-void
.end method
