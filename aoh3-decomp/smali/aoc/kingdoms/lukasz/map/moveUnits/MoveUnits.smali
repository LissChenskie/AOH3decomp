.class public Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;
.super Ljava/lang/Object;
.source "MoveUnits.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;,
        Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$LittleAnimation;
    }
.end annotation


# static fields
.field public static final PRECISION:I = 0x10


# instance fields
.field public colorLine:Lcom/badlogic/gdx/graphics/Color;

.field public currentMovementProgressWidth:F

.field public doneMovementProgressWidth:F

.field public extraArmyY:I

.field public fCurrentMovingPercentage:F

.field public fMovingPercentage:F

.field public fSpeed:F

.field private iPrecision:I

.field public iRouteSize:I

.field public iWidth:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public inBattle:Z

.field public inRetreat:Z

.field public isBelowZero:Z

.field public key:Ljava/lang/String;

.field public lCurrentMovingTime:J

.field public lMovingTime:J

.field private lRoute:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public littleAnimationMainLine:Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$LittleAnimation;

.field public littleAnimationMovingArmy:Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$LittleAnimation;

.field public movementProgressOverWidth:F

.field private vPoints:[Lcom/badlogic/gdx/math/Vector2;


# direct methods
.method public constructor <init>(IIILjava/lang/String;II)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iRouteSize:I

    const/4 v1, 0x0

    iput v1, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->doneMovementProgressWidth:F

    iput v1, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->currentMovementProgressWidth:F

    iput v1, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->movementProgressOverWidth:F

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->inBattle:Z

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->inRetreat:Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iWidth:Ljava/util/List;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lMovingTime:J

    iput v1, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fMovingPercentage:F

    iput-wide v2, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lCurrentMovingTime:J

    iput v1, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fCurrentMovingPercentage:F

    iput v1, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fSpeed:F

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->isBelowZero:Z

    iput-object p4, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->key:Ljava/lang/String;

    iput p5, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->extraArmyY:I

    iget-boolean p4, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->inRetreat:Z

    invoke-virtual {p0, p1, p4}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->updateColorLine(IZ)V

    invoke-virtual {p0, p1, p2}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->updateSpeed(II)V

    invoke-virtual {p0, p1, p2, p3, v0}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->buildRoute2(IIIZ)Z

    iget p2, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iRouteSize:I

    const/4 p3, 0x1

    if-le p2, p3, :cond_2

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    move p4, v0

    :goto_0
    iget p5, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iRouteSize:I

    if-ge p4, p5, :cond_0

    iget-object p5, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    invoke-interface {p5, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Integer;

    invoke-interface {p2, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_0
    iget-object p4, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->clear()V

    iget-object p4, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-interface {p4, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    iget p4, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iRouteSize:I

    if-ge v0, p4, :cond_1

    iget-object p4, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Integer;

    invoke-interface {p4, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object p2, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    iput p2, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iRouteSize:I

    invoke-virtual {p0, p3, p1}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->buildMoveUnitsLine_FromToTheSameProvince(ZI)V

    :cond_2
    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;IZZ)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iRouteSize:I

    const/4 v1, 0x0

    iput v1, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->doneMovementProgressWidth:F

    iput v1, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->currentMovementProgressWidth:F

    iput v1, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->movementProgressOverWidth:F

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->inBattle:Z

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->inRetreat:Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iWidth:Ljava/util/List;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lMovingTime:J

    iput v1, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fMovingPercentage:F

    iput-wide v2, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lCurrentMovingTime:J

    iput v1, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fCurrentMovingPercentage:F

    iput v1, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fSpeed:F

    iput v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->extraArmyY:I

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->isBelowZero:Z

    iput-object p4, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->key:Ljava/lang/String;

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getArmyHeight()I

    move-result v0

    mul-int/2addr v0, p5

    mul-int/lit8 p5, p5, 0x2

    add-int/2addr v0, p5

    iput v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->extraArmyY:I

    iput-boolean p6, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->inRetreat:Z

    invoke-virtual {p0, p1, p6}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->updateColorLine(IZ)V

    invoke-virtual {p0, p1, p2}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->updateSpeed(II)V

    invoke-virtual {p0, p1, p2, p3, p7}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->buildRoute2(IIIZ)Z

    iget p3, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iRouteSize:I

    const/4 p5, 0x1

    if-le p3, p5, :cond_0

    invoke-virtual {p0, p5, p1}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->buildMoveUnitsLine(ZI)V

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p1

    invoke-virtual {p1, p4}, Laoc/kingdoms/lukasz/map/province/Province;->getArmyKeyID(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_0

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p3

    invoke-virtual {p3, p1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object p3

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p4

    invoke-virtual {p4, p1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object p4

    invoke-virtual {p4}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->defaultShiftX()I

    move-result p4

    iput p4, p3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iShiftX:I

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p3

    invoke-virtual {p3, p1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object p3

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p2

    invoke-virtual {p2, p1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->defaultShiftY()I

    move-result p1

    iput p1, p3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iShiftY:I

    :cond_0
    return-void
.end method

.method public static canBeUsedInPath(IIZI)Z
    .locals 2

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getWasteland()I

    move-result v0

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    return v1

    :cond_0
    if-nez p2, :cond_1

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->isFriendlyProvince_OrAtWAr(II)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result p0

    invoke-static {p3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result p1

    if-ne p0, p1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public static final isFriendlyProvince(II)Z
    .locals 2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->move:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Move;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Move;->ENABLE_MOVE_UNITS_TO_ANY_PROVINCE:Z

    if-nez v0, :cond_1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    if-eq v0, p0, :cond_1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->haveAlliance(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->areInAllianceSpecial(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    if-eq v0, v1, :cond_1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v0

    if-eq v0, p0, :cond_1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v1

    if-eq v0, v1, :cond_1

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->militaryAccess:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static final isFriendlyProvince_OrAtWAr(II)Z
    .locals 1

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->isFriendlyProvince(II)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result p1

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static reconstructPath(Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-eqz p0, :cond_0

    iget v1, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;->provinceID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;->parent:Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    const/4 p0, 0x0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public final buildLine(I)V
    .locals 8

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-eq p1, v0, :cond_0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p1

    iget-boolean p1, p1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->isPlayerAlly:Z

    if-eqz p1, :cond_9

    :cond_0
    iget p1, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iRouteSize:I

    mul-int/lit8 v0, p1, 0x10

    iput v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iPrecision:I

    new-array v0, v0, [Lcom/badlogic/gdx/math/Vector2;

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    add-int/lit8 p1, p1, 0x2

    new-array p1, p1, [Lcom/badlogic/gdx/math/Vector2;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iRouteSize:I

    const/4 v3, 0x1

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getBelowZero()Z

    move-result v2

    if-eqz v2, :cond_1

    iput-boolean v3, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->isBelowZero:Z

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-boolean v1, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->isBelowZero:Z

    if-eqz v1, :cond_7

    move v1, v0

    :goto_2
    iget v2, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iRouteSize:I

    if-ge v1, v2, :cond_4

    add-int/lit8 v2, v1, 0x1

    new-instance v4, Lcom/badlogic/gdx/math/Vector2;

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getBelowZero()Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    iget v6, v6, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    if-le v6, v7, :cond_3

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v6

    neg-int v6, v6

    goto :goto_3

    :cond_3
    move v6, v0

    :goto_3
    add-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {v4, v5, v1}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    aput-object v4, p1, v2

    move v1, v2

    goto :goto_2

    :cond_4
    new-instance v1, Lcom/badlogic/gdx/math/Vector2;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getBelowZero()Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    if-le v4, v5, :cond_5

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v4

    neg-int v4, v4

    goto :goto_4

    :cond_5
    move v4, v0

    :goto_4
    add-int/2addr v2, v4

    int-to-float v2, v2

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-direct {v1, v2, v4}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    aput-object v1, p1, v0

    iget v1, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iRouteSize:I

    add-int/2addr v1, v3

    new-instance v2, Lcom/badlogic/gdx/math/Vector2;

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    iget v5, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iRouteSize:I

    sub-int/2addr v5, v3

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    iget v6, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iRouteSize:I

    sub-int/2addr v6, v3

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getBelowZero()Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    iget v6, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iRouteSize:I

    sub-int/2addr v6, v3

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    if-le v5, v6, :cond_6

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v5

    neg-int v5, v5

    goto :goto_5

    :cond_6
    move v5, v0

    :goto_5
    add-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    iget v6, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iRouteSize:I

    sub-int/2addr v6, v3

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-direct {v2, v4, v3}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    aput-object v2, p1, v1

    goto/16 :goto_7

    :cond_7
    move v1, v0

    :goto_6
    iget v2, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iRouteSize:I

    if-ge v1, v2, :cond_8

    add-int/lit8 v2, v1, 0x1

    new-instance v4, Lcom/badlogic/gdx/math/Vector2;

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    int-to-float v5, v5

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {v4, v5, v1}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    aput-object v4, p1, v2

    move v1, v2

    goto :goto_6

    :cond_8
    new-instance v1, Lcom/badlogic/gdx/math/Vector2;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    int-to-float v2, v2

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-direct {v1, v2, v4}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    aput-object v1, p1, v0

    iget v1, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iRouteSize:I

    add-int/2addr v1, v3

    new-instance v2, Lcom/badlogic/gdx/math/Vector2;

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    iget v5, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iRouteSize:I

    sub-int/2addr v5, v3

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    int-to-float v4, v4

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    iget v6, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iRouteSize:I

    sub-int/2addr v6, v3

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-direct {v2, v4, v3}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    aput-object v2, p1, v1

    :goto_7
    new-instance v1, Lcom/badlogic/gdx/math/CatmullRomSpline;

    invoke-direct {v1, p1, v0}, Lcom/badlogic/gdx/math/CatmullRomSpline;-><init>([Lcom/badlogic/gdx/math/Vector;Z)V

    :goto_8
    iget p1, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iPrecision:I

    if-ge v0, p1, :cond_9

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    new-instance v2, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v2}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    aput-object v2, p1, v0

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object p1, p1, v0

    int-to-float v2, v0

    iget v3, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iPrecision:I

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v3, v4

    div-float/2addr v2, v3

    invoke-virtual {v1, p1, v2}, Lcom/badlogic/gdx/math/CatmullRomSpline;->valueAt(Lcom/badlogic/gdx/math/Vector;F)Lcom/badlogic/gdx/math/Vector;

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_9
    return-void
.end method

.method public final buildMoveUnitsLine(ZI)V
    .locals 2

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iWidth:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->isBelowZero:Z

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->buildWidth()V

    if-eqz p1, :cond_0

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lMovingTime:J

    const p1, 0x3c23d70a    # 0.01f

    iput p1, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fMovingPercentage:F

    new-instance p1, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$1;

    invoke-direct {p1, p0}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$1;-><init>(Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;)V

    iput-object p1, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->littleAnimationMainLine:Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$LittleAnimation;

    :cond_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->updateLittleAnimationMovingArmy()V

    invoke-virtual {p0, p2}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->buildLine(I)V

    return-void
.end method

.method public final buildMoveUnitsLine_FromToTheSameProvince(ZI)V
    .locals 2

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iWidth:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->isBelowZero:Z

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->buildWidth()V

    if-eqz p1, :cond_0

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lMovingTime:J

    const p1, 0x3c23d70a    # 0.01f

    iput p1, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fMovingPercentage:F

    new-instance p1, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$2;

    invoke-direct {p1, p0}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$2;-><init>(Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;)V

    iput-object p1, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->littleAnimationMainLine:Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$LittleAnimation;

    :cond_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->updateLittleAnimationMovingArmy()V

    invoke-virtual {p0, p2}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->buildLine(I)V

    return-void
.end method

.method protected buildPath(ILjava/util/List;Ljava/util/List;Ljava/util/List;IIZZ)Z
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;IIZZ)Z"
        }
    .end annotation

    move-object v9, p0

    move/from16 v1, p1

    move-object/from16 v10, p2

    move-object/from16 v0, p3

    move-object/from16 v2, p4

    move/from16 v5, p5

    move/from16 v6, p6

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v11, 0x0

    const/4 v7, 0x1

    if-eqz p7, :cond_6

    move v8, v11

    :goto_0
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v12

    if-ge v8, v12, :cond_d

    move v12, v11

    :goto_1
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v13

    if-ge v12, v13, :cond_2

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13, v12}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v13

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v13

    invoke-virtual {p0, v13}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getWas(I)Z

    move-result v13

    if-nez v13, :cond_1

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13, v12}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v13

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v13

    iget-boolean v14, v9, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->inRetreat:Z

    invoke-static {v1, v13, v14, v5}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->canBeUsedInPath(IIZI)Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13, v12}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v13

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v13

    if-ne v13, v6, :cond_0

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/util/List;

    move-object v0, p0

    move/from16 v1, p5

    move/from16 v2, p6

    move/from16 v4, p6

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->setPath(IILjava/util/List;II)V

    invoke-virtual {p0, v10}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->clearWas(Ljava/util/List;)V

    return v7

    :cond_0
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13, v12}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v13

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Ljava/util/ArrayList;

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Collection;

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-virtual {v14, v12}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v14

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13, v12}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v13

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v13

    invoke-virtual {p0, v13, v7}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->setWas(IZ)V

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13, v12}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v13

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    :cond_2
    if-nez p8, :cond_5

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v12

    if-nez v12, :cond_5

    move v12, v11

    :goto_2
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvincesSize()I

    move-result v13

    if-ge v12, v13, :cond_5

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13, v12}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvinces(I)I

    move-result v13

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v13

    invoke-virtual {p0, v13}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getWas(I)Z

    move-result v13

    if-nez v13, :cond_4

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13, v12}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvinces(I)I

    move-result v13

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v13

    if-ne v13, v6, :cond_3

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/util/List;

    move-object v0, p0

    move/from16 v1, p5

    move/from16 v2, p6

    move/from16 v4, p6

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->setPath(IILjava/util/List;II)V

    invoke-virtual {p0, v10}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->clearWas(Ljava/util/List;)V

    return v7

    :cond_3
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13, v12}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvinces(I)I

    move-result v13

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Ljava/util/ArrayList;

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Collection;

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-virtual {v14, v12}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvinces(I)I

    move-result v14

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13, v12}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvinces(I)I

    move-result v13

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v13

    invoke-virtual {p0, v13, v7}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->setWas(IZ)V

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13, v12}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvinces(I)I

    move-result v13

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    :cond_6
    move v8, v11

    :goto_3
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v12

    if-ge v8, v12, :cond_d

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v12

    sub-int/2addr v12, v7

    :goto_4
    if-ltz v12, :cond_9

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13, v12}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v13

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v13

    invoke-virtual {p0, v13}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getWas(I)Z

    move-result v13

    if-nez v13, :cond_8

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13, v12}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v13

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v13

    iget-boolean v14, v9, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->inRetreat:Z

    invoke-static {v1, v13, v14, v5}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->canBeUsedInPath(IIZI)Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13, v12}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v13

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v13

    if-ne v13, v6, :cond_7

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/util/List;

    move-object v0, p0

    move/from16 v1, p5

    move/from16 v2, p6

    move/from16 v4, p6

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->setPath(IILjava/util/List;II)V

    invoke-virtual {p0, v10}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->clearWas(Ljava/util/List;)V

    return v7

    :cond_7
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13, v12}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v13

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Ljava/util/ArrayList;

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Collection;

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-virtual {v14, v12}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v14

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13, v12}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v13

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v13

    invoke-virtual {p0, v13, v7}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->setWas(IZ)V

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13, v12}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v13

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v12, v12, -0x1

    goto/16 :goto_4

    :cond_9
    if-nez p8, :cond_c

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v12

    if-nez v12, :cond_c

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvincesSize()I

    move-result v12

    sub-int/2addr v12, v7

    :goto_5
    if-ltz v12, :cond_c

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13, v12}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvinces(I)I

    move-result v13

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v13

    invoke-virtual {p0, v13}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getWas(I)Z

    move-result v13

    if-nez v13, :cond_b

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13, v12}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvinces(I)I

    move-result v13

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v13

    if-ne v13, v6, :cond_a

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/util/List;

    move-object v0, p0

    move/from16 v1, p5

    move/from16 v2, p6

    move/from16 v4, p6

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->setPath(IILjava/util/List;II)V

    invoke-virtual {p0, v10}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->clearWas(Ljava/util/List;)V

    return v7

    :cond_a
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13, v12}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvinces(I)I

    move-result v13

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Ljava/util/ArrayList;

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Collection;

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-virtual {v14, v12}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvinces(I)I

    move-result v14

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13, v12}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvinces(I)I

    move-result v13

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v13

    invoke-virtual {p0, v13, v7}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->setWas(IZ)V

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13, v12}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvinces(I)I

    move-result v13

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    add-int/lit8 v12, v12, -0x1

    goto/16 :goto_5

    :cond_c
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3

    :cond_d
    if-nez p7, :cond_e

    goto :goto_6

    :cond_e
    move v7, v11

    :goto_6
    move-object v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v8, p8

    :try_start_0
    invoke-virtual/range {v0 .. v8}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->buildPath(ILjava/util/List;Ljava/util/List;Ljava/util/List;IIZZ)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    invoke-virtual {p0, v10}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->clearWas(Ljava/util/List;)V

    return v11
.end method

.method protected buildRoute(IIIZ)Z
    .locals 11

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    if-ltz p2, :cond_7

    if-ltz p3, :cond_7

    invoke-static {p3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getWasteland()I

    move-result v1

    if-ltz v1, :cond_0

    goto/16 :goto_4

    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v0

    :goto_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1, v0}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->setWas(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, p2, v1}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->setWas(IZ)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    move v3, v0

    :goto_1
    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v7

    if-ge v3, v7, :cond_3

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v7

    iget-boolean v8, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->inRetreat:Z

    invoke-static {p1, v7, v8, p2}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->canBeUsedInPath(IIZI)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v7

    invoke-virtual {p0, v7, v1}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->setWas(IZ)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    if-nez p4, :cond_4

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v3

    if-nez v3, :cond_4

    move v3, v0

    :goto_2
    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvincesSize()I

    move-result v7

    if-ge v3, v7, :cond_4

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvinces(I)I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvinces(I)I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvinces(I)I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvinces(I)I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v7

    invoke-virtual {p0, v7, v1}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->setWas(IZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_6

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    if-ne v2, p3, :cond_5

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v8, p1

    check-cast v8, Ljava/util/List;

    move-object v5, p0

    move v6, p2

    move v7, p3

    move v9, p3

    move v10, p2

    invoke-virtual/range {v5 .. v10}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->setPath(IILjava/util/List;II)V

    invoke-virtual {p0, v4}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->clearWas(Ljava/util/List;)V

    return v1

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    const/4 v9, 0x1

    move-object v2, p0

    move v3, p1

    move v7, p2

    move v8, p3

    move v10, p4

    invoke-virtual/range {v2 .. v10}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->buildPath(ILjava/util/List;Ljava/util/List;Ljava/util/List;IIZZ)Z

    return v1

    :cond_7
    :goto_4
    return v0
.end method

.method protected buildRoute2(IIIZ)Z
    .locals 17

    move-object/from16 v6, p0

    move/from16 v7, p2

    move/from16 v8, p3

    iget-object v0, v6, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-ltz v7, :cond_e

    if-ltz v8, :cond_e

    invoke-static/range {p3 .. p3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getWasteland()I

    move-result v0

    if-ltz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    new-instance v10, Ljava/util/PriorityQueue;

    new-instance v0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Ljava/util/Comparator;->comparingDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/Comparator;

    move-result-object v0

    invoke-direct {v10, v0}, Ljava/util/PriorityQueue;-><init>(Ljava/util/Comparator;)V

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    new-instance v12, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v12

    move-object/from16 v1, p0

    move/from16 v2, p2

    invoke-direct/range {v0 .. v5}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;-><init>(Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;ILaoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;FF)V

    invoke-virtual {v10, v12}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v11, v0, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    invoke-virtual {v10}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {v10}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;

    iget v0, v12, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;->provinceID:I

    if-ne v0, v8, :cond_1

    invoke-static {v12}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->reconstructPath(Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;)Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v4, p3

    move/from16 v5, p2

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->setPath(IILjava/util/List;II)V

    const/4 v0, 0x1

    return v0

    :cond_1
    iget v0, v12, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;->provinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/province/Province;->lNeighboringProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    iget-boolean v1, v6, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->inRetreat:Z

    move/from16 v15, p1

    invoke-static {v15, v0, v1, v7}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->canBeUsedInPath(IIZI)Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, v12, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;->gCost:F

    iget v1, v12, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;->provinceID:I

    invoke-static {v1, v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getManhattanDistance(II)F

    move-result v1

    add-float v4, v0, v1

    invoke-static {v14, v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getManhattanDistance(II)F

    move-result v5

    add-float v16, v4, v5

    new-instance v3, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;

    move-object v0, v3

    move-object/from16 v1, p0

    move v2, v14

    move-object v9, v3

    move-object v3, v12

    invoke-direct/range {v0 .. v5}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;-><init>(Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;ILaoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;FF)V

    invoke-virtual {v10, v9}, Ljava/util/PriorityQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v10}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;->getFCost()F

    move-result v0

    cmpg-float v0, v16, v0

    if-gez v0, :cond_4

    :cond_2
    invoke-virtual {v10, v9}, Ljava/util/PriorityQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v10, v9}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {v10, v9}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v11, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v11, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_6
    move/from16 v15, p1

    goto :goto_1

    :cond_7
    move/from16 v15, p1

    if-nez p4, :cond_c

    iget v0, v12, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;->provinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/province/Province;->lNeighboringSeaProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    iget v0, v12, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;->gCost:F

    iget v1, v12, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;->provinceID:I

    invoke-static {v1, v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getDistanceFromProvinceToProvince(II)F

    move-result v1

    add-float v4, v0, v1

    invoke-static {v13, v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getDistanceFromProvinceToProvince(II)F

    move-result v5

    add-float v14, v4, v5

    new-instance v3, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;

    move-object v0, v3

    move-object/from16 v1, p0

    move v2, v13

    move-object v6, v3

    move-object v3, v12

    invoke-direct/range {v0 .. v5}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;-><init>(Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;ILaoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;FF)V

    invoke-virtual {v10, v6}, Ljava/util/PriorityQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {v10, v6}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    invoke-virtual {v10}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;->getFCost()F

    move-result v0

    cmpg-float v0, v14, v0

    if-gez v0, :cond_a

    invoke-virtual {v10, v6}, Ljava/util/PriorityQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {v10, v6}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    :cond_9
    invoke-virtual {v10, v6}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    :cond_a
    :goto_3
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v11, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    move-object/from16 v6, p0

    goto :goto_2

    :cond_c
    move-object/from16 v6, p0

    goto/16 :goto_0

    :cond_d
    const/4 v0, 0x0

    return v0

    :cond_e
    :goto_4
    const/4 v0, 0x0

    return v0
.end method

.method public final buildWidth()V
    .locals 8

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget v1, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iRouteSize:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    add-int/lit8 v0, v0, 0x1

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iWidth:Ljava/util/List;

    iget v5, v3, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    iget v6, v1, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    sub-int/2addr v5, v6

    iget v6, v3, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    iget v7, v1, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    sub-int/2addr v6, v7

    mul-int/2addr v5, v6

    iget v6, v1, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    iget v7, v3, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    sub-int/2addr v6, v7

    iget v1, v1, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    iget v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    sub-int/2addr v1, v3

    mul-int/2addr v6, v1

    add-int/2addr v5, v6

    int-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v1, v5

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    div-int/2addr v1, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method protected final clearWas(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2, v1}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->setWas(IZ)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 11

    :try_start_0
    new-instance p1, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {p1}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->isBelowZero:Z

    const/high16 v1, 0x3f400000    # 0.75f

    const/high16 v2, 0x3e800000    # 0.25f

    const/high16 v3, 0x40400000    # 3.0f

    const v4, 0x3ecccccd    # 0.4f

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getDrawProvince()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v6

    :goto_0
    iget v7, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iPrecision:I

    add-int/lit8 v7, v7, -0x2

    int-to-float v7, v7

    iget v8, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fMovingPercentage:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    if-ge v0, v7, :cond_1

    new-instance v7, Lcom/badlogic/gdx/math/Vector2;

    iget-object v8, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v8, v8, v0

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v9, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getTranslateProvincePosX()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    mul-float/2addr v8, p2

    iget-object v9, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v9, v9, v0

    iget v9, v9, Lcom/badlogic/gdx/math/Vector2;->y:F

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v9, v10

    mul-float/2addr v9, p2

    invoke-direct {v7, v8, v9}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    invoke-virtual {p1, v7}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v6

    :goto_1
    iget v7, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iPrecision:I

    int-to-float v7, v7

    iget v8, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fMovingPercentage:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    if-ge v0, v7, :cond_1

    new-instance v7, Lcom/badlogic/gdx/math/Vector2;

    iget-object v8, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v8, v8, v0

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->x:F

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    mul-float/2addr v8, p2

    iget-object v9, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v9, v9, v0

    iget v9, v9, Lcom/badlogic/gdx/math/Vector2;->y:F

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v9, v10

    mul-float/2addr v9, p2

    invoke-direct {v7, v8, v9}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    invoke-virtual {p1, v7}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    new-instance v7, Lcom/badlogic/gdx/graphics/Color;

    iget-object v8, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->colorLine:Lcom/badlogic/gdx/graphics/Color;

    iget v8, v8, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v9, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->colorLine:Lcom/badlogic/gdx/graphics/Color;

    iget v9, v9, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v10, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->colorLine:Lcom/badlogic/gdx/graphics/Color;

    iget v10, v10, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v7, v8, v9, v10, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v0, v7}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->setColor(Lcom/badlogic/gdx/graphics/Color;)F

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    iget v7, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fMovingPercentage:F

    mul-float/2addr v7, v1

    add-float/2addr v7, v2

    mul-float/2addr v7, v3

    sget-object v8, Lspace/earlygrey/shapedrawer/JoinType;->SMOOTH:Lspace/earlygrey/shapedrawer/JoinType;

    invoke-virtual {v0, p1, v7, v8, v5}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->path(Ljava/lang/Iterable;FLspace/earlygrey/shapedrawer/JoinType;Z)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Array;->clear()V

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getDrawProvince()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v6

    :goto_2
    iget v7, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iPrecision:I

    add-int/lit8 v7, v7, -0x2

    int-to-float v7, v7

    iget v8, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fMovingPercentage:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    if-ge v0, v7, :cond_3

    new-instance v7, Lcom/badlogic/gdx/math/Vector2;

    iget-object v8, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v8, v8, v0

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v9, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getTranslateProvincePosX()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    mul-float/2addr v8, p2

    iget-object v9, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v9, v9, v0

    iget v9, v9, Lcom/badlogic/gdx/math/Vector2;->y:F

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v9, v10

    mul-float/2addr v9, p2

    invoke-direct {v7, v8, v9}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    invoke-virtual {p1, v7}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    iget v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iPrecision:I

    int-to-float v0, v0

    iget v7, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fMovingPercentage:F

    mul-float/2addr v0, v7

    float-to-int v0, v0

    if-ge v6, v0, :cond_3

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    iget-object v7, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v7, v7, v6

    iget v7, v7, Lcom/badlogic/gdx/math/Vector2;->x:F

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    mul-float/2addr v7, p2

    iget-object v8, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v8, v8, v6

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->y:F

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    mul-float/2addr v8, p2

    invoke-direct {v0, v7, v8}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_3
    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->colorLine:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v7, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->colorLine:Lcom/badlogic/gdx/graphics/Color;

    iget v7, v7, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v8, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->colorLine:Lcom/badlogic/gdx/graphics/Color;

    iget v8, v8, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v0, v6, v7, v8, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p2, v0}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->setColor(Lcom/badlogic/gdx/graphics/Color;)F

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    iget v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fMovingPercentage:F

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    mul-float/2addr v0, v3

    sget-object v1, Lspace/earlygrey/shapedrawer/JoinType;->SMOOTH:Lspace/earlygrey/shapedrawer/JoinType;

    invoke-virtual {p2, p1, v0, v1, v5}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->path(Ljava/lang/Iterable;FLspace/earlygrey/shapedrawer/JoinType;Z)V

    goto/16 :goto_6

    :cond_4
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getDrawProvince()Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v6

    :goto_4
    iget v7, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iPrecision:I

    add-int/lit8 v7, v7, -0x2

    int-to-float v7, v7

    iget v8, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fMovingPercentage:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    if-ge v0, v7, :cond_6

    new-instance v7, Lcom/badlogic/gdx/math/Vector2;

    iget-object v8, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v8, v8, v0

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v9, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getTranslateProvincePosX()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    mul-float/2addr v8, p2

    iget-object v9, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v9, v9, v0

    iget v9, v9, Lcom/badlogic/gdx/math/Vector2;->y:F

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v9, v10

    mul-float/2addr v9, p2

    invoke-direct {v7, v8, v9}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    invoke-virtual {p1, v7}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    :goto_5
    iget v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iPrecision:I

    int-to-float v0, v0

    iget v7, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fMovingPercentage:F

    mul-float/2addr v0, v7

    float-to-int v0, v0

    if-ge v6, v0, :cond_6

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    iget-object v7, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v7, v7, v6

    iget v7, v7, Lcom/badlogic/gdx/math/Vector2;->x:F

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    mul-float/2addr v7, p2

    iget-object v8, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v8, v8, v6

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->y:F

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    mul-float/2addr v8, p2

    invoke-direct {v0, v7, v8}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_6
    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->colorLine:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v7, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->colorLine:Lcom/badlogic/gdx/graphics/Color;

    iget v7, v7, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v8, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->colorLine:Lcom/badlogic/gdx/graphics/Color;

    iget v8, v8, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v0, v6, v7, v8, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p2, v0}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->setColor(Lcom/badlogic/gdx/graphics/Color;)F

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    iget v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fMovingPercentage:F

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    mul-float/2addr v0, v3

    sget-object v1, Lspace/earlygrey/shapedrawer/JoinType;->SMOOTH:Lspace/earlygrey/shapedrawer/JoinType;

    invoke-virtual {p2, p1, v0, v1, v5}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->path(Ljava/lang/Iterable;FLspace/earlygrey/shapedrawer/JoinType;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_6
    return-void
.end method

.method public draw_Ally(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 11

    :try_start_0
    new-instance p1, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {p1}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->isBelowZero:Z

    const/high16 v1, 0x3f400000    # 0.75f

    const/high16 v2, 0x3e800000    # 0.25f

    const/high16 v3, 0x40000000    # 2.0f

    const v4, 0x3ecccccd    # 0.4f

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getDrawProvince()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v6

    :goto_0
    iget v7, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iPrecision:I

    add-int/lit8 v7, v7, -0x2

    int-to-float v7, v7

    iget v8, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fMovingPercentage:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    if-ge v0, v7, :cond_1

    new-instance v7, Lcom/badlogic/gdx/math/Vector2;

    iget-object v8, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v8, v8, v0

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v9, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getTranslateProvincePosX()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    mul-float/2addr v8, p2

    iget-object v9, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v9, v9, v0

    iget v9, v9, Lcom/badlogic/gdx/math/Vector2;->y:F

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v9, v10

    mul-float/2addr v9, p2

    invoke-direct {v7, v8, v9}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    invoke-virtual {p1, v7}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v6

    :goto_1
    iget v7, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iPrecision:I

    int-to-float v7, v7

    iget v8, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fMovingPercentage:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    if-ge v0, v7, :cond_1

    new-instance v7, Lcom/badlogic/gdx/math/Vector2;

    iget-object v8, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v8, v8, v0

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->x:F

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    mul-float/2addr v8, p2

    iget-object v9, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v9, v9, v0

    iget v9, v9, Lcom/badlogic/gdx/math/Vector2;->y:F

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v9, v10

    mul-float/2addr v9, p2

    invoke-direct {v7, v8, v9}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    invoke-virtual {p1, v7}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    new-instance v7, Lcom/badlogic/gdx/graphics/Color;

    iget-object v8, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->colorLine:Lcom/badlogic/gdx/graphics/Color;

    iget v8, v8, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v9, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->colorLine:Lcom/badlogic/gdx/graphics/Color;

    iget v9, v9, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v10, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->colorLine:Lcom/badlogic/gdx/graphics/Color;

    iget v10, v10, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v7, v8, v9, v10, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v0, v7}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->setColor(Lcom/badlogic/gdx/graphics/Color;)F

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    iget v7, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fMovingPercentage:F

    mul-float/2addr v7, v1

    add-float/2addr v7, v2

    mul-float/2addr v7, v3

    sget-object v8, Lspace/earlygrey/shapedrawer/JoinType;->SMOOTH:Lspace/earlygrey/shapedrawer/JoinType;

    invoke-virtual {v0, p1, v7, v8, v5}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->path(Ljava/lang/Iterable;FLspace/earlygrey/shapedrawer/JoinType;Z)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Array;->clear()V

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getDrawProvince()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v6

    :goto_2
    iget v7, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iPrecision:I

    add-int/lit8 v7, v7, -0x2

    int-to-float v7, v7

    iget v8, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fMovingPercentage:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    if-ge v0, v7, :cond_3

    new-instance v7, Lcom/badlogic/gdx/math/Vector2;

    iget-object v8, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v8, v8, v0

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v9, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getTranslateProvincePosX()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    mul-float/2addr v8, p2

    iget-object v9, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v9, v9, v0

    iget v9, v9, Lcom/badlogic/gdx/math/Vector2;->y:F

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v9, v10

    mul-float/2addr v9, p2

    invoke-direct {v7, v8, v9}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    invoke-virtual {p1, v7}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    iget v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iPrecision:I

    int-to-float v0, v0

    iget v7, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fMovingPercentage:F

    mul-float/2addr v0, v7

    float-to-int v0, v0

    if-ge v6, v0, :cond_3

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    iget-object v7, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v7, v7, v6

    iget v7, v7, Lcom/badlogic/gdx/math/Vector2;->x:F

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    mul-float/2addr v7, p2

    iget-object v8, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v8, v8, v6

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->y:F

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    mul-float/2addr v8, p2

    invoke-direct {v0, v7, v8}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_3
    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->colorLine:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v7, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->colorLine:Lcom/badlogic/gdx/graphics/Color;

    iget v7, v7, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v8, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->colorLine:Lcom/badlogic/gdx/graphics/Color;

    iget v8, v8, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v0, v6, v7, v8, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p2, v0}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->setColor(Lcom/badlogic/gdx/graphics/Color;)F

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    iget v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fMovingPercentage:F

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    mul-float/2addr v0, v3

    sget-object v1, Lspace/earlygrey/shapedrawer/JoinType;->SMOOTH:Lspace/earlygrey/shapedrawer/JoinType;

    invoke-virtual {p2, p1, v0, v1, v5}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->path(Ljava/lang/Iterable;FLspace/earlygrey/shapedrawer/JoinType;Z)V

    goto/16 :goto_6

    :cond_4
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getDrawProvince()Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v6

    :goto_4
    iget v7, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iPrecision:I

    add-int/lit8 v7, v7, -0x2

    int-to-float v7, v7

    iget v8, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fMovingPercentage:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    if-ge v0, v7, :cond_6

    new-instance v7, Lcom/badlogic/gdx/math/Vector2;

    iget-object v8, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v8, v8, v0

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v9, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getTranslateProvincePosX()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    mul-float/2addr v8, p2

    iget-object v9, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v9, v9, v0

    iget v9, v9, Lcom/badlogic/gdx/math/Vector2;->y:F

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v9, v10

    mul-float/2addr v9, p2

    invoke-direct {v7, v8, v9}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    invoke-virtual {p1, v7}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    :goto_5
    iget v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iPrecision:I

    int-to-float v0, v0

    iget v7, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fMovingPercentage:F

    mul-float/2addr v0, v7

    float-to-int v0, v0

    if-ge v6, v0, :cond_6

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    iget-object v7, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v7, v7, v6

    iget v7, v7, Lcom/badlogic/gdx/math/Vector2;->x:F

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    mul-float/2addr v7, p2

    iget-object v8, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->vPoints:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v8, v8, v6

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->y:F

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    mul-float/2addr v8, p2

    invoke-direct {v0, v7, v8}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_6
    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->colorLine:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v7, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->colorLine:Lcom/badlogic/gdx/graphics/Color;

    iget v7, v7, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v8, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->colorLine:Lcom/badlogic/gdx/graphics/Color;

    iget v8, v8, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v0, v6, v7, v8, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p2, v0}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->setColor(Lcom/badlogic/gdx/graphics/Color;)F

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    iget v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fMovingPercentage:F

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    mul-float/2addr v0, v3

    sget-object v1, Lspace/earlygrey/shapedrawer/JoinType;->SMOOTH:Lspace/earlygrey/shapedrawer/JoinType;

    invoke-virtual {p2, p1, v0, v1, v5}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->path(Ljava/lang/Iterable;FLspace/earlygrey/shapedrawer/JoinType;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_6
    return-void
.end method

.method public getFromProvinceID()I
    .locals 2

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final getProgressPerc()F
    .locals 3

    iget v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->currentMovementProgressWidth:F

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iWidth:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getToProvinceID()I
    .locals 2

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getToProvinceLastID()I
    .locals 2

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    iget v1, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iRouteSize:I

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getWas(I)Z
    .locals 0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p1

    iget-boolean p1, p1, Laoc/kingdoms/lukasz/map/province/Province;->was:Z

    return p1
.end method

.method public getWidthTotal()I
    .locals 3

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iWidth:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-ltz v0, :cond_0

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iWidth:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public haveSeaProvince()Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iRouteSize:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method protected final setPath(IILjava/util/List;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;II)V"
        }
    .end annotation

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_0

    iget-object p2, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Integer;

    invoke-interface {p2, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eq p4, p1, :cond_1

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object p1, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iRouteSize:I

    return-void
.end method

.method public setWas(IZ)V
    .locals 0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p1

    iput-boolean p2, p1, Laoc/kingdoms/lukasz/map/province/Province;->was:Z

    return-void
.end method

.method public update()V
    .locals 9

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->littleAnimationMainLine:Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$LittleAnimation;

    invoke-interface {v0}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$LittleAnimation;->update()V

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->littleAnimationMovingArmy:Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$LittleAnimation;

    invoke-interface {v0}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$LittleAnimation;->update()V

    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->key:Ljava/lang/String;

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmyKeyID(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getBelowZero()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getBelowZero()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getBelowZero()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getBelowZero()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget v5, v3, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    iget v6, v2, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->doneMovementProgressWidth:F

    iget v7, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->currentMovementProgressWidth:F

    sub-float/2addr v7, v6

    iget v8, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fCurrentMovingPercentage:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    mul-float/2addr v5, v6

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iWidth:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iShiftX_Scaled:I

    goto/16 :goto_1

    :cond_3
    :goto_0
    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getBelowZero()Z

    move-result v4

    if-eqz v4, :cond_5

    iget v4, v3, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    if-le v4, v5, :cond_4

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget v5, v3, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, v2, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->doneMovementProgressWidth:F

    iget v7, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->currentMovementProgressWidth:F

    sub-float/2addr v7, v6

    iget v8, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fCurrentMovingPercentage:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    mul-float/2addr v5, v6

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iWidth:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iShiftX_Scaled:I

    goto/16 :goto_1

    :cond_4
    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget v5, v3, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    iget v6, v2, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->doneMovementProgressWidth:F

    iget v7, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->currentMovementProgressWidth:F

    sub-float/2addr v7, v6

    iget v8, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fCurrentMovingPercentage:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    mul-float/2addr v5, v6

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iWidth:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iShiftX_Scaled:I

    goto :goto_1

    :cond_5
    iget v4, v2, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    if-le v4, v5, :cond_6

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget v5, v3, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, v2, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->doneMovementProgressWidth:F

    iget v7, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->currentMovementProgressWidth:F

    sub-float/2addr v7, v6

    iget v8, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fCurrentMovingPercentage:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    mul-float/2addr v5, v6

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iWidth:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iShiftX_Scaled:I

    goto :goto_1

    :cond_6
    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget v5, v3, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    iget v6, v2, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->doneMovementProgressWidth:F

    iget v7, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->currentMovementProgressWidth:F

    sub-float/2addr v7, v6

    iget v8, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fCurrentMovingPercentage:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    mul-float/2addr v5, v6

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iWidth:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iShiftX_Scaled:I

    :goto_1
    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v0

    iget v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    iget v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    sub-int/2addr v3, v2

    int-to-float v2, v3

    iget v3, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->doneMovementProgressWidth:F

    iget v4, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->currentMovementProgressWidth:F

    sub-float/2addr v4, v3

    iget v5, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fCurrentMovingPercentage:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    mul-float/2addr v2, v3

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iWidth:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v2, v1

    float-to-int v1, v2

    iget v2, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->extraArmyY:I

    int-to-float v2, v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iShiftY_Scaled:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public updateColorLine(IZ)V
    .locals 3

    if-eqz p2, :cond_0

    sget-object p1, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_NEGATIVE:Lcom/badlogic/gdx/graphics/Color;

    iput-object p1, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->colorLine:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_0

    :cond_0
    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget p2, p2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne p1, p2, :cond_1

    sget-object p1, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    iput-object p1, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->colorLine:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_0

    :cond_1
    sget-object p2, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getColor(F)Lcom/badlogic/gdx/graphics/Color;

    move-result-object p1

    const/16 v0, 0x64

    const v1, 0x3ecccccd    # 0.4f

    const/16 v2, 0x3c

    invoke-static {p2, p1, v2, v0, v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->getColorStep(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;IIF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object p1

    iput-object p1, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->colorLine:Lcom/badlogic/gdx/graphics/Color;

    :goto_0
    return-void
.end method

.method public updateLittleAnimationMovingArmy()V
    .locals 2

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lCurrentMovingTime:J

    const v0, 0x3c23d70a    # 0.01f

    iput v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fCurrentMovingPercentage:F

    new-instance v0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$3;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$3;-><init>(Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->littleAnimationMovingArmy:Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$LittleAnimation;

    return-void
.end method

.method public updateSpeed(II)V
    .locals 2

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmyKeyID(Ljava/lang/String;)I

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->army:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;->MIN_ARMY_MOVEMENT_SPEED:F

    iput v1, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fSpeed:F

    const/high16 v1, 0x3f800000    # 1.0f

    if-ltz v0, :cond_1

    :try_start_0
    sget-object p1, Laoc/kingdoms/lukasz/jakowski/GameValues;->army:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;

    iget p1, p1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;->MIN_ARMY_MOVEMENT_SPEED:F

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p2

    invoke-virtual {p2, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object p2

    invoke-virtual {p2}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->getArmyMovementSpeed()F

    move-result p2

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->inRetreat:Z

    if-eqz v0, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->army:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;->RETREATING_ARMY_MOVEMENT_SPEED:F

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-float/2addr p2, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fSpeed:F

    goto :goto_3

    :cond_1
    iget-object p2, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->key:Ljava/lang/String;

    invoke-static {p1, p2}, Laoc/kingdoms/lukasz/jakowski/Game;->findArmy_FullCheck(ILjava/lang/String;)Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;

    move-result-object p1

    if-eqz p1, :cond_3

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/GameValues;->army:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;

    iget p2, p2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;->MIN_ARMY_MOVEMENT_SPEED:F

    iget v0, p1, Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;->iProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget p1, p1, Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;->iID:I

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->getArmyMovementSpeed()F

    move-result p1

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->inRetreat:Z

    if-eqz v0, :cond_2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->army:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;->RETREATING_ARMY_MOVEMENT_SPEED:F

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    mul-float/2addr p1, v0

    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fSpeed:F

    goto :goto_3

    :cond_3
    iget p1, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fSpeed:F

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/GameValues;->army:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;

    iget p2, p2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;->MIN_ARMY_MOVEMENT_SPEED:F

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_6

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/GameValues;->army:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;

    iget p1, p1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;->MIN_ARMY_MOVEMENT_SPEED:F

    iget-boolean p2, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->inRetreat:Z

    if-eqz p2, :cond_4

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/GameValues;->army:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;

    iget p2, p2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;->RETREATING_ARMY_MOVEMENT_SPEED:F

    goto :goto_2

    :cond_4
    move p2, v1

    :goto_2
    mul-float/2addr p1, p2

    iput p1, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fSpeed:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    iget p1, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fSpeed:F

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/GameValues;->army:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;

    iget p2, p2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;->MIN_ARMY_MOVEMENT_SPEED:F

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_6

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/GameValues;->army:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;

    iget p1, p1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;->MIN_ARMY_MOVEMENT_SPEED:F

    iget-boolean p2, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->inRetreat:Z

    if-eqz p2, :cond_5

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/GameValues;->army:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;

    iget v1, p2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;->RETREATING_ARMY_MOVEMENT_SPEED:F

    :cond_5
    mul-float/2addr p1, v1

    iput p1, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fSpeed:F

    :cond_6
    :goto_3
    return-void
.end method

.method public final updateToNextProvince(I)V
    .locals 2

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lRoute:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iRouteSize:I

    invoke-virtual {p0, v1, p1}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->buildMoveUnitsLine(ZI)V

    return-void
.end method
