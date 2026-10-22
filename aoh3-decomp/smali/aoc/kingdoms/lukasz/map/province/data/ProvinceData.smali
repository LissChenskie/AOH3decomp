.class public Laoc/kingdoms/lukasz/map/province/data/ProvinceData;
.super Ljava/lang/Object;
.source "ProvinceData.java"


# instance fields
.field public c:I

.field public o:I

.field public w:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->c:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->o:I

    const/4 v0, -0x1

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->w:I

    return-void
.end method


# virtual methods
.method public getCivID()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->c:I

    return v0
.end method

.method public getOccupiedByCivID()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->o:I

    return v0
.end method

.method public getWastelandLevel()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->w:I

    return v0
.end method

.method public setCivID(I)V
    .locals 0

    iput p1, p0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->c:I

    return-void
.end method

.method public setOccupiedByCivID(II)V
    .locals 0

    iput p2, p0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->o:I

    if-eqz p2, :cond_0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p2

    invoke-virtual {p2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result p2

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p2

    invoke-virtual {p2, p1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addOccupiedProvince(I)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p2

    invoke-virtual {p2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result p2

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p2

    invoke-virtual {p2, p1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->removeOccupiedProvince(I)V

    :goto_0
    return-void
.end method

.method public setWastelandLevel(I)V
    .locals 0

    iput p1, p0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->w:I

    return-void
.end method
