.class Laoc/kingdoms/lukasz/map/map/Map$4;
.super Ljava/lang/Object;
.source "Map.java"

# interfaces
.implements Laoc/kingdoms/lukasz/map/map/Map$DrawProvincesFlags;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/map/map/Map;->updateDrawProvincesFlags()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drawCity_CivFlag(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IFFII)V
    .locals 0

    invoke-static/range {p1 .. p6}, Laoc/kingdoms/lukasz/map/map/Map;->drawCityName_Capital_CivFlag(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IFFII)V

    return-void
.end method
