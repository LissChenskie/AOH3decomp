.class public Laoc/kingdoms/lukasz/map/civilization/data/Civilization_Cores;
.super Ljava/lang/Object;
.source "Civilization_Cores.java"


# instance fields
.field public provinces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public provincesSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_Cores;->provinces:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_Cores;->provincesSize:I

    return-void
.end method


# virtual methods
.method public final addProvince(I)V
    .locals 2

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_Cores;->provinces:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_Cores;->provinces:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_Cores;->provinces:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_Cores;->provincesSize:I

    return-void
.end method

.method public final buildProvincesNonCore(I)V
    .locals 3

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_Cores;->provinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_Cores;->provincesSize:I

    :goto_0
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    iget-boolean v1, v1, Laoc/kingdoms/lukasz/map/province/Province;->haveACore:Z

    if-nez v1, :cond_0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/province/Province;->coreCreation:Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    if-nez v1, :cond_0

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_Cores;->provinces:Ljava/util/List;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_Cores;->provinces:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_Cores;->provincesSize:I

    return-void
.end method

.method public final checkProvince(II)V
    .locals 1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    if-eq v0, p2, :cond_0

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_Cores;->removeProvince(I)V

    return-void

    :cond_0
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p2

    iget-boolean p2, p2, Laoc/kingdoms/lukasz/map/province/Province;->haveACore:Z

    if-nez p2, :cond_2

    iget-object p2, p0, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_Cores;->provinces:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    :cond_1
    iget-object p2, p0, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_Cores;->provinces:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_Cores;->provinces:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_Cores;->provincesSize:I

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_Cores;->removeProvince(I)V

    :goto_0
    return-void
.end method

.method public final checkProvince_Full(II)V
    .locals 1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    if-eq v0, p2, :cond_0

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_Cores;->removeProvince(I)V

    return-void

    :cond_0
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0, p2}, Laoc/kingdoms/lukasz/map/province/Province;->haveACore(I)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_Cores;->provinces:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    :cond_1
    iget-object p2, p0, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_Cores;->provinces:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_Cores;->provinces:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_Cores;->provincesSize:I

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_Cores;->removeProvince(I)V

    :goto_0
    return-void
.end method

.method public final removeProvince(I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_Cores;->provincesSize:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_Cores;->provinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_0

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_Cores;->provinces:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_Cores;->provinces:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_Cores;->provincesSize:I

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
