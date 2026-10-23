.class public Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;
.super Ljava/lang/Object;
.source "TechnologyTree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/map/technology/TechnologyTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Technology"
.end annotation


# instance fields
.field public AI:I

.field public BattleWidth:I

.field public Discipline:I

.field public GeneralAttack:I

.field public GeneralDefense:I

.field public Gold:I

.field public ID:I

.field public ImageID:I

.field public Legacy:I

.field public MaintainTechnologyName:Z

.field public MaxMorale:I

.field public MaximumLevelOfCapitalCity:I

.field public MaximumLevelOfTheMilitaryAcademy:I

.field public MaximumLevelOfTheMilitaryAcademyForGenerals:I

.field public Name:Ljava/lang/String;

.field public Repeatable:Z

.field public RequiredTech:I

.field public RequiredTech2:I

.field public ResearchCost:I

.field public TreeColumn:I

.field public TreeRow:I

.field public UnitsAttack:I

.field public UnitsDefense:I

.field public UnlocksAccessToTheSea:Z

.field public UnlocksColonization:Z

.field public UnlocksNukes:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->MaintainTechnologyName:Z

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->UnlocksNukes:Z

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->UnlocksAccessToTheSea:Z

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->UnlocksColonization:Z

    iput v0, p0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->BattleWidth:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->UnitsAttack:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->UnitsDefense:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->GeneralAttack:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->GeneralDefense:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->MaxMorale:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->Discipline:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->Legacy:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->Gold:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->MaximumLevelOfCapitalCity:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->MaximumLevelOfTheMilitaryAcademy:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->MaximumLevelOfTheMilitaryAcademyForGenerals:I

    return-void
.end method


# virtual methods
.method public getResearchCost()I
    .locals 2

    iget v0, p0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->ResearchCost:I

    int-to-float v0, v0

    sget v1, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->MapResearchCost:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method
