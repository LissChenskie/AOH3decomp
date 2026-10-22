.class public Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree$TechLine;
.super Ljava/lang/Object;
.source "InGame_MissionTree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TechLine"
.end annotation


# instance fields
.field public iMissionID:I

.field public lPointsX:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public lPointsY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private nPath:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/math/Vector2;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree;

.field public unlocked:Z


# direct methods
.method public constructor <init>(Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree;IIIIIZ)V
    .locals 4

    iput-object p1, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree$TechLine;->this$0:Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree$TechLine;->unlocked:Z

    new-instance p1, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {p1}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object p1, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree$TechLine;->nPath:Lcom/badlogic/gdx/utils/Array;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree$TechLine;->lPointsX:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree$TechLine;->lPointsY:Ljava/util/List;

    iput p2, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree$TechLine;->iMissionID:I

    iput-boolean p7, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree$TechLine;->unlocked:Z

    iget-object p1, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree$TechLine;->lPointsX:Ljava/util/List;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree$TechLine;->lPointsY:Ljava/util/List;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    if-eq p4, p6, :cond_1

    if-le p4, p6, :cond_0

    const/4 p2, -0x1

    goto :goto_0

    :cond_0
    move p2, p1

    :goto_0
    iget-object p3, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree$TechLine;->lPointsX:Ljava/util/List;

    sget p7, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->iMissionWidth:I

    div-int/lit8 p7, p7, 0x2

    sub-int p7, p5, p7

    add-int/lit8 p7, p7, -0x32

    add-int/lit8 p7, p7, -0x8

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p7

    invoke-interface {p3, p7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p3, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree$TechLine;->lPointsY:Ljava/util/List;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p7

    invoke-interface {p3, p7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p3, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree$TechLine;->lPointsX:Ljava/util/List;

    sget p7, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->iMissionWidth:I

    div-int/lit8 p7, p7, 0x2

    sub-int p7, p5, p7

    add-int/lit8 p7, p7, -0x32

    add-int/lit8 p7, p7, -0x6

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p7

    invoke-interface {p3, p7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p3, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree$TechLine;->lPointsY:Ljava/util/List;

    mul-int/lit8 p7, p2, 0x1

    add-int v0, p4, p7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p3, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree$TechLine;->lPointsX:Ljava/util/List;

    sget v0, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->iMissionWidth:I

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p5, v0

    add-int/lit8 v0, v0, -0x32

    add-int/lit8 v0, v0, -0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p3, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree$TechLine;->lPointsY:Ljava/util/List;

    mul-int/lit8 v0, p2, 0x2

    add-int v1, p4, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p3, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree$TechLine;->lPointsX:Ljava/util/List;

    sget v1, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->iMissionWidth:I

    div-int/lit8 v1, v1, 0x2

    sub-int v1, p5, v1

    add-int/lit8 v1, v1, -0x32

    add-int/lit8 v1, v1, -0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p3, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree$TechLine;->lPointsY:Ljava/util/List;

    mul-int/lit8 v1, p2, 0x4

    add-int v2, p4, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p3, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree$TechLine;->lPointsX:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->iMissionWidth:I

    div-int/lit8 v2, v2, 0x2

    sub-int v2, p5, v2

    add-int/lit8 v2, v2, -0x32

    sub-int/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p3, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree$TechLine;->lPointsY:Ljava/util/List;

    mul-int/lit8 v2, p2, 0x6

    add-int v3, p4, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p3, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree$TechLine;->lPointsX:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->iMissionWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int v3, p5, v3

    add-int/lit8 v3, v3, -0x32

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p3, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree$TechLine;->lPointsY:Ljava/util/List;

    mul-int/lit8 p2, p2, 0x8

    add-int/2addr p4, p2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p3, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree$TechLine;->lPointsX:Ljava/util/List;

    sget p4, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->iMissionWidth:I

    div-int/lit8 p4, p4, 0x2

    sub-int p4, p5, p4

    add-int/lit8 p4, p4, -0x32

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p3, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree$TechLine;->lPointsY:Ljava/util/List;

    sub-int p2, p6, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree$TechLine;->lPointsX:Ljava/util/List;

    sget p3, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->iMissionWidth:I

    div-int/lit8 p3, p3, 0x2

    sub-int p3, p5, p3

    add-int/lit8 p3, p3, -0x32

    add-int/2addr p3, p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree$TechLine;->lPointsY:Ljava/util/List;

    sub-int p3, p6, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree$TechLine;->lPointsX:Ljava/util/List;

    sget p3, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->iMissionWidth:I

    div-int/lit8 p3, p3, 0x2

    sub-int p3, p5, p3

    add-int/lit8 p3, p3, -0x32

    add-int/lit8 p3, p3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree$TechLine;->lPointsY:Ljava/util/List;

    sub-int p3, p6, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree$TechLine;->lPointsX:Ljava/util/List;

    sget p3, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->iMissionWidth:I

    div-int/lit8 p3, p3, 0x2

    sub-int p3, p5, p3

    add-int/lit8 p3, p3, -0x32

    add-int/lit8 p3, p3, 0x4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree$TechLine;->lPointsY:Ljava/util/List;

    sub-int p3, p6, v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree$TechLine;->lPointsX:Ljava/util/List;

    sget p3, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->iMissionWidth:I

    div-int/lit8 p3, p3, 0x2

    sub-int p3, p5, p3

    add-int/lit8 p3, p3, -0x32

    add-int/lit8 p3, p3, 0x6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree$TechLine;->lPointsY:Ljava/util/List;

    sub-int p3, p6, p7

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree$TechLine;->lPointsX:Ljava/util/List;

    sget p3, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->iMissionWidth:I

    div-int/lit8 p3, p3, 0x2

    sub-int p3, p5, p3

    add-int/lit8 p3, p3, -0x32

    add-int/lit8 p3, p3, 0x8

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree$TechLine;->lPointsY:Ljava/util/List;

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object p2, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree$TechLine;->lPointsX:Ljava/util/List;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree$TechLine;->lPointsY:Ljava/util/List;

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree$TechLine;->lPointsX:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, p1

    :goto_1
    if-ltz p2, :cond_2

    iget-object p1, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree$TechLine;->nPath:Lcom/badlogic/gdx/utils/Array;

    new-instance p3, Lcom/badlogic/gdx/math/Vector2;

    const/4 p4, 0x0

    invoke-direct {p3, p4, p4}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    invoke-virtual {p1, p3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method static synthetic access$000(Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree$TechLine;)Lcom/badlogic/gdx/utils/Array;
    .locals 0

    iget-object p0, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree$TechLine;->nPath:Lcom/badlogic/gdx/utils/Array;

    return-object p0
.end method
