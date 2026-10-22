.class public Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;
.super Ljava/lang/Object;
.source "MapScenarios.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/map/map/MapScenarios;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Details"
.end annotation


# instance fields
.field public Age:I

.field public Author:Ljava/lang/String;

.field public Campaign:Z

.field public CivDefault_Gold:I

.field public CivDefault_GoldRandom:I

.field public CivDefault_Legacy:I

.field public CivDefault_LegacyRandom:I

.field public CivDefault_ManpowerPercentage:I

.field public CivDefault_Technology:I

.field public Civs:I

.field public Day:I

.field public HoursPerTurn:I

.field public Month:I

.field public Name:Ljava/lang/String;

.field public ProvinceDefault_Economy:I

.field public ProvinceDefault_Manpower:I

.field public ProvinceDefault_Population:I

.field public ProvinceDefault_TaxEfficiency:I

.field public Year:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->Campaign:Z

    const/16 v0, 0x64

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->CivDefault_Gold:I

    const/16 v1, 0x32

    iput v1, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->CivDefault_GoldRandom:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->CivDefault_Legacy:I

    iput v1, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->CivDefault_LegacyRandom:I

    const/16 v0, 0x3c

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->CivDefault_ManpowerPercentage:I

    const/4 v0, -0x1

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->CivDefault_Technology:I

    const v0, 0x30d40

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->ProvinceDefault_Population:I

    const/16 v0, 0xa

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->ProvinceDefault_Economy:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->ProvinceDefault_TaxEfficiency:I

    const/4 v0, 0x3

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->ProvinceDefault_Manpower:I

    const/16 v0, 0x18

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->HoursPerTurn:I

    return-void
.end method
