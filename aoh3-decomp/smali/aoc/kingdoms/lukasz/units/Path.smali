.class public Laoc/kingdoms/lukasz/units/Path;
.super Ljava/lang/Object;
.source "Path.java"


# instance fields
.field public moveToPosX:I

.field public moveToPosY:I

.field public pathPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/jakowski/zOther/XY;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Laoc/kingdoms/lukasz/units/Path;->pathPoints:Ljava/util/List;

    iput p3, p0, Laoc/kingdoms/lukasz/units/Path;->moveToPosX:I

    iput p4, p0, Laoc/kingdoms/lukasz/units/Path;->moveToPosY:I

    new-instance p2, Laoc/kingdoms/lukasz/jakowski/zOther/XY;

    invoke-direct {p2, p3, p4}, Laoc/kingdoms/lukasz/jakowski/zOther/XY;-><init>(II)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public update(I)V
    .locals 0

    return-void
.end method
