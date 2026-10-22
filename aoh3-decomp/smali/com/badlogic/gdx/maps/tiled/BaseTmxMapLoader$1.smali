.class Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader$1;
.super Ljava/lang/Object;
.source "BaseTmxMapLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->loadProperties(Lcom/badlogic/gdx/maps/MapProperties;Lcom/badlogic/gdx/utils/XmlReader$Element;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;

.field final synthetic val$id:I

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$properties:Lcom/badlogic/gdx/maps/MapProperties;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;ILcom/badlogic/gdx/maps/MapProperties;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader$1;->this$0:Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;

    iput p2, p0, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader$1;->val$id:I

    iput-object p3, p0, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader$1;->val$properties:Lcom/badlogic/gdx/maps/MapProperties;

    iput-object p4, p0, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader$1;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader$1;->this$0:Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;

    iget-object v0, v0, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->idToObject:Lcom/badlogic/gdx/utils/IntMap;

    iget v1, p0, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader$1;->val$id:I

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/maps/MapObject;

    iget-object v1, p0, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader$1;->val$properties:Lcom/badlogic/gdx/maps/MapProperties;

    iget-object v2, p0, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader$1;->val$name:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
