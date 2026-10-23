.class public Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;
.super Ljava/lang/Object;
.source "MapScenarios.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/map/map/MapScenarios;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScenarioCivData"
.end annotation


# instance fields
.field public CCL:I

.field public CPID:I

.field public CivID:I

.field public CivTAG:Ljava/lang/String;

.field public Economy:I

.field public Gold:I

.field public Legacy:I

.field public MAGL:I

.field public MAL:I

.field public Manpower:I

.field public NRL:I

.field public Nukes:I

.field public PCID:I

.field public Population:I

.field public SCL:I

.field public TaxEff:I

.field public TechnologyID:I

.field public v:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->DEFAULT_VALUE:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->Gold:I

    sget v0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->DEFAULT_VALUE:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->Legacy:I

    sget v0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->DEFAULT_VALUE:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->TechnologyID:I

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->Population:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->Economy:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->TaxEff:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->Manpower:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->CCL:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->MAL:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->MAGL:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->SCL:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->NRL:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->Nukes:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->v:I

    return-void
.end method
