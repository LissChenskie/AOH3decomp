.class Laoc/kingdoms/lukasz/map/map/MapBG$6;
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

    iput-object p1, p0, Laoc/kingdoms/lukasz/map/map/MapBG$6;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drawMap(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG$6;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, p1, p2, p3, v1}, Laoc/kingdoms/lukasz/map/map/MapBG;->access$400(Laoc/kingdoms/lukasz/map/map/MapBG;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG$6;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

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

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG$6;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-static {v0, p1, p2, p3}, Laoc/kingdoms/lukasz/map/map/MapBG;->access$700(Laoc/kingdoms/lukasz/map/map/MapBG;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG$6;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-static {v0, p1, p2, p3}, Laoc/kingdoms/lukasz/map/map/MapBG;->access$800(Laoc/kingdoms/lukasz/map/map/MapBG;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    return-void
.end method
