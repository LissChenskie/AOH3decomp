.class Laoc/kingdoms/lukasz/map/map/MapBG$5;
.super Ljava/lang/Object;
.source "MapBG.java"

# interfaces
.implements Laoc/kingdoms/lukasz/map/map/MapBG$WorldMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/map/map/MapBG;->updateWorldMap()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/map/map/MapBG;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/map/map/MapBG;)V
    .locals 0

    iput-object p1, p0, Laoc/kingdoms/lukasz/map/map/MapBG$5;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drawMap(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .locals 10

    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG$5;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/map/map/MapBG;->drawMapAnimation:Z

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_7

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/Map;->getActiveMap_MapData()Laoc/kingdoms/lukasz/map/map/Map_Data;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->BackgroundZoomOut_Scale:F

    cmpl-float v0, v0, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v0, :cond_3

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG$5;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/map/MapBG;->access$000(Laoc/kingdoms/lukasz/map/map/MapBG;)I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG$5;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-static {v0, v3}, Laoc/kingdoms/lukasz/map/map/MapBG;->access$002(Laoc/kingdoms/lukasz/map/map/MapBG;I)I

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG$5;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/map/MapBG;->access$100(Laoc/kingdoms/lukasz/map/map/MapBG;)V

    :cond_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG$5;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/map/MapBG;->access$200(Laoc/kingdoms/lukasz/map/map/MapBG;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-wide v4, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG$5;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/map/MapBG;->access$300(Laoc/kingdoms/lukasz/map/map/MapBG;)J

    move-result-wide v6

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/Map;->getActiveMap_MapData()Laoc/kingdoms/lukasz/map/map/Map_Data;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->BackgroundZoomOut_AnimationDuration:I

    int-to-long v8, v0

    add-long/2addr v6, v8

    cmp-long v0, v4, v6

    if-gez v0, :cond_1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG$5;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/map/MapBG$5;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-static {v4}, Laoc/kingdoms/lukasz/map/map/MapBG;->access$300(Laoc/kingdoms/lukasz/map/map/MapBG;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-float v2, v2

    mul-float/2addr v2, v1

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/Map;->getActiveMap_MapData()Laoc/kingdoms/lukasz/map/map/Map_Data;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->BackgroundZoomOut_AnimationDuration:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v0, p1, p2, p3, v2}, Laoc/kingdoms/lukasz/map/map/MapBG;->access$400(Laoc/kingdoms/lukasz/map/map/MapBG;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG$5;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-static {v0, p1, p2, p3, v1}, Laoc/kingdoms/lukasz/map/map/MapBG;->access$500(Laoc/kingdoms/lukasz/map/map/MapBG;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/map/MapBG$5;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-static {v4}, Laoc/kingdoms/lukasz/map/map/MapBG;->access$300(Laoc/kingdoms/lukasz/map/map/MapBG;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-float v2, v2

    mul-float/2addr v2, v1

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/Map;->getActiveMap_MapData()Laoc/kingdoms/lukasz/map/map/Map_Data;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->BackgroundZoomOut_AnimationDuration:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    sub-float v2, v1, v2

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG$5;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-static {v0, p1, p2, p3}, Laoc/kingdoms/lukasz/map/map/MapBG;->access$600(Laoc/kingdoms/lukasz/map/map/MapBG;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    sget-object p2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG$5;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-static {v0, p1, p2, p3, v1}, Laoc/kingdoms/lukasz/map/map/MapBG;->access$400(Laoc/kingdoms/lukasz/map/map/MapBG;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG$5;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-static {v0, v3}, Laoc/kingdoms/lukasz/map/map/MapBG;->access$202(Laoc/kingdoms/lukasz/map/map/MapBG;Z)Z

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG$5;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-static {v0, p1, p2, p3, v1}, Laoc/kingdoms/lukasz/map/map/MapBG;->access$500(Laoc/kingdoms/lukasz/map/map/MapBG;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG$5;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-static {v0, p1, p2, p3, v1}, Laoc/kingdoms/lukasz/map/map/MapBG;->access$400(Laoc/kingdoms/lukasz/map/map/MapBG;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG$5;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-static {v0, p1, p2, p3, v1}, Laoc/kingdoms/lukasz/map/map/MapBG;->access$500(Laoc/kingdoms/lukasz/map/map/MapBG;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG$5;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/map/MapBG;->access$000(Laoc/kingdoms/lukasz/map/map/MapBG;)I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG$5;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-static {v0, v2}, Laoc/kingdoms/lukasz/map/map/MapBG;->access$002(Laoc/kingdoms/lukasz/map/map/MapBG;I)I

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG$5;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/map/MapBG;->access$100(Laoc/kingdoms/lukasz/map/map/MapBG;)V

    :cond_4
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG$5;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/map/MapBG;->access$200(Laoc/kingdoms/lukasz/map/map/MapBG;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-wide v4, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG$5;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/map/MapBG;->access$300(Laoc/kingdoms/lukasz/map/map/MapBG;)J

    move-result-wide v6

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/Map;->getActiveMap_MapData()Laoc/kingdoms/lukasz/map/map/Map_Data;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->BackgroundZoomOut_AnimationDuration:I

    int-to-long v8, v0

    add-long/2addr v6, v8

    cmp-long v0, v4, v6

    if-gez v0, :cond_5

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG$5;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-static {v0, p1, p2, p3}, Laoc/kingdoms/lukasz/map/map/MapBG;->access$600(Laoc/kingdoms/lukasz/map/map/MapBG;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG$5;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/map/MapBG$5;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-static {v4}, Laoc/kingdoms/lukasz/map/map/MapBG;->access$300(Laoc/kingdoms/lukasz/map/map/MapBG;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-float v2, v2

    mul-float/2addr v2, v1

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/Map;->getActiveMap_MapData()Laoc/kingdoms/lukasz/map/map/Map_Data;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->BackgroundZoomOut_AnimationDuration:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-static {v0, p1, p2, p3, v1}, Laoc/kingdoms/lukasz/map/map/MapBG;->access$500(Laoc/kingdoms/lukasz/map/map/MapBG;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    sget-object p2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG$5;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-static {v0, v3}, Laoc/kingdoms/lukasz/map/map/MapBG;->access$202(Laoc/kingdoms/lukasz/map/map/MapBG;Z)Z

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG$5;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-static {v0, p1, p2, p3}, Laoc/kingdoms/lukasz/map/map/MapBG;->access$600(Laoc/kingdoms/lukasz/map/map/MapBG;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG$5;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-static {v0, p1, p2, p3}, Laoc/kingdoms/lukasz/map/map/MapBG;->access$600(Laoc/kingdoms/lukasz/map/map/MapBG;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    goto :goto_0

    :cond_7
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG$5;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-static {v0, p1, p2, p3, v1}, Laoc/kingdoms/lukasz/map/map/MapBG;->access$400(Laoc/kingdoms/lukasz/map/map/MapBG;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG$5;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-static {v0, p1, p2, p3, v1}, Laoc/kingdoms/lukasz/map/map/MapBG;->access$500(Laoc/kingdoms/lukasz/map/map/MapBG;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public drawMapBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG$5;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-static {v0, p1, p2, p3}, Laoc/kingdoms/lukasz/map/map/MapBG;->access$700(Laoc/kingdoms/lukasz/map/map/MapBG;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG$5;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-static {v0, p1, p2, p3}, Laoc/kingdoms/lukasz/map/map/MapBG;->access$800(Laoc/kingdoms/lukasz/map/map/MapBG;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    return-void
.end method
