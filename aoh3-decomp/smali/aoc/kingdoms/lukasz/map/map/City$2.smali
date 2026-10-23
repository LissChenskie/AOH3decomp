.class Laoc/kingdoms/lukasz/map/map/City$2;
.super Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;
.source "City.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/map/map/City;->setCityName(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/map/map/City;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/map/map/City;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Laoc/kingdoms/lukasz/map/map/City$2;->this$0:Laoc/kingdoms/lukasz/map/map/City;

    invoke-direct {p0, p2, p3}, Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public update()V
    .locals 2

    iget v0, p0, Laoc/kingdoms/lukasz/map/map/City$2;->id:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->buildProvNameData(IZ)V

    return-void
.end method
