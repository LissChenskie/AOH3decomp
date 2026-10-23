.class public Laoc/kingdoms/lukasz/map/advisors/AdvisorSerializer;
.super Ljava/lang/Object;
.source "AdvisorSerializer.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Json$Serializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/badlogic/gdx/utils/Json$Serializer<",
        "Laoc/kingdoms/lukasz/map/advisors/Advisor;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;Ljava/lang/Class;)Laoc/kingdoms/lukasz/map/advisors/Advisor;
    .locals 2

    new-instance p1, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    invoke-direct {p1}, Laoc/kingdoms/lukasz/map/advisors/Advisor;-><init>()V

    const-string p3, "sName"

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sName:Ljava/lang/String;

    const-string p3, "iYearOfBirth"

    const/4 v1, 0x0

    invoke-virtual {p2, p3, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;I)I

    move-result p3

    iput p3, p1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->iYearOfBirth:I

    const-string p3, "iMonthOfBirth"

    invoke-virtual {p2, p3, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;I)I

    move-result p3

    iput p3, p1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->iMonthOfBirth:I

    const-string p3, "iDayOfBirth"

    invoke-virtual {p2, p3, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;I)I

    move-result p3

    iput p3, p1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->iDayOfBirth:I

    const-string p3, "sIMG"

    invoke-virtual {p2, p3, v0}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sIMG:Ljava/lang/String;

    const-string p3, "imageID"

    invoke-virtual {p2, p3, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;I)I

    move-result p3

    iput p3, p1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->imageID:I

    const-string p3, "iLevel"

    const/4 v0, 0x1

    invoke-virtual {p2, p3, v0}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;I)I

    move-result p3

    iput p3, p1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->iLevel:I

    const-string p3, "TaxEfficiency"

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result p3

    iput p3, p1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->TaxEfficiency:F

    const-string p3, "ProvinceMaintenance"

    invoke-virtual {p2, p3, v0}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result p3

    iput p3, p1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ProvinceMaintenance:F

    const/4 p3, 0x0

    sget-object p3, Laoc/kingdoms/lukasz/menusInGame/DrawOver/SQ/XjthpFh;->nMlUcjPZLqccbX:Ljava/lang/String;

    invoke-virtual {p2, p3, v0}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result p3

    iput p3, p1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->GrowthRate:F

    const-string p3, "ProductionEfficiency"

    invoke-virtual {p2, p3, v0}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result p3

    iput p3, p1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ProductionEfficiency:F

    const-string p3, "IncomeProduction"

    invoke-virtual {p2, p3, v0}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result p3

    iput p3, p1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->IncomeProduction:F

    const-string p3, "MonthlyLegacy"

    invoke-virtual {p2, p3, v0}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result p3

    iput p3, p1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->MonthlyLegacy:F

    const-string p3, "MaxManpower"

    invoke-virtual {p2, p3, v0}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result p3

    iput p3, p1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->MaxManpower:F

    const-string p3, "ArmyMaintenance"

    invoke-virtual {p2, p3, v0}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result p3

    iput p3, p1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ArmyMaintenance:F

    const-string p3, "RecruitmentTime"

    invoke-virtual {p2, p3, v0}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result p3

    iput p3, p1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->RecruitmentTime:F

    const-string p3, "RecruitArmyCost"

    invoke-virtual {p2, p3, v0}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result p3

    iput p3, p1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->RecruitArmyCost:F

    const-string p3, "Research"

    invoke-virtual {p2, p3, v0}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result p3

    iput p3, p1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->Research:F

    const/4 p3, 0x0

    sget-object p3, Laoc/kingdoms/lukasz/map/civilization/stats/LQy/lJxd;->ucGbUqAqxCCE:Ljava/lang/String;

    invoke-virtual {p2, p3, v0}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result p3

    iput p3, p1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ConstructionCost:F

    const-string p3, "AdministrationBuildingsCost"

    invoke-virtual {p2, p3, v0}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result p3

    iput p3, p1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->AdministrationBuildingsCost:F

    const-string p3, "MilitaryBuildingsCost"

    invoke-virtual {p2, p3, v0}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result p3

    iput p3, p1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->MilitaryBuildingsCost:F

    const-string p3, "EconomyBuildingsCost"

    invoke-virtual {p2, p3, v0}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result p3

    iput p3, p1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->EconomyBuildingsCost:F

    const-string p3, "ConstructionTime"

    invoke-virtual {p2, p3, v0}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result p3

    iput p3, p1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ConstructionTime:F

    const-string p3, "InvestInEconomyCost"

    invoke-virtual {p2, p3, v0}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result p3

    iput p3, p1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->InvestInEconomyCost:F

    const/4 p3, 0x0

    sget-object p3, Lcom/badlogic/gdx/backends/android/surfaceview/JuyF/CvuNnwgYwe;->boEM:Ljava/lang/String;

    invoke-virtual {p2, p3, v0}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result p3

    iput p3, p1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->IncreaseManpowerCost:F

    const-string p3, "IncreaseTaxEfficiencyCost"

    invoke-virtual {p2, p3, v0}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result p3

    iput p3, p1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->IncreaseTaxEfficiencyCost:F

    const-string p3, "IncreaseGrowthRateCost"

    invoke-virtual {p2, p3, v0}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result p3

    iput p3, p1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->IncreaseGrowthRateCost:F

    const-string p3, "DevelopInfrastructureCost"

    invoke-virtual {p2, p3, v0}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result p3

    iput p3, p1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->DevelopInfrastructureCost:F

    const-string p3, "GeneralAttack"

    invoke-virtual {p2, p3, v0}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result p3

    iput p3, p1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->GeneralAttack:F

    const-string p3, "GeneralDefense"

    invoke-virtual {p2, p3, v0}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result p3

    iput p3, p1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->GeneralDefense:F

    const-string p3, "UnitsAttack"

    invoke-virtual {p2, p3, v0}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result p3

    iput p3, p1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->UnitsAttack:F

    const-string p3, "UnitsDefense"

    invoke-virtual {p2, p3, v0}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result p3

    iput p3, p1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->UnitsDefense:F

    const-string p3, "MaxMorale"

    invoke-virtual {p2, p3, v0}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result p3

    iput p3, p1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->MaxMorale:F

    const-string p3, "ArmyMovementSpeed"

    invoke-virtual {p2, p3, v0}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result p3

    iput p3, p1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ArmyMovementSpeed:F

    const-string p3, "SiegeEffectiveness"

    invoke-virtual {p2, p3, v0}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result p3

    iput p3, p1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->SiegeEffectiveness:F

    const-string p3, "ImproveRelationsModifier"

    invoke-virtual {p2, p3, v0}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result p3

    iput p3, p1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ImproveRelationsModifier:F

    const-string p3, "LoanInterest"

    invoke-virtual {p2, p3, v0}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result p3

    iput p3, p1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->LoanInterest:F

    const-string p3, "CoreCost"

    invoke-virtual {p2, p3, v0}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result p3

    iput p3, p1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->CoreCost:F

    const-string p3, "ReligionCost"

    invoke-virtual {p2, p3, v0}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result p3

    iput p3, p1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ReligionCost:F

    const-string p3, "RegimentsLimit"

    invoke-virtual {p2, p3, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->RegimentsLimit:I

    return-object p1
.end method

.method public bridge synthetic read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Laoc/kingdoms/lukasz/map/advisors/AdvisorSerializer;->read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;Ljava/lang/Class;)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object p1

    return-object p1
.end method

.method public write(Lcom/badlogic/gdx/utils/Json;Laoc/kingdoms/lukasz/map/advisors/Advisor;Ljava/lang/Class;)V
    .locals 2

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart()V

    iget p3, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->TaxEfficiency:F

    const/4 v0, 0x0

    cmpl-float p3, p3, v0

    if-eqz p3, :cond_0

    iget p3, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->TaxEfficiency:F

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    const-string v1, "TaxEfficiency"

    invoke-virtual {p1, v1, p3}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    iget p3, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ProvinceMaintenance:F

    cmpl-float p3, p3, v0

    if-eqz p3, :cond_1

    iget p3, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ProvinceMaintenance:F

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    const-string v1, "ProvinceMaintenance"

    invoke-virtual {p1, v1, p3}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    iget p3, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->GrowthRate:F

    cmpl-float p3, p3, v0

    if-eqz p3, :cond_2

    iget p3, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->GrowthRate:F

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    const/4 v1, 0x0

    sget-object v1, Laoc/kingdoms/lukasz/menusInGame/DrawOver/SQ/XjthpFh;->iQEQEjgqZ:Ljava/lang/String;

    invoke-virtual {p1, v1, p3}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    iget p3, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ProductionEfficiency:F

    cmpl-float p3, p3, v0

    if-eqz p3, :cond_3

    iget p3, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ProductionEfficiency:F

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    const-string v1, "ProductionEfficiency"

    invoke-virtual {p1, v1, p3}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    iget p3, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->IncomeProduction:F

    cmpl-float p3, p3, v0

    if-eqz p3, :cond_4

    iget p3, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->IncomeProduction:F

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    const-string v1, "IncomeProduction"

    invoke-virtual {p1, v1, p3}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    iget p3, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->MonthlyLegacy:F

    cmpl-float p3, p3, v0

    if-eqz p3, :cond_5

    iget p3, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->MonthlyLegacy:F

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    const-string v1, "MonthlyLegacy"

    invoke-virtual {p1, v1, p3}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5
    iget p3, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->MaxManpower:F

    cmpl-float p3, p3, v0

    if-eqz p3, :cond_6

    iget p3, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->MaxManpower:F

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    const-string v1, "MaxManpower"

    invoke-virtual {p1, v1, p3}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_6
    iget p3, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ArmyMaintenance:F

    cmpl-float p3, p3, v0

    if-eqz p3, :cond_7

    iget p3, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ArmyMaintenance:F

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    const-string v1, "ArmyMaintenance"

    invoke-virtual {p1, v1, p3}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_7
    iget p3, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->RecruitmentTime:F

    cmpl-float p3, p3, v0

    if-eqz p3, :cond_8

    iget p3, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->RecruitmentTime:F

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    const-string v1, "RecruitmentTime"

    invoke-virtual {p1, v1, p3}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_8
    iget p3, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->RecruitArmyCost:F

    cmpl-float p3, p3, v0

    if-eqz p3, :cond_9

    iget p3, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->RecruitArmyCost:F

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    const-string v1, "RecruitArmyCost"

    invoke-virtual {p1, v1, p3}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_9
    iget p3, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->Research:F

    cmpl-float p3, p3, v0

    if-eqz p3, :cond_a

    iget p3, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->Research:F

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    const-string v1, "Research"

    invoke-virtual {p1, v1, p3}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_a
    iget p3, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ConstructionCost:F

    cmpl-float p3, p3, v0

    if-eqz p3, :cond_b

    iget p3, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ConstructionCost:F

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    const-string v1, "ConstructionCost"

    invoke-virtual {p1, v1, p3}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_b
    iget p3, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->AdministrationBuildingsCost:F

    cmpl-float p3, p3, v0

    if-eqz p3, :cond_c

    iget p3, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->AdministrationBuildingsCost:F

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    const-string v1, "AdministrationBuildingsCost"

    invoke-virtual {p1, v1, p3}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_c
    iget p3, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->MilitaryBuildingsCost:F

    cmpl-float p3, p3, v0

    if-eqz p3, :cond_d

    iget p3, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->MilitaryBuildingsCost:F

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    const-string v1, "MilitaryBuildingsCost"

    invoke-virtual {p1, v1, p3}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_d
    iget p3, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->EconomyBuildingsCost:F

    cmpl-float p3, p3, v0

    if-eqz p3, :cond_e

    iget p3, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->EconomyBuildingsCost:F

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    const-string v1, "EconomyBuildingsCost"

    invoke-virtual {p1, v1, p3}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_e
    iget p3, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ConstructionTime:F

    cmpl-float p3, p3, v0

    if-eqz p3, :cond_f

    iget p3, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ConstructionTime:F

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    const-string v1, "ConstructionTime"

    invoke-virtual {p1, v1, p3}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_f
    iget p3, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->InvestInEconomyCost:F

    cmpl-float p3, p3, v0

    if-eqz p3, :cond_10

    iget p3, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->InvestInEconomyCost:F

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    const-string v1, "InvestInEconomyCost"

    invoke-virtual {p1, v1, p3}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_10
    iget p3, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->IncreaseManpowerCost:F

    cmpl-float p3, p3, v0

    if-eqz p3, :cond_11

    iget p3, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->IncreaseManpowerCost:F

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    const-string v1, "IncreaseManpowerCost"

    invoke-virtual {p1, v1, p3}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_11
    iget p3, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->IncreaseTaxEfficiencyCost:F

    cmpl-float p3, p3, v0

    if-eqz p3, :cond_12

    iget p3, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->IncreaseTaxEfficiencyCost:F

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    const-string v1, "IncreaseTaxEfficiencyCost"

    invoke-virtual {p1, v1, p3}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_12
    iget p3, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->IncreaseGrowthRateCost:F

    cmpl-float p3, p3, v0

    if-eqz p3, :cond_13

    iget p3, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->IncreaseGrowthRateCost:F

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    const-string v1, "IncreaseGrowthRateCost"

    invoke-virtual {p1, v1, p3}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_13
    iget p3, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->DevelopInfrastructureCost:F

    cmpl-float p3, p3, v0

    if-eqz p3, :cond_14

    iget p3, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->DevelopInfrastructureCost:F

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    const-string v1, "DevelopInfrastructureCost"

    invoke-virtual {p1, v1, p3}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_14
    iget p3, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->GeneralAttack:F

    cmpl-float p3, p3, v0

    if-eqz p3, :cond_15

    iget p3, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->GeneralAttack:F

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    const-string v1, "GeneralAttack"

    invoke-virtual {p1, v1, p3}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_15
    iget p3, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->GeneralDefense:F

    cmpl-float p3, p3, v0

    if-eqz p3, :cond_16

    iget p3, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->GeneralDefense:F

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    const-string v1, "GeneralDefense"

    invoke-virtual {p1, v1, p3}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_16
    iget p3, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->UnitsAttack:F

    cmpl-float p3, p3, v0

    if-eqz p3, :cond_17

    iget p3, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->UnitsAttack:F

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    const-string v1, "UnitsAttack"

    invoke-virtual {p1, v1, p3}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_17
    iget p3, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->UnitsDefense:F

    cmpl-float p3, p3, v0

    if-eqz p3, :cond_18

    iget p3, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->UnitsDefense:F

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    const-string v1, "UnitsDefense"

    invoke-virtual {p1, v1, p3}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_18
    iget p3, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->MaxMorale:F

    cmpl-float p3, p3, v0

    if-eqz p3, :cond_19

    iget p3, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->MaxMorale:F

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    const/4 v1, 0x0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/AI/Values/nvwi/cIUGJCqyPXfp;->hfiVuYVaun:Ljava/lang/String;

    invoke-virtual {p1, v1, p3}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_19
    iget p3, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ArmyMovementSpeed:F

    cmpl-float p3, p3, v0

    if-eqz p3, :cond_1a

    iget p3, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ArmyMovementSpeed:F

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    const-string v1, "ArmyMovementSpeed"

    invoke-virtual {p1, v1, p3}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1a
    iget p3, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->SiegeEffectiveness:F

    cmpl-float p3, p3, v0

    if-eqz p3, :cond_1b

    iget p3, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->SiegeEffectiveness:F

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    const-string v1, "SiegeEffectiveness"

    invoke-virtual {p1, v1, p3}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1b
    iget p3, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ImproveRelationsModifier:F

    cmpl-float p3, p3, v0

    if-eqz p3, :cond_1c

    iget p3, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ImproveRelationsModifier:F

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    const-string v1, "ImproveRelationsModifier"

    invoke-virtual {p1, v1, p3}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1c
    iget p3, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->LoanInterest:F

    cmpl-float p3, p3, v0

    if-eqz p3, :cond_1d

    iget p3, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->LoanInterest:F

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    const-string v1, "LoanInterest"

    invoke-virtual {p1, v1, p3}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1d
    iget p3, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->CoreCost:F

    cmpl-float p3, p3, v0

    if-eqz p3, :cond_1e

    iget p3, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->CoreCost:F

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    const-string v1, "CoreCost"

    invoke-virtual {p1, v1, p3}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1e
    iget p3, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ReligionCost:F

    cmpl-float p3, p3, v0

    if-eqz p3, :cond_1f

    iget p3, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ReligionCost:F

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    const-string v0, "ReligionCost"

    invoke-virtual {p1, v0, p3}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1f
    iget p3, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->RegimentsLimit:I

    if-eqz p3, :cond_20

    iget p2, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->RegimentsLimit:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "RegimentsLimit"

    invoke-virtual {p1, p3, p2}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_20
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    return-void
.end method

.method public bridge synthetic write(Lcom/badlogic/gdx/utils/Json;Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 0

    check-cast p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    invoke-virtual {p0, p1, p2, p3}, Laoc/kingdoms/lukasz/map/advisors/AdvisorSerializer;->write(Lcom/badlogic/gdx/utils/Json;Laoc/kingdoms/lukasz/map/advisors/Advisor;Ljava/lang/Class;)V

    return-void
.end method
