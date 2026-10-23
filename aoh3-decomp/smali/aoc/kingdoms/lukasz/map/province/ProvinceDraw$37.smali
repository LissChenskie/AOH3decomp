.class Laoc/kingdoms/lukasz/map/province/ProvinceDraw$37;
.super Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;
.source "ProvinceDraw.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->buildBiggestCitiesLines(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$lCiv:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    iput-object p2, p0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$37;->val$lCiv:Ljava/util/List;

    invoke-direct {p0, p1}, Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public update()V
    .locals 2

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$37;->val$lCiv:Ljava/util/List;

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->buildBiggestCitiesLines(Ljava/util/List;)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DIPLOMACY:I

    if-eq v0, v1, :cond_0

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->clearBiggestCities()V

    :cond_0
    return-void
.end method
