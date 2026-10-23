.class Laoc/kingdoms/lukasz/map/map/MapBG$2;
.super Ljava/lang/Object;
.source "MapBG.java"

# interfaces
.implements Laoc/kingdoms/lukasz/map/map/MapBG$MapShader;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/map/map/MapBG;->updateActiveMapBGShader()V
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

    iput-object p1, p0, Laoc/kingdoms/lukasz/map/map/MapBG$2;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drawMap(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 1

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/map/MapBG$2;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    const/4 v0, 0x1

    iput-boolean v0, p1, Laoc/kingdoms/lukasz/map/map/MapBG;->drawMapAnimation:Z

    return-void
.end method

.method public drawMapEnd(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 1

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/map/MapBG$2;->this$0:Laoc/kingdoms/lukasz/map/map/MapBG;

    const/4 v0, 0x1

    iput-boolean v0, p1, Laoc/kingdoms/lukasz/map/map/MapBG;->drawMapAnimation:Z

    return-void
.end method
