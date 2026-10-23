.class public Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;
.super Ljava/lang/Object;
.source "ProvinceData4.java"


# instance fields
.field public s:F

.field public u:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;->u:Z

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;->s:F

    return-void
.end method


# virtual methods
.method public getSiegeProgress()F
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;->s:F

    return v0
.end method

.method public isUnderSiege()Z
    .locals 1

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;->u:Z

    return v0
.end method

.method public setIsUnderSiege(IZ)V
    .locals 0

    iput-boolean p2, p0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;->u:Z

    if-eqz p2, :cond_0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p2

    invoke-virtual {p2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result p2

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p2

    invoke-virtual {p2, p1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addUnderSiege(I)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p2

    invoke-virtual {p2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result p2

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p2

    invoke-virtual {p2, p1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->removeUnderSiege(I)V

    :goto_0
    return-void
.end method

.method public setIsUnderSiege_Just(Z)V
    .locals 0

    iput-boolean p1, p0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;->u:Z

    return-void
.end method

.method public setSiegeProgress(F)V
    .locals 0

    iput p1, p0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;->s:F

    return-void
.end method
