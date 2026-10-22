.class public Lcom/badlogic/gdx/graphics/profiling/GLProfiler;
.super Ljava/lang/Object;
.source "GLProfiler.java"


# instance fields
.field private enabled:Z

.field private glInterceptor:Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;

.field private graphics:Lcom/badlogic/gdx/Graphics;

.field private listener:Lcom/badlogic/gdx/graphics/profiling/GLErrorListener;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/Graphics;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->enabled:Z

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {p1}, Lcom/badlogic/gdx/Graphics;->getGL32()Lcom/badlogic/gdx/graphics/GL32;

    move-result-object v0

    invoke-interface {p1}, Lcom/badlogic/gdx/Graphics;->getGL31()Lcom/badlogic/gdx/graphics/GL31;

    move-result-object v1

    invoke-interface {p1}, Lcom/badlogic/gdx/Graphics;->getGL30()Lcom/badlogic/gdx/graphics/GL30;

    move-result-object v2

    if-eqz v0, :cond_0

    new-instance p1, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;

    invoke-direct {p1, p0, v0}, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;-><init>(Lcom/badlogic/gdx/graphics/profiling/GLProfiler;Lcom/badlogic/gdx/graphics/GL32;)V

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->glInterceptor:Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    new-instance p1, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;

    invoke-direct {p1, p0, v1}, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;-><init>(Lcom/badlogic/gdx/graphics/profiling/GLProfiler;Lcom/badlogic/gdx/graphics/GL31;)V

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->glInterceptor:Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    new-instance p1, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;

    invoke-direct {p1, p0, v2}, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;-><init>(Lcom/badlogic/gdx/graphics/profiling/GLProfiler;Lcom/badlogic/gdx/graphics/GL30;)V

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->glInterceptor:Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;

    invoke-interface {p1}, Lcom/badlogic/gdx/Graphics;->getGL20()Lcom/badlogic/gdx/graphics/GL20;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;-><init>(Lcom/badlogic/gdx/graphics/profiling/GLProfiler;Lcom/badlogic/gdx/graphics/GL20;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->glInterceptor:Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;

    :goto_0
    sget-object p1, Lcom/badlogic/gdx/graphics/profiling/GLErrorListener;->LOGGING_LISTENER:Lcom/badlogic/gdx/graphics/profiling/GLErrorListener;

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->listener:Lcom/badlogic/gdx/graphics/profiling/GLErrorListener;

    return-void
.end method


# virtual methods
.method public disable()V
    .locals 2

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->enabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->glInterceptor:Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;

    instance-of v1, v0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->graphics:Lcom/badlogic/gdx/Graphics;

    check-cast v0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/profiling/GL32Interceptor;->gl32:Lcom/badlogic/gdx/graphics/GL32;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/Graphics;->setGL32(Lcom/badlogic/gdx/graphics/GL32;)V

    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->glInterceptor:Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;

    instance-of v1, v0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->graphics:Lcom/badlogic/gdx/Graphics;

    check-cast v0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/profiling/GL31Interceptor;->gl31:Lcom/badlogic/gdx/graphics/GL31;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/Graphics;->setGL31(Lcom/badlogic/gdx/graphics/GL31;)V

    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->glInterceptor:Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;

    instance-of v1, v0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->graphics:Lcom/badlogic/gdx/Graphics;

    check-cast v0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/profiling/GL30Interceptor;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/Graphics;->setGL30(Lcom/badlogic/gdx/graphics/GL30;)V

    :cond_3
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->glInterceptor:Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;

    instance-of v0, v0, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getGL20()Lcom/badlogic/gdx/graphics/GL20;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/profiling/GL20Interceptor;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Graphics;->setGL20(Lcom/badlogic/gdx/graphics/GL20;)V

    :cond_4
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getGL32()Lcom/badlogic/gdx/graphics/GL32;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/Gdx;->gl32:Lcom/badlogic/gdx/graphics/GL32;

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getGL31()Lcom/badlogic/gdx/graphics/GL31;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/Gdx;->gl31:Lcom/badlogic/gdx/graphics/GL31;

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getGL30()Lcom/badlogic/gdx/graphics/GL30;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/Gdx;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getGL20()Lcom/badlogic/gdx/graphics/GL20;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getGL20()Lcom/badlogic/gdx/graphics/GL20;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->enabled:Z

    return-void
.end method

.method public enable()V
    .locals 2

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->enabled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->glInterceptor:Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;

    instance-of v1, v0, Lcom/badlogic/gdx/graphics/GL32;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->graphics:Lcom/badlogic/gdx/Graphics;

    check-cast v0, Lcom/badlogic/gdx/graphics/GL32;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/Graphics;->setGL32(Lcom/badlogic/gdx/graphics/GL32;)V

    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->glInterceptor:Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;

    instance-of v1, v0, Lcom/badlogic/gdx/graphics/GL31;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->graphics:Lcom/badlogic/gdx/Graphics;

    check-cast v0, Lcom/badlogic/gdx/graphics/GL31;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/Graphics;->setGL31(Lcom/badlogic/gdx/graphics/GL31;)V

    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->glInterceptor:Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;

    instance-of v1, v0, Lcom/badlogic/gdx/graphics/GL30;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->graphics:Lcom/badlogic/gdx/Graphics;

    check-cast v0, Lcom/badlogic/gdx/graphics/GL30;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/Graphics;->setGL30(Lcom/badlogic/gdx/graphics/GL30;)V

    :cond_3
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->graphics:Lcom/badlogic/gdx/Graphics;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->glInterceptor:Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Graphics;->setGL20(Lcom/badlogic/gdx/graphics/GL20;)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getGL32()Lcom/badlogic/gdx/graphics/GL32;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/Gdx;->gl32:Lcom/badlogic/gdx/graphics/GL32;

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getGL31()Lcom/badlogic/gdx/graphics/GL31;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/Gdx;->gl31:Lcom/badlogic/gdx/graphics/GL31;

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getGL30()Lcom/badlogic/gdx/graphics/GL30;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/Gdx;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getGL20()Lcom/badlogic/gdx/graphics/GL20;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getGL20()Lcom/badlogic/gdx/graphics/GL20;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->enabled:Z

    return-void
.end method

.method public getCalls()I
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->glInterceptor:Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->getCalls()I

    move-result v0

    return v0
.end method

.method public getDrawCalls()I
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->glInterceptor:Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->getDrawCalls()I

    move-result v0

    return v0
.end method

.method public getListener()Lcom/badlogic/gdx/graphics/profiling/GLErrorListener;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->listener:Lcom/badlogic/gdx/graphics/profiling/GLErrorListener;

    return-object v0
.end method

.method public getShaderSwitches()I
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->glInterceptor:Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->getShaderSwitches()I

    move-result v0

    return v0
.end method

.method public getTextureBindings()I
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->glInterceptor:Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->getTextureBindings()I

    move-result v0

    return v0
.end method

.method public getVertexCount()Lcom/badlogic/gdx/math/FloatCounter;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->glInterceptor:Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->getVertexCount()Lcom/badlogic/gdx/math/FloatCounter;

    move-result-object v0

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->enabled:Z

    return v0
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->glInterceptor:Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/profiling/GLInterceptor;->reset()V

    return-void
.end method

.method public setListener(Lcom/badlogic/gdx/graphics/profiling/GLErrorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/profiling/GLProfiler;->listener:Lcom/badlogic/gdx/graphics/profiling/GLErrorListener;

    return-void
.end method
