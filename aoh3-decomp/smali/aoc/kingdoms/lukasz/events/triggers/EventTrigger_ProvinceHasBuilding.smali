.class public Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceHasBuilding;
.super Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;
.source "EventTrigger_ProvinceHasBuilding.java"


# instance fields
.field public building:I

.field public buildingID:I

.field public provID:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;-><init>()V

    iput p1, p0, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceHasBuilding;->provID:I

    iput p2, p0, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceHasBuilding;->building:I

    iput p3, p0, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceHasBuilding;->buildingID:I

    return-void
.end method


# virtual methods
.method public getImage()I
    .locals 1

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->buildings:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceHasBuilding;->provID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "BuildingConstructed"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText2()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v2, p0, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceHasBuilding;->building:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->Name:[Ljava/lang/String;

    iget v2, p0, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceHasBuilding;->buildingID:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText3()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "Currently"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceHasBuilding;->provID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    iget v2, p0, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceHasBuilding;->building:I

    iget v3, p0, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceHasBuilding;->buildingID:I

    invoke-virtual {v1, v2, v3}, Laoc/kingdoms/lukasz/map/province/Province;->buildingBuilt(II)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public outCondition(II)Z
    .locals 1

    iget p1, p0, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceHasBuilding;->provID:I

    if-ltz p1, :cond_0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p1

    iget p2, p0, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceHasBuilding;->building:I

    iget v0, p0, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceHasBuilding;->buildingID:I

    invoke-virtual {p1, p2, v0}, Laoc/kingdoms/lukasz/map/province/Province;->buildingBuilt(II)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
