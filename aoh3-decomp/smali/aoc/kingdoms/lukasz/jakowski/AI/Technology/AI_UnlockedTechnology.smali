.class public Laoc/kingdoms/lukasz/jakowski/AI/Technology/AI_UnlockedTechnology;
.super Ljava/lang/Object;
.source "AI_UnlockedTechnology.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final unlockedTechnology(II)V
    .locals 0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/AI/Advantages/AI_Advantages;->takeAdvantages(I)V

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result p1

    if-lez p1, :cond_0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/AI/Laws/AI_Laws;->adoptNewLaws(I)V

    invoke-static {p0}, Laoc/kingdoms/lukasz/map/army/ArmyManager;->upgradeAllArmies(I)I

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/AI/Technology/AI_SelectTechnology;->selectTechnology(I)V

    :cond_0
    return-void
.end method
