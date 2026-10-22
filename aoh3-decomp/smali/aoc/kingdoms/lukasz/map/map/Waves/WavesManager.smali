.class public Laoc/kingdoms/lukasz/map/map/Waves/WavesManager;
.super Ljava/lang/Object;
.source "WavesManager.java"


# static fields
.field public static wavesLines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/map/Waves/WavesLine;",
            ">;"
        }
    .end annotation
.end field

.field public static wavesLinesSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/map/Waves/WavesManager;->wavesLines:Ljava/util/List;

    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/map/map/Waves/WavesManager;->wavesLinesSize:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final addWavesLine(Laoc/kingdoms/lukasz/map/map/Waves/WavesLine;)V
    .locals 1

    sget-object v0, Laoc/kingdoms/lukasz/map/map/Waves/WavesManager;->wavesLines:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p0, Laoc/kingdoms/lukasz/map/map/Waves/WavesManager;->wavesLines:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    sput p0, Laoc/kingdoms/lukasz/map/map/Waves/WavesManager;->wavesLinesSize:I

    return-void
.end method
