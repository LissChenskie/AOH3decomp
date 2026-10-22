.class public Laoc/kingdoms/lukasz/jakowski/AmbienceManager$Ambience;
.super Ljava/lang/Object;
.source "AmbienceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/jakowski/AmbienceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Ambience"
.end annotation


# instance fields
.field public id:I

.field public idSoundPlaying:J

.field public isPlaying:Z

.field public lTime:J

.field public startedPlaying:Z

.field final synthetic this$0:Laoc/kingdoms/lukasz/jakowski/AmbienceManager;

.field public updateTime:Z

.field public updateVolumeUP:Z


# direct methods
.method public constructor <init>(Laoc/kingdoms/lukasz/jakowski/AmbienceManager;I)V
    .locals 3

    iput-object p1, p0, Laoc/kingdoms/lukasz/jakowski/AmbienceManager$Ambience;->this$0:Laoc/kingdoms/lukasz/jakowski/AmbienceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Laoc/kingdoms/lukasz/jakowski/AmbienceManager$Ambience;->idSoundPlaying:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Laoc/kingdoms/lukasz/jakowski/AmbienceManager$Ambience;->startedPlaying:Z

    iput-boolean p1, p0, Laoc/kingdoms/lukasz/jakowski/AmbienceManager$Ambience;->isPlaying:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Laoc/kingdoms/lukasz/jakowski/AmbienceManager$Ambience;->updateVolumeUP:Z

    iput-boolean p1, p0, Laoc/kingdoms/lukasz/jakowski/AmbienceManager$Ambience;->updateTime:Z

    iput-wide v0, p0, Laoc/kingdoms/lukasz/jakowski/AmbienceManager$Ambience;->lTime:J

    iput p2, p0, Laoc/kingdoms/lukasz/jakowski/AmbienceManager$Ambience;->id:I

    return-void
.end method


# virtual methods
.method public final update()V
    .locals 0

    return-void
.end method
