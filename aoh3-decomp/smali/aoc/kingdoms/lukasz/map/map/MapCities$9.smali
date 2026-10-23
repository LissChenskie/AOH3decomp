.class Laoc/kingdoms/lukasz/map/map/MapCities$9;
.super Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;
.source "MapCities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/map/map/MapCities;->updateNameToNewTrueOwner_Civ(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/map/map/MapCities;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/map/map/MapCities;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Laoc/kingdoms/lukasz/map/map/MapCities$9;->this$0:Laoc/kingdoms/lukasz/map/map/MapCities;

    invoke-direct {p0, p2, p3}, Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public update()V
    .locals 2

    :try_start_0
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapCities$9;->id:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCity(I)Laoc/kingdoms/lukasz/map/map/City;

    move-result-object v0

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapCities$9;->id:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/City;->setCityNameOriginal(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
