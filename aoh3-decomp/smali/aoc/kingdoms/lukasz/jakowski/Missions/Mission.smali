.class public Laoc/kingdoms/lukasz/jakowski/Missions/Mission;
.super Ljava/lang/Object;
.source "Mission.java"


# instance fields
.field public AI:I

.field public ID:I

.field public ImageID:I

.field public ImageName:Ljava/lang/String;

.field public MissionEvent:Ljava/lang/String;

.field public Name:Ljava/lang/String;

.field public RequiredMission:I

.field public RequiredMission2:I

.field public TreeColumn:I

.field public TreeRow:I

.field public event:Laoc/kingdoms/lukasz/events/Event;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->ImageID:I

    const/4 v0, -0x1

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->RequiredMission:I

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->RequiredMission2:I

    return-void
.end method
