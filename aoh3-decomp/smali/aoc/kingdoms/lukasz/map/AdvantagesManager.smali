.class public Laoc/kingdoms/lukasz/map/AdvantagesManager;
.super Ljava/lang/Object;
.source "AdvantagesManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;,
        Laoc/kingdoms/lukasz/map/AdvantagesManager$ConfigAdvantageData;
    }
.end annotation


# static fields
.field public static advantages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;",
            ">;"
        }
    .end annotation
.end field

.field public static advantagesGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static advantagesImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/textures/Image;",
            ">;"
        }
    .end annotation
.end field

.field public static iAdvantagesGroupsSize:I

.field public static iAdvantagesSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantagesGroups:Ljava/util/List;

    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->iAdvantagesGroupsSize:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantagesImages:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    sput v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->iAdvantagesSize:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAdvantageName(I)Ljava/lang/String;
    .locals 2

    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ConstructionCost:[F

    if-eqz v0, :cond_0

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v0, "ConstructionCost"

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->AdministrationBuildingsCost:[F

    if-eqz v0, :cond_1

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v0, "AdministrationBuildingsCost"

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MilitaryBuildingsCost:[F

    if-eqz v0, :cond_2

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v0, "MilitaryBuildingsCost"

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->EconomyBuildingsCost:[F

    if-eqz v0, :cond_3

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v0, "EconomyBuildingsCost"

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ConstructionTime:[F

    if-eqz v0, :cond_4

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v0, "ConstructionTime"

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->WonderConstructionCost:[F

    if-eqz v0, :cond_5

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const/4 v0, 0x0

    sget-object v0, Laoc/kingdoms/lukasz/menu/FQy/TGqtTWl;->xPIoBXa:Ljava/lang/String;

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->TaxEfficiency:[F

    if-eqz v0, :cond_6

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v0, "TaxEfficiency"

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ProvinceMaintenance:[F

    if-eqz v0, :cond_7

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v0, "ProvinceMaintenance"

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->BuildingsMaintenanceCost:[F

    if-eqz v0, :cond_8

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v0, "BuildingsMaintenanceCost"

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ManpowerRecoverySpeed:[F

    if-eqz v0, :cond_9

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v0, "ManpowerRecoverySpeed"

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ArmyMoraleRecovery:[F

    if-eqz v0, :cond_a

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v0, "ArmyMoraleRecovery"

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_a
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->WarScoreCost:[F

    if-eqz v0, :cond_b

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v0, "WarScoreCost"

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ReinforcementSpeed:[F

    if-eqz v0, :cond_c

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v0, "ReinforcementSpeed"

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_c
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaxManpower:[I

    if-eqz v0, :cond_d

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v0, "MaximumManpower"

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->Research:[F

    if-eqz v0, :cond_e

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v0, "Research"

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_e
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ResearchPoints:[F

    if-eqz v0, :cond_f

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v0, "ResearchPerMonth"

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_f
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->BuildingSlot:[I

    if-eqz v0, :cond_10

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v0, "AdditionalBuildingsInProvince"

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_10
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaxInfrastructure:[I

    if-eqz v0, :cond_11

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const/4 v0, 0x0

    sget-object v0, Lcom/pairip/licensecheck/CohD/CaiJWNfqszJNZ;->FfQlEjPNIAqCXI:Ljava/lang/String;

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_11
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->Devastation:[F

    if-eqz v0, :cond_12

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v0, "Devastation"

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_12
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->GrowthRate:[F

    if-eqz v0, :cond_13

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v0, "GrowthRate"

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_13
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MonthlyIncome:[F

    if-eqz v0, :cond_14

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v0, "MonthlyIncome"

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_14
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->Gold:[F

    if-eqz v0, :cond_15

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v0, "Gold"

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_15
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MonthlyLegacy:[F

    if-eqz v0, :cond_16

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v0, "MonthlyLegacy"

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_16
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->IncomeProduction:[F

    if-eqz v0, :cond_17

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v0, "IncomeProduction"

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_17
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ProductionEfficiency:[F

    if-eqz v0, :cond_18

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v0, "ProductionEfficiency"

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_18
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->InvestInEconomyCost:[F

    if-eqz v0, :cond_19

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v0, "InvestInEconomyCost"

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_19
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->IncreaseManpowerCost:[F

    if-eqz v0, :cond_1a

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v0, "IncreaseManpowerCost"

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1a
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->IncreaseTaxEfficiencyCost:[F

    if-eqz v0, :cond_1b

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v0, "IncreaseTaxEfficiencyCost"

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1b
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->IncreaseGrowthRateCost:[F

    if-eqz v0, :cond_1c

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v0, "IncreaseGrowthRateCost"

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1c
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->DevelopInfrastructureCost:[F

    if-eqz v0, :cond_1d

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v0, "DevelopInfrastructureCost"

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1d
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->GeneralAttack:[I

    if-eqz v0, :cond_1e

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v0, "GeneralsAttack"

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1e
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->GeneralDefense:[I

    if-eqz v0, :cond_1f

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v0, "GeneralsDefense"

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1f
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->UnitsAttack:[I

    if-eqz v0, :cond_20

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v0, "UnitsAttack"

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_20
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->UnitsDefense:[I

    if-eqz v0, :cond_21

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v0, "UnitsDefense"

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_21
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaxMorale:[F

    if-eqz v0, :cond_22

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v0, "MaxMorale"

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_22
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ArmyMovementSpeed:[F

    if-eqz v0, :cond_23

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v0, "ArmyMovementSpeed"

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_23
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->SiegeEffectiveness:[F

    if-eqz v0, :cond_24

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const/4 v0, 0x0

    sget-object v0, Laoc/kingdoms/lukasz/menusEditor/RJR/ATsAGKCnv;->HmXOlJvpGLthXv:Ljava/lang/String;

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_24
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ImproveRelationsModifier:[F

    if-eqz v0, :cond_25

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v0, "ImproveRelationsModifier"

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_25
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->IncomeFromVassals:[F

    if-eqz v0, :cond_26

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const/4 v0, 0x0

    sget-object v0, Laoc/kingdoms/lukasz/map/technology/Bhs/fiRhHJntP;->jGhNDrAFK:Ljava/lang/String;

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_26
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->LoanInterest:[F

    if-eqz v0, :cond_27

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v0, "LoanInterest"

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_27
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->DiplomacyPoints:[F

    if-eqz v0, :cond_28

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v0, "DiplomacyPoints"

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_28
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->RecruitmentTime:[F

    if-eqz v0, :cond_29

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v0, "RecruitmentTime"

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_29
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->RecruitArmyCost:[F

    if-eqz v0, :cond_2a

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v0, "ArmyRecruitmentCost"

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2a
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->RecruitArmyFirstLineCost:[F

    if-eqz v0, :cond_2b

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v0, "FirstLineArmyRecruitmentCost"

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2b
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->RecruitArmySecondLineCost:[F

    if-eqz v0, :cond_2c

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v0, "SecondLineArmyRecruitmentCost"

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2c
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ArmyMaintenance:[F

    if-eqz v0, :cond_2d

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v0, "ArmyMaintenance"

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2d
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->CoreCost:[F

    if-eqz v0, :cond_2e

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v0, "CoreConstruction"

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2e
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ReligionCost:[F

    if-eqz v0, :cond_2f

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v0, "ReligionConversionCost"

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2f
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaxNumOfAlliances:[I

    if-eqz v0, :cond_30

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v0, "MaxNumOfAlliances"

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_30
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->AdvisorMaxLevel:[I

    if-eqz v0, :cond_31

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v0, "MaximumAdvisorSkillLevel"

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_31
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->AdvisorPoolSize:[I

    if-eqz v0, :cond_32

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v0, "AdvisorPool"

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_32
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaxNumberOfLoans:[I

    if-eqz v0, :cond_33

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v0, "MaximumNumberOfLoans"

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_33
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaximumLevelOfTheMilitaryAcademyForGenerals:[I

    if-eqz v0, :cond_34

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v0, "MaximumLevelOfTheMilitaryAcademyForGenerals"

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_34
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaximumLevelOfTheMilitaryAcademy:[I

    if-eqz v0, :cond_35

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v0, "MaximumLevelOfTheMilitaryAcademy"

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_35
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaximumLevelOfTheSupremeCourt:[I

    if-eqz v0, :cond_36

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v0, "MaximumLevelOfTheSupremeCourt"

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_36
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaximumLevelOfCapitalCity:[I

    if-eqz v0, :cond_37

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v0, "MaximumLevelOfCapitalCity"

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_37
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->AggressiveExpansion:[F

    if-eqz v0, :cond_38

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v0, "AggressiveExpansion"

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_38
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->DiseaseDeathRate:[F

    if-eqz v0, :cond_39

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v0, "DiseasesDeathRate"

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_39
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ManpowerRecoveryFromADisbandedArmy:[F

    if-eqz v0, :cond_3a

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v0, "ManpowerRecoveryFromADisbandedArmy"

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3a
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->AdvisorCost:[F

    if-eqz v0, :cond_3b

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v0, "AdvisorCost"

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3b
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->GeneralCost:[F

    if-eqz v0, :cond_3c

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v0, "GeneralCost"

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3c
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->Discipline:[F

    if-eqz v0, :cond_3d

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v0, "Discipline"

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3d
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaximumAmountOfGold:[F

    const-string v1, "MaximumAmountOfGold"

    if-eqz v0, :cond_3e

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3e
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaximumAmountOfGold_Percentage:[F

    if-eqz v0, :cond_3f

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3f
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->Loot:[F

    if-eqz v0, :cond_40

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v0, "Loot"

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_40
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->BattleWidth:[I

    if-eqz v0, :cond_41

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v0, "BattleWidth"

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_41
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->RegimentsLimit:[I

    if-eqz v0, :cond_42

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v0, "RegimentsLimit"

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_42
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object p0, p0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->AllCharactersLifeExpectancy:[I

    if-eqz p0, :cond_43

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v0, "AllCharactersLifeExpectancy"

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_43
    const-string p0, "--"

    return-object p0
.end method

.method private static final getRandomAdvantages()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->advantages:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advantages;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advantages;->ADVANTAGES_RANDOM_INIT:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->advantages:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advantages;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advantages;->ADVANTAGES_RANDOM_INIT_RANDOM:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-le v2, v3, :cond_0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->advantages:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advantages;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advantages;->ADVANTAGES_RANDOM_INIT_RANDOM:I

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/2addr v1, v2

    :cond_0
    :goto_0
    add-int/lit8 v2, v4, 0x1

    const/16 v3, 0x31

    if-ge v4, v3, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v3, v1, :cond_2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget v4, Laoc/kingdoms/lukasz/map/AdvantagesManager;->iAdvantagesSize:I

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    move v4, v2

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static final initAdvantagePoints()V
    .locals 5

    const/4 v0, 0x1

    :goto_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->advantages:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advantages;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advantages;->ADVANTAGE_POINTS_START_GAME:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->advantages:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advantages;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advantages;->ADVANTAGE_POINTS_START_GAME_RANDOM:I

    if-lez v3, :cond_0

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->advantages:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advantages;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advantages;->ADVANTAGE_POINTS_START_GAME_RANDOM:I

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setAdvantagePoints(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static final initRandomAdvantages()V
    .locals 7

    const/4 v0, 0x1

    :goto_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-static {}, Laoc/kingdoms/lukasz/map/AdvantagesManager;->getRandomAdvantages()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addAdvantage(II)V

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5, v3, v0}, Laoc/kingdoms/lukasz/map/AdvantagesManager;->updateCivBonuses(III)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static final loadAdvantages()V
    .locals 5

    const-string v0, "game/advantages/AdvantagesGroups.txt"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    sget-object v2, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantagesGroups:Ljava/util/List;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantagesGroups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->iAdvantagesGroupsSize:I

    :try_start_0
    const-string v0, "game/advantages/Advantages.json"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    const-class v2, Laoc/kingdoms/lukasz/map/AdvantagesManager$ConfigAdvantageData;

    const-string v3, "Advantage"

    const-class v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    invoke-virtual {v1, v2, v3, v4}, Lcom/badlogic/gdx/utils/Json;->setElementType(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    const-class v2, Laoc/kingdoms/lukasz/map/AdvantagesManager$ConfigAdvantageData;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$ConfigAdvantageData;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$ConfigAdvantageData;->Advantage:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_1
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->iAdvantagesSize:I

    invoke-static {}, Laoc/kingdoms/lukasz/map/AdvantagesManager;->loadAdvantagesImages()V

    return-void
.end method

.method public static final loadAdvantagesImages()V
    .locals 7

    const-string v0, "game/advantages/advantagesImages/numOfImages.txt"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "game/advantages/advantagesImages/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->getRescouresPath_Short()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ".png"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantagesImages:Ljava/util/List;

    new-instance v5, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->getRescouresPath_Short()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->loadTexture_RGB888(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v3

    sget-object v4, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v6, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-direct {v5, v3, v4, v6}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    sget-object v2, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantagesImages:Ljava/util/List;

    new-instance v5, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->getRescouresPath_Short_H()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->loadTexture_RGB888(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v3

    sget-object v4, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v6, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-direct {v5, v3, v4, v6}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_1
    return-void
.end method

.method public static final unlockAdvantage(II)Z
    .locals 5

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getAdvantageLvl(I)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getAdvantagePoints()I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantage(II)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->canUnlockAdvantage(II)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getAdvantagePoints()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setAdvantagePoints(I)V

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addAdvantage(II)V

    invoke-static {p1, v0, p0}, Laoc/kingdoms/lukasz/map/AdvantagesManager;->updateCivBonuses(III)V

    return v1

    :cond_0
    return v3
.end method

.method public static final unlockAdvantage(III)Z
    .locals 4

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getAdvantagePoints()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantage(II)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->canUnlockAdvantage(II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getAdvantagePoints()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setAdvantagePoints(I)V

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addAdvantage(II)V

    invoke-static {p1, p2, p0}, Laoc/kingdoms/lukasz/map/AdvantagesManager;->updateCivBonuses(III)V

    return v3

    :cond_0
    return v1
.end method

.method public static final updateCivBonuses(III)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Laoc/kingdoms/lukasz/map/AdvantagesManager;->updateCivBonuses(IIIZ)V

    return-void
.end method

.method public static final updateCivBonuses(IIIZ)V
    .locals 3

    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ImageID:[I

    array-length v0, v0

    if-lt p1, v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->TaxEfficiency:[F

    if-eqz v0, :cond_1

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->TaxEfficiency:F

    sget-object v2, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->TaxEfficiency:[F

    aget v2, v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->TaxEfficiency:F

    :cond_1
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ProvinceMaintenance:[F

    if-eqz v0, :cond_2

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ProvinceMaintenance:F

    sget-object v2, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ProvinceMaintenance:[F

    aget v2, v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ProvinceMaintenance:F

    :cond_2
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->BuildingsMaintenanceCost:[F

    if-eqz v0, :cond_3

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->BuildingsMaintenanceCost:F

    sget-object v2, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->BuildingsMaintenanceCost:[F

    aget v2, v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->BuildingsMaintenanceCost:F

    :cond_3
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ConstructionTime:[F

    if-eqz v0, :cond_4

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ConstructionTime:F

    sget-object v2, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ConstructionTime:[F

    aget v2, v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ConstructionTime:F

    :cond_4
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ConstructionCost:[F

    if-eqz v0, :cond_5

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ConstructionCost:F

    sget-object v2, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ConstructionCost:[F

    aget v2, v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ConstructionCost:F

    :cond_5
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->AdministrationBuildingsCost:[F

    if-eqz v0, :cond_6

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AdministrationBuildingsCost:F

    sget-object v2, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->AdministrationBuildingsCost:[F

    aget v2, v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AdministrationBuildingsCost:F

    :cond_6
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MilitaryBuildingsCost:[F

    if-eqz v0, :cond_7

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MilitaryBuildingsCost:F

    sget-object v2, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MilitaryBuildingsCost:[F

    aget v2, v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MilitaryBuildingsCost:F

    :cond_7
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->EconomyBuildingsCost:[F

    if-eqz v0, :cond_8

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->EconomyBuildingsCost:F

    sget-object v2, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->EconomyBuildingsCost:[F

    aget v2, v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->EconomyBuildingsCost:F

    :cond_8
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->WonderConstructionCost:[F

    if-eqz v0, :cond_9

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->WonderConstructionCost:F

    sget-object v2, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->WonderConstructionCost:[F

    aget v2, v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->WonderConstructionCost:F

    :cond_9
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaxManpower:[I

    if-eqz v0, :cond_a

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxManpower:F

    sget-object v2, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaxManpower:[I

    aget v2, v2, p1

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxManpower:F

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadTurns:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;

    invoke-virtual {v0, p2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->addCivUpdateMaxManpower(I)V

    :cond_a
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ManpowerRecoverySpeed:[F

    if-eqz v0, :cond_b

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ManpowerRecoverySpeed:F

    sget-object v2, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ManpowerRecoverySpeed:[F

    aget v2, v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ManpowerRecoverySpeed:F

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadTurns:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;

    invoke-virtual {v0, p2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->addCivUpdateMaxManpower(I)V

    :cond_b
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ArmyMoraleRecovery:[F

    if-eqz v0, :cond_c

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ArmyMoraleRecovery:F

    sget-object v2, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ArmyMoraleRecovery:[F

    aget v2, v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ArmyMoraleRecovery:F

    :cond_c
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->WarScoreCost:[F

    if-eqz v0, :cond_d

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->WarScoreCost:F

    sget-object v2, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->WarScoreCost:[F

    aget v2, v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->WarScoreCost:F

    :cond_d
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->Research:[F

    if-eqz v0, :cond_e

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->Research:F

    sget-object v2, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->Research:[F

    aget v2, v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->Research:F

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {v0, p2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateResearchPerMonth(I)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {v0, p2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateTotalIncomePerMonth(I)V

    :cond_e
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ResearchPoints:[F

    if-eqz v0, :cond_f

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ResearchPoints:F

    sget-object v2, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ResearchPoints:[F

    aget v2, v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ResearchPoints:F

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {v0, p2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateResearchPerMonth(I)V

    :cond_f
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->Devastation:[F

    if-eqz v0, :cond_10

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->Devastation:F

    sget-object v2, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->Devastation:[F

    aget v2, v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->Devastation:F

    :cond_10
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->BuildingSlot:[I

    if-eqz v0, :cond_11

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->BuildingSlot:I

    sget-object v2, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->BuildingSlot:[I

    aget v2, v2, p1

    add-int/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->BuildingSlot:I

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateBuildingLimit()V

    :cond_11
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaxInfrastructure:[I

    if-eqz v0, :cond_12

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxInfrastructure:I

    sget-object v2, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaxInfrastructure:[I

    aget v2, v2, p1

    add-int/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxInfrastructure:I

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateInfrastructureMax()V

    :cond_12
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MonthlyIncome:[F

    if-eqz v0, :cond_13

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MonthlyIncome:F

    sget-object v2, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MonthlyIncome:[F

    aget v2, v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MonthlyIncome:F

    :cond_13
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->Gold:[F

    if-eqz v0, :cond_14

    if-nez p3, :cond_14

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p3

    iget v0, p3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->Gold:[F

    aget v1, v1, p1

    add-float/2addr v0, v1

    iput v0, p3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    :cond_14
    sget-object p3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {p3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object p3, p3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MonthlyLegacy:[F

    if-eqz p3, :cond_15

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p3

    iget-object p3, p3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v0, p3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MonthlyLegacy:F

    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MonthlyLegacy:[F

    aget v1, v1, p1

    add-float/2addr v0, v1

    iput v0, p3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MonthlyLegacy:F

    sget-object p3, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {p3, p2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateLegacyPerMonth(I)V

    :cond_15
    sget-object p3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {p3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object p3, p3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->GrowthRate:[F

    if-eqz p3, :cond_16

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p3

    iget-object p3, p3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v0, p3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GrowthRate:F

    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->GrowthRate:[F

    aget v1, v1, p1

    add-float/2addr v0, v1

    iput v0, p3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GrowthRate:F

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p3

    invoke-virtual {p3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateResearchPerMonth()V

    sget-object p3, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {p3, p2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateTotalIncomePerMonth(I)V

    :cond_16
    sget-object p3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {p3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object p3, p3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->IncomeProduction:[F

    if-eqz p3, :cond_17

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p3

    iget-object p3, p3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v0, p3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncomeProduction:F

    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->IncomeProduction:[F

    aget v1, v1, p1

    add-float/2addr v0, v1

    iput v0, p3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncomeProduction:F

    :cond_17
    sget-object p3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {p3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object p3, p3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ProductionEfficiency:[F

    if-eqz p3, :cond_18

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p3

    iget-object p3, p3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v0, p3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ProductionEfficiency:F

    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ProductionEfficiency:[F

    aget v1, v1, p1

    add-float/2addr v0, v1

    iput v0, p3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ProductionEfficiency:F

    :cond_18
    sget-object p3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {p3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object p3, p3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->IncreaseManpowerCost:[F

    if-eqz p3, :cond_19

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p3

    iget-object p3, p3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v0, p3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncreaseManpowerCost:F

    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->IncreaseManpowerCost:[F

    aget v1, v1, p1

    add-float/2addr v0, v1

    iput v0, p3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncreaseManpowerCost:F

    :cond_19
    sget-object p3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {p3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object p3, p3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->InvestInEconomyCost:[F

    if-eqz p3, :cond_1a

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p3

    iget-object p3, p3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v0, p3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->InvestInEconomyCost:F

    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->InvestInEconomyCost:[F

    aget v1, v1, p1

    add-float/2addr v0, v1

    iput v0, p3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->InvestInEconomyCost:F

    :cond_1a
    sget-object p3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {p3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object p3, p3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->IncreaseTaxEfficiencyCost:[F

    if-eqz p3, :cond_1b

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p3

    iget-object p3, p3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v0, p3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncreaseTaxEfficiencyCost:F

    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->IncreaseTaxEfficiencyCost:[F

    aget v1, v1, p1

    add-float/2addr v0, v1

    iput v0, p3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncreaseTaxEfficiencyCost:F

    :cond_1b
    sget-object p3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {p3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object p3, p3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->IncreaseGrowthRateCost:[F

    if-eqz p3, :cond_1c

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p3

    iget-object p3, p3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v0, p3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncreaseGrowthRateCost:F

    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->IncreaseGrowthRateCost:[F

    aget v1, v1, p1

    add-float/2addr v0, v1

    iput v0, p3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncreaseGrowthRateCost:F

    :cond_1c
    sget-object p3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {p3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object p3, p3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->DevelopInfrastructureCost:[F

    if-eqz p3, :cond_1d

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p3

    iget-object p3, p3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v0, p3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->DevelopInfrastructureCost:F

    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->DevelopInfrastructureCost:[F

    aget v1, v1, p1

    add-float/2addr v0, v1

    iput v0, p3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->DevelopInfrastructureCost:F

    :cond_1d
    sget-object p3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {p3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object p3, p3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->GeneralAttack:[I

    if-eqz p3, :cond_1e

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p3

    iget-object p3, p3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v0, p3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralAttack:I

    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->GeneralAttack:[I

    aget v1, v1, p1

    add-int/2addr v0, v1

    iput v0, p3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralAttack:I

    :cond_1e
    sget-object p3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {p3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object p3, p3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->GeneralDefense:[I

    if-eqz p3, :cond_1f

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p3

    iget-object p3, p3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v0, p3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralDefense:I

    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->GeneralDefense:[I

    aget v1, v1, p1

    add-int/2addr v0, v1

    iput v0, p3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralDefense:I

    :cond_1f
    sget-object p3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {p3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object p3, p3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->UnitsAttack:[I

    if-eqz p3, :cond_20

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p3

    iget-object p3, p3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v0, p3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->UnitsAttack:I

    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->UnitsAttack:[I

    aget v1, v1, p1

    add-int/2addr v0, v1

    iput v0, p3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->UnitsAttack:I

    :cond_20
    sget-object p3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {p3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object p3, p3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->UnitsDefense:[I

    if-eqz p3, :cond_21

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p3

    iget-object p3, p3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v0, p3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->UnitsDefense:I

    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->UnitsDefense:[I

    aget v1, v1, p1

    add-int/2addr v0, v1

    iput v0, p3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->UnitsDefense:I

    :cond_21
    sget-object p3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {p3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object p3, p3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaxMorale:[F

    if-eqz p3, :cond_22

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p3

    iget-object p3, p3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v0, p3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxMorale:F

    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaxMorale:[F

    aget v1, v1, p1

    add-float/2addr v0, v1

    iput v0, p3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxMorale:F

    :cond_22
    sget-object p3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {p3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object p3, p3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ArmyMovementSpeed:[F

    if-eqz p3, :cond_23

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p3

    iget-object p3, p3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v0, p3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ArmyMovementSpeed:F

    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ArmyMovementSpeed:[F

    aget v1, v1, p1

    add-float/2addr v0, v1

    iput v0, p3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ArmyMovementSpeed:F

    :cond_23
    sget-object p3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {p3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object p3, p3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->SiegeEffectiveness:[F

    if-eqz p3, :cond_24

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p3

    iget-object p3, p3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v0, p3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->SiegeEffectiveness:F

    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->SiegeEffectiveness:[F

    aget v1, v1, p1

    add-float/2addr v0, v1

    iput v0, p3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->SiegeEffectiveness:F

    :cond_24
    sget-object p3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {p3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object p3, p3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ImproveRelationsModifier:[F

    if-eqz p3, :cond_25

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p3

    iget-object p3, p3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v0, p3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ImproveRelationsModifier:F

    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ImproveRelationsModifier:[F

    aget v1, v1, p1

    add-float/2addr v0, v1

    iput v0, p3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ImproveRelationsModifier:F

    :cond_25
    sget-object p3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {p3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object p3, p3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->IncomeFromVassals:[F

    if-eqz p3, :cond_26

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p3

    iget-object p3, p3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v0, p3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncomeFromVassals:F

    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->IncomeFromVassals:[F

    aget v1, v1, p1

    add-float/2addr v0, v1

    iput v0, p3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncomeFromVassals:F

    sget-object p3, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {p3, p2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateTotalIncomePerMonth(I)V

    :cond_26
    sget-object p3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {p3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object p3, p3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->DiplomacyPoints:[F

    if-eqz p3, :cond_27

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p3

    iget-object p3, p3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v0, p3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->DiplomacyPoints:F

    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->DiplomacyPoints:[F

    aget v1, v1, p1

    add-float/2addr v0, v1

    iput v0, p3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->DiplomacyPoints:F

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p3

    invoke-virtual {p3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateDiplomacyPerMonth()V

    :cond_27
    sget-object p3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {p3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object p3, p3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->LoanInterest:[F

    if-eqz p3, :cond_28

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p3

    iget-object p3, p3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v0, p3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->LoanInterest:F

    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->LoanInterest:[F

    aget v1, v1, p1

    add-float/2addr v0, v1

    iput v0, p3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->LoanInterest:F

    :cond_28
    sget-object p3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {p3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object p3, p3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaxNumberOfLoans:[I

    if-eqz p3, :cond_29

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p3

    iget-object p3, p3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v0, p3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxNumberOfLoans:I

    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaxNumberOfLoans:[I

    aget v1, v1, p1

    add-int/2addr v0, v1

    iput v0, p3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxNumberOfLoans:I

    :cond_29
    sget-object p3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {p3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object p3, p3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaximumLevelOfTheMilitaryAcademyForGenerals:[I

    if-eqz p3, :cond_2a

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p3

    iget-object p3, p3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v0, p3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaximumLevelOfTheMilitaryAcademyForGenerals:I

    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaximumLevelOfTheMilitaryAcademyForGenerals:[I

    aget v1, v1, p1

    add-int/2addr v0, v1

    iput v0, p3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaximumLevelOfTheMilitaryAcademyForGenerals:I

    :cond_2a
    sget-object p3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {p3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object p3, p3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaximumLevelOfTheMilitaryAcademy:[I

    if-eqz p3, :cond_2b

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p3

    iget-object p3, p3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v0, p3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaximumLevelOfTheMilitaryAcademy:I

    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaximumLevelOfTheMilitaryAcademy:[I

    aget v1, v1, p1

    add-int/2addr v0, v1

    iput v0, p3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaximumLevelOfTheMilitaryAcademy:I

    :cond_2b
    sget-object p3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {p3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object p3, p3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaximumLevelOfTheSupremeCourt:[I

    if-eqz p3, :cond_2c

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p3

    iget-object p3, p3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v0, p3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaximumLevelOfTheSupremeCourt:I

    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaximumLevelOfTheSupremeCourt:[I

    aget v1, v1, p1

    add-int/2addr v0, v1

    iput v0, p3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaximumLevelOfTheSupremeCourt:I

    :cond_2c
    sget-object p3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {p3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object p3, p3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaximumLevelOfCapitalCity:[I

    if-eqz p3, :cond_2d

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p3

    iget-object p3, p3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v0, p3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaximumLevelOfCapitalCity:I

    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaximumLevelOfCapitalCity:[I

    aget v1, v1, p1

    add-int/2addr v0, v1

    iput v0, p3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaximumLevelOfCapitalCity:I

    :cond_2d
    sget-object p3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {p3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object p3, p3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->RecruitmentTime:[F

    if-eqz p3, :cond_2e

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p3

    iget-object p3, p3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v0, p3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RecruitmentTime:F

    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->RecruitmentTime:[F

    aget v1, v1, p1

    add-float/2addr v0, v1

    iput v0, p3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RecruitmentTime:F

    :cond_2e
    sget-object p3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {p3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object p3, p3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->CoreCost:[F

    if-eqz p3, :cond_2f

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p3

    iget-object p3, p3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v0, p3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->CoreCost:F

    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->CoreCost:[F

    aget v1, v1, p1

    add-float/2addr v0, v1

    iput v0, p3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->CoreCost:F

    :cond_2f
    sget-object p3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {p3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object p3, p3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ReligionCost:[F

    if-eqz p3, :cond_30

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p3

    iget-object p3, p3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v0, p3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ReligionCost:F

    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ReligionCost:[F

    aget v1, v1, p1

    add-float/2addr v0, v1

    iput v0, p3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ReligionCost:F

    :cond_30
    sget-object p3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {p3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object p3, p3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->RecruitArmyCost:[F

    if-eqz p3, :cond_31

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p3

    iget-object p3, p3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v0, p3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RecruitArmyCost:F

    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->RecruitArmyCost:[F

    aget v1, v1, p1

    add-float/2addr v0, v1

    iput v0, p3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RecruitArmyCost:F

    :cond_31
    sget-object p3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {p3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object p3, p3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->RecruitArmyFirstLineCost:[F

    if-eqz p3, :cond_32

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p3

    iget-object p3, p3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v0, p3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RecruitArmyFirstLineCost:F

    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->RecruitArmyFirstLineCost:[F

    aget v1, v1, p1

    add-float/2addr v0, v1

    iput v0, p3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RecruitArmyFirstLineCost:F

    :cond_32
    sget-object p3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {p3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object p3, p3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->RecruitArmySecondLineCost:[F

    if-eqz p3, :cond_33

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p3

    iget-object p3, p3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v0, p3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RecruitArmySecondLineCost:F

    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->RecruitArmySecondLineCost:[F

    aget v1, v1, p1

    add-float/2addr v0, v1

    iput v0, p3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RecruitArmySecondLineCost:F

    :cond_33
    sget-object p3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {p3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object p3, p3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ArmyMaintenance:[F

    if-eqz p3, :cond_34

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p3

    iget-object p3, p3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v0, p3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ArmyMaintenance:F

    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ArmyMaintenance:[F

    aget v1, v1, p1

    add-float/2addr v0, v1

    iput v0, p3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ArmyMaintenance:F

    sget-object p3, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {p3, p2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateArmyMaintenance(I)V

    :cond_34
    sget-object p3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {p3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object p3, p3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaxNumOfAlliances:[I

    if-eqz p3, :cond_35

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p3

    iget-object p3, p3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v0, p3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxNumOfAlliances:I

    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaxNumOfAlliances:[I

    aget v1, v1, p1

    add-int/2addr v0, v1

    iput v0, p3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxNumOfAlliances:I

    :cond_35
    sget-object p3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {p3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object p3, p3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->AdvisorMaxLevel:[I

    if-eqz p3, :cond_36

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p3

    iget-object p3, p3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v0, p3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AdvisorMaxLevel:I

    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->AdvisorMaxLevel:[I

    aget v1, v1, p1

    add-int/2addr v0, v1

    iput v0, p3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AdvisorMaxLevel:I

    :cond_36
    sget-object p3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {p3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object p3, p3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->AdvisorPoolSize:[I

    if-eqz p3, :cond_37

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p3

    iget-object p3, p3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v0, p3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AdvisorPoolSize:I

    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->AdvisorPoolSize:[I

    aget v1, v1, p1

    add-int/2addr v0, v1

    iput v0, p3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AdvisorPoolSize:I

    :cond_37
    sget-object p3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {p3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object p3, p3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->AdvisorCost:[F

    if-eqz p3, :cond_38

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p3

    iget-object p3, p3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v0, p3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AdvisorCost:F

    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->AdvisorCost:[F

    aget v1, v1, p1

    add-float/2addr v0, v1

    iput v0, p3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AdvisorCost:F

    :cond_38
    sget-object p3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {p3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object p3, p3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->GeneralCost:[F

    if-eqz p3, :cond_39

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p3

    iget-object p3, p3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v0, p3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralCost:F

    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->GeneralCost:[F

    aget v1, v1, p1

    add-float/2addr v0, v1

    iput v0, p3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralCost:F

    :cond_39
    sget-object p3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {p3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object p3, p3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->AggressiveExpansion:[F

    if-eqz p3, :cond_3a

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p3

    iget-object p3, p3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v0, p3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AggressiveExpansion:F

    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->AggressiveExpansion:[F

    aget v1, v1, p1

    add-float/2addr v0, v1

    iput v0, p3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AggressiveExpansion:F

    :cond_3a
    sget-object p3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {p3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object p3, p3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->DiseaseDeathRate:[F

    if-eqz p3, :cond_3b

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p3

    iget-object p3, p3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v0, p3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->DiseaseDeathRate:F

    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->DiseaseDeathRate:[F

    aget v1, v1, p1

    add-float/2addr v0, v1

    iput v0, p3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->DiseaseDeathRate:F

    :cond_3b
    sget-object p3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {p3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object p3, p3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ManpowerRecoveryFromADisbandedArmy:[F

    if-eqz p3, :cond_3c

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p3

    iget-object p3, p3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v0, p3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ManpowerRecoveryFromADisbandedArmy:F

    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ManpowerRecoveryFromADisbandedArmy:[F

    aget v1, v1, p1

    add-float/2addr v0, v1

    iput v0, p3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ManpowerRecoveryFromADisbandedArmy:F

    :cond_3c
    sget-object p3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {p3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object p3, p3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->BattleWidth:[I

    if-eqz p3, :cond_3d

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p3

    iget-object p3, p3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v0, p3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->BattleWidth:I

    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->BattleWidth:[I

    aget v1, v1, p1

    add-int/2addr v0, v1

    iput v0, p3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->BattleWidth:I

    :cond_3d
    sget-object p3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {p3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object p3, p3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->AllCharactersLifeExpectancy:[I

    if-eqz p3, :cond_3e

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p3

    iget-object p3, p3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v0, p3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AllCharactersLifeExpectancy:I

    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->AllCharactersLifeExpectancy:[I

    aget v1, v1, p1

    add-int/2addr v0, v1

    iput v0, p3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AllCharactersLifeExpectancy:I

    :cond_3e
    sget-object p3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {p3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object p3, p3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->Discipline:[F

    if-eqz p3, :cond_3f

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p3

    iget-object p3, p3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v0, p3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->Discipline:F

    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->Discipline:[F

    aget v1, v1, p1

    add-float/2addr v0, v1

    iput v0, p3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->Discipline:F

    :cond_3f
    sget-object p3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {p3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object p3, p3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaximumAmountOfGold:[F

    if-eqz p3, :cond_40

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p3

    iget-object p3, p3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v0, p3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaximumAmountOfGold:F

    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaximumAmountOfGold:[F

    aget v1, v1, p1

    add-float/2addr v0, v1

    iput v0, p3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaximumAmountOfGold:F

    :cond_40
    sget-object p3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {p3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object p3, p3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaximumAmountOfGold_Percentage:[F

    if-eqz p3, :cond_41

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p3

    iget-object p3, p3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v0, p3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaximumAmountOfGold_Percentage:F

    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaximumAmountOfGold_Percentage:[F

    aget v1, v1, p1

    add-float/2addr v0, v1

    iput v0, p3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaximumAmountOfGold_Percentage:F

    :cond_41
    sget-object p3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {p3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object p3, p3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->Loot:[F

    if-eqz p3, :cond_42

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p3

    iget-object p3, p3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v0, p3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->Loot:F

    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->Loot:[F

    aget v1, v1, p1

    add-float/2addr v0, v1

    iput v0, p3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->Loot:F

    :cond_42
    sget-object p3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {p3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object p3, p3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->RegimentsLimit:[I

    if-eqz p3, :cond_43

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p3

    iget-object p3, p3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v0, p3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RegimentsLimit:I

    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object p0, p0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->RegimentsLimit:[I

    aget p0, p0, p1

    add-int/2addr v0, p0

    iput v0, p3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RegimentsLimit:I

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateRegimentsLimit()V

    :cond_43
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateProvincesIncomeAndExpenses()V

    return-void
.end method
