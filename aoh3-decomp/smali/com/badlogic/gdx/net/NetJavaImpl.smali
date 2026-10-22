.class public Lcom/badlogic/gdx/net/NetJavaImpl;
.super Ljava/lang/Object;
.source "NetJavaImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/net/NetJavaImpl$HttpClientResponse;
    }
.end annotation


# instance fields
.field final connections:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Lcom/badlogic/gdx/Net$HttpRequest;",
            "Ljava/net/HttpURLConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final executorService:Ljava/util/concurrent/ThreadPoolExecutor;

.field final listeners:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Lcom/badlogic/gdx/Net$HttpRequest;",
            "Lcom/badlogic/gdx/Net$HttpResponseListener;",
            ">;"
        }
    .end annotation
.end field

.field final tasks:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Lcom/badlogic/gdx/Net$HttpRequest;",
            "Ljava/util/concurrent/Future<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const v0, 0x7fffffff

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/net/NetJavaImpl;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    new-instance v11, Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, p1

    :goto_1
    const-wide/16 v6, 0x3c

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    if-eqz v0, :cond_2

    new-instance v2, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v2}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    goto :goto_2

    :cond_2
    new-instance v2, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    :goto_2
    move-object v9, v2

    check-cast v9, Ljava/util/concurrent/BlockingQueue;

    new-instance v10, Lcom/badlogic/gdx/net/NetJavaImpl$1;

    invoke-direct {v10, p0}, Lcom/badlogic/gdx/net/NetJavaImpl$1;-><init>(Lcom/badlogic/gdx/net/NetJavaImpl;)V

    move-object v3, v11

    move v5, p1

    invoke-direct/range {v3 .. v10}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v11, p0, Lcom/badlogic/gdx/net/NetJavaImpl;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    xor-int/lit8 p1, v0, 0x1

    invoke-virtual {v11, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    new-instance p1, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {p1}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/net/NetJavaImpl;->connections:Lcom/badlogic/gdx/utils/ObjectMap;

    new-instance p1, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {p1}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/net/NetJavaImpl;->listeners:Lcom/badlogic/gdx/utils/ObjectMap;

    new-instance p1, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {p1}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/net/NetJavaImpl;->tasks:Lcom/badlogic/gdx/utils/ObjectMap;

    return-void
.end method

.method private cancelTask(Lcom/badlogic/gdx/Net$HttpRequest;)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/net/NetJavaImpl;->tasks:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Future;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public cancelHttpRequest(Lcom/badlogic/gdx/Net$HttpRequest;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/net/NetJavaImpl;->getFromListeners(Lcom/badlogic/gdx/Net$HttpRequest;)Lcom/badlogic/gdx/Net$HttpResponseListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/badlogic/gdx/Net$HttpResponseListener;->cancelled()V

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/net/NetJavaImpl;->cancelTask(Lcom/badlogic/gdx/Net$HttpRequest;)V

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/net/NetJavaImpl;->removeFromConnectionsAndListeners(Lcom/badlogic/gdx/Net$HttpRequest;)V

    :cond_0
    return-void
.end method

.method declared-synchronized getFromListeners(Lcom/badlogic/gdx/Net$HttpRequest;)Lcom/badlogic/gdx/Net$HttpResponseListener;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/net/NetJavaImpl;->listeners:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/Net$HttpResponseListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized putIntoConnectionsAndListeners(Lcom/badlogic/gdx/Net$HttpRequest;Lcom/badlogic/gdx/Net$HttpResponseListener;Ljava/net/HttpURLConnection;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/net/NetJavaImpl;->connections:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1, p3}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p3, p0, Lcom/badlogic/gdx/net/NetJavaImpl;->listeners:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {p3, p1, p2}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized removeFromConnectionsAndListeners(Lcom/badlogic/gdx/Net$HttpRequest;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/net/NetJavaImpl;->connections:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/badlogic/gdx/net/NetJavaImpl;->listeners:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/badlogic/gdx/net/NetJavaImpl;->tasks:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public sendHttpRequest(Lcom/badlogic/gdx/Net$HttpRequest;Lcom/badlogic/gdx/Net$HttpResponseListener;)V
    .locals 9

    const-string v0, "HEAD"

    const-string v1, "?"

    invoke-virtual {p1}, Lcom/badlogic/gdx/Net$HttpRequest;->getUrl()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v0, "can\'t process a HTTP request without URL set"

    invoke-direct {p1, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lcom/badlogic/gdx/Net$HttpResponseListener;->failed(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/Net$HttpRequest;->getMethod()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    move v3, v5

    :goto_0
    const-string v6, "POST"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "PUT"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "PATCH"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    move v4, v5

    :cond_3
    :goto_1
    const-string v5, "GET"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p1}, Lcom/badlogic/gdx/Net$HttpRequest;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    :goto_2
    invoke-virtual {p1}, Lcom/badlogic/gdx/Net$HttpRequest;->getContent()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, ""

    if-eqz v0, :cond_6

    :try_start_1
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_6
    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/badlogic/gdx/Net$HttpRequest;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    :goto_3
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/net/HttpURLConnection;

    invoke-virtual {v5, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    invoke-virtual {v5, v3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    invoke-virtual {v5, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/Net$HttpRequest;->getFollowRedirects()Z

    move-result v0

    invoke-static {v0}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    invoke-virtual {p0, p1, p2, v5}, Lcom/badlogic/gdx/net/NetJavaImpl;->putIntoConnectionsAndListeners(Lcom/badlogic/gdx/Net$HttpRequest;Lcom/badlogic/gdx/Net$HttpResponseListener;Ljava/net/HttpURLConnection;)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/Net$HttpRequest;->getHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v2, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    invoke-virtual {p1}, Lcom/badlogic/gdx/Net$HttpRequest;->getTimeOut()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/Net$HttpRequest;->getTimeOut()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    iget-object v0, p0, Lcom/badlogic/gdx/net/NetJavaImpl;->tasks:Lcom/badlogic/gdx/utils/ObjectMap;

    iget-object v7, p0, Lcom/badlogic/gdx/net/NetJavaImpl;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v8, Lcom/badlogic/gdx/net/NetJavaImpl$2;

    move-object v1, v8

    move-object v2, p0

    move v3, v4

    move-object v4, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/badlogic/gdx/net/NetJavaImpl$2;-><init>(Lcom/badlogic/gdx/net/NetJavaImpl;ZLcom/badlogic/gdx/Net$HttpRequest;Ljava/net/HttpURLConnection;Lcom/badlogic/gdx/Net$HttpResponseListener;)V

    invoke-virtual {v7, v8}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    invoke-interface {p2, v0}, Lcom/badlogic/gdx/Net$HttpResponseListener;->failed(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/net/NetJavaImpl;->removeFromConnectionsAndListeners(Lcom/badlogic/gdx/Net$HttpRequest;)V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/net/NetJavaImpl;->removeFromConnectionsAndListeners(Lcom/badlogic/gdx/Net$HttpRequest;)V

    throw p2
.end method
