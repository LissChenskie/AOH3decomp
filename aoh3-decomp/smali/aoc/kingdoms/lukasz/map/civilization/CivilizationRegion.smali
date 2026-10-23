.class public Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;
.super Ljava/lang/Object;
.source "CivilizationRegion.java"


# instance fields
.field public centerCharXY:Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

.field public drawMatrix4:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/badlogic/gdx/math/Matrix4;",
            ">;"
        }
    .end annotation
.end field

.field protected drawName:Z

.field private fAngle:F

.field private fAngle_Low:F

.field private fontScale:F

.field private fontScale2:F

.field public iAveragePointPosX:I

.field public iAveragePointPosY:I

.field private iCharMaxHeight:I

.field private iCharMaxWidth:I

.field private iMaxX:I

.field private iMaxY:I

.field private iMinX:I

.field private iMinY:I

.field private iProvincesSize:I

.field private iRegionID:I

.field protected lCoastlineProvinces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public lPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;",
            ">;"
        }
    .end annotation
.end field

.field private lProvinces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private numOfTries:I

.field private shortestLine:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private triedToUse:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lCoastlineProvinces:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iMinX:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iMaxX:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iMinY:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iMaxY:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iAveragePointPosX:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iAveragePointPosY:I

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->fontScale:F

    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->fontScale2:F

    const/4 v1, 0x0

    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->fAngle:F

    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->fAngle_Low:F

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iCharMaxWidth:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iCharMaxHeight:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lPoints:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->drawMatrix4:Ljava/util/List;

    const/4 v1, 0x1

    iput-boolean v1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->drawName:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->triedToUse:Ljava/util/List;

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->numOfTries:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lCoastlineProvinces:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iMinX:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iMaxX:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iMinY:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iMaxY:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iAveragePointPosX:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iAveragePointPosY:I

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->fontScale:F

    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->fontScale2:F

    const/4 v1, 0x0

    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->fAngle:F

    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->fAngle_Low:F

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iCharMaxWidth:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iCharMaxHeight:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lPoints:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->drawMatrix4:Ljava/util/List;

    const/4 v1, 0x1

    iput-boolean v1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->drawName:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->triedToUse:Ljava/util/List;

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->numOfTries:I

    iput p2, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iRegionID:I

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->addProvince(I)V

    return-void
.end method

.method private final buildAveragePoint()V
    .locals 14

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getMinX()I

    move-result v0

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxX()I

    move-result v1

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getMinY()I

    move-result v3

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxY()I

    move-result v4

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getMinX()I

    move-result v5

    if-ge v5, v0, :cond_0

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getMinX()I

    move-result v0

    :cond_0
    iget-object v5, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxX()I

    move-result v5

    if-le v5, v1, :cond_1

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxX()I

    move-result v1

    :cond_1
    iget-object v5, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getMinY()I

    move-result v5

    if-ge v5, v3, :cond_2

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getMinY()I

    move-result v3

    :cond_2
    iget-object v5, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxY()I

    move-result v5

    if-le v5, v4, :cond_3

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxY()I

    move-result v4

    :cond_3
    const-wide/16 v5, 0x0

    move v10, v2

    move v11, v10

    move-wide v8, v5

    :goto_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getProvincesSize()I

    move-result v12

    if-ge v10, v12, :cond_a

    invoke-virtual {p0, v10}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getProvince(I)I

    move-result v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    iget v12, v12, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    if-lt v12, v0, :cond_4

    invoke-virtual {p0, v10}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getProvince(I)I

    move-result v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    iget v12, v12, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    if-gt v12, v1, :cond_4

    invoke-virtual {p0, v10}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getProvince(I)I

    move-result v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    iget v12, v12, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    if-lt v12, v3, :cond_9

    invoke-virtual {p0, v10}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getProvince(I)I

    move-result v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    iget v12, v12, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    if-gt v12, v4, :cond_9

    invoke-virtual {p0, v10}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getProvince(I)I

    move-result v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    iget v12, v12, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    int-to-long v12, v12

    add-long/2addr v5, v12

    invoke-virtual {p0, v10}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getProvince(I)I

    move-result v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    iget v12, v12, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    :goto_1
    int-to-long v12, v12

    add-long/2addr v8, v12

    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_2

    :cond_4
    invoke-virtual {p0, v10}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getProvince(I)I

    move-result v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getMinX()I

    move-result v12

    if-le v12, v0, :cond_5

    invoke-virtual {p0, v10}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getProvince(I)I

    move-result v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getMinX()I

    move-result v12

    if-le v12, v1, :cond_6

    :cond_5
    invoke-virtual {p0, v10}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getProvince(I)I

    move-result v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxX()I

    move-result v12

    if-le v12, v0, :cond_9

    invoke-virtual {p0, v10}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getProvince(I)I

    move-result v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxX()I

    move-result v12

    if-gt v12, v1, :cond_9

    :cond_6
    invoke-virtual {p0, v10}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getProvince(I)I

    move-result v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getMinY()I

    move-result v12

    if-lt v12, v3, :cond_7

    invoke-virtual {p0, v10}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getProvince(I)I

    move-result v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getMinY()I

    move-result v12

    if-le v12, v4, :cond_8

    :cond_7
    invoke-virtual {p0, v10}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getProvince(I)I

    move-result v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxY()I

    move-result v12

    if-lt v12, v3, :cond_9

    invoke-virtual {p0, v10}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getProvince(I)I

    move-result v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxY()I

    move-result v12

    if-gt v12, v4, :cond_9

    :cond_8
    invoke-virtual {p0, v10}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getProvince(I)I

    move-result v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    iget v12, v12, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    int-to-long v12, v12

    add-long/2addr v5, v12

    invoke-virtual {p0, v10}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getProvince(I)I

    move-result v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    iget v12, v12, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    goto/16 :goto_1

    :cond_9
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    :cond_a
    if-nez v11, :cond_b

    move v11, v7

    :cond_b
    int-to-long v0, v11

    div-long/2addr v5, v0

    long-to-int v3, v5

    iput v3, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iAveragePointPosX:I

    div-long/2addr v8, v0

    long-to-int v0, v8

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iAveragePointPosY:I

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterX()I

    move-result v0

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterX()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY()I

    move-result v1

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY()I

    move-result v2

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v2, v0

    iget v3, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iAveragePointPosX:I

    sub-int/2addr v0, v3

    int-to-float v0, v0

    const v3, 0x3f19999a    # 0.6f

    mul-float/2addr v0, v3

    add-float/2addr v2, v0

    float-to-int v0, v2

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iAveragePointPosX:I

    int-to-float v0, v1

    iget v2, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iAveragePointPosY:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iAveragePointPosY:I

    return-void
.end method

.method private final buildMinMaxBounds()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getMinX()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iMinX:I

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxX()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iMaxX:I

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getMinY()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iMinY:I

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxY()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iMaxY:I

    const/4 v0, 0x1

    :goto_0
    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iProvincesSize:I

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getMinX()I

    move-result v1

    iget v2, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iMinX:I

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getMinX()I

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iMinX:I

    :cond_0
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxX()I

    move-result v1

    iget v2, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iMaxX:I

    if-le v1, v2, :cond_1

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxX()I

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iMaxX:I

    :cond_1
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getMinY()I

    move-result v1

    iget v2, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iMinY:I

    if-ge v1, v2, :cond_2

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getMinY()I

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iMinY:I

    :cond_2
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxY()I

    move-result v1

    iget v2, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iMaxY:I

    if-le v1, v2, :cond_3

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxY()I

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iMaxY:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_4
    return-void
.end method

.method private final canDrawTextProperly(II)Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;
    .locals 13

    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->buildAveragePoint()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    sub-int v3, v2, v1

    int-to-float v3, v3

    const v4, 0x3e19999a    # 0.15f

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-int v5, v5

    const/4 v6, -0x1

    const/4 v7, 0x1

    if-le v1, v2, :cond_0

    move v8, v6

    goto :goto_0

    :cond_0
    move v8, v7

    :goto_0
    mul-int/2addr v5, v8

    add-int/2addr v5, v1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-int v3, v3

    if-le v2, v1, :cond_1

    move v1, v6

    goto :goto_1

    :cond_1
    move v1, v7

    :goto_1
    mul-int/2addr v3, v1

    add-int/2addr v2, v3

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p2

    iget p2, p2, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    sub-int v3, p2, v1

    int-to-float v3, v3

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-int v4, v4

    if-le v1, p2, :cond_2

    move v8, v6

    goto :goto_2

    :cond_2
    move v8, v7

    :goto_2
    mul-int/2addr v4, v8

    add-int/2addr v4, v1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-int v3, v3

    if-le p2, v1, :cond_3

    goto :goto_3

    :cond_3
    move v6, v7

    :goto_3
    mul-int/2addr v3, v6

    add-int/2addr p2, v3

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivNameLength()I

    move-result v1

    mul-int/lit8 v1, v1, 0xa

    new-array v3, v1, [Lcom/badlogic/gdx/math/Vector2;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/badlogic/gdx/math/Vector2;

    new-instance v8, Lcom/badlogic/gdx/math/Vector2;

    int-to-float v5, v5

    int-to-float v4, v4

    invoke-direct {v8, v5, v4}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    const/4 v9, 0x0

    aput-object v8, v6, v9

    new-instance v8, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v8, v5, v4}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    aput-object v8, v6, v7

    new-instance v4, Lcom/badlogic/gdx/math/Vector2;

    iget v5, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iAveragePointPosX:I

    int-to-float v5, v5

    iget v8, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iAveragePointPosY:I

    int-to-float v8, v8

    invoke-direct {v4, v5, v8}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    const/4 v5, 0x2

    aput-object v4, v6, v5

    new-instance v4, Lcom/badlogic/gdx/math/Vector2;

    int-to-float v2, v2

    int-to-float p2, p2

    invoke-direct {v4, v2, p2}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    const/4 v5, 0x3

    aput-object v4, v6, v5

    new-instance v4, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v4, v2, p2}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    const/4 p2, 0x4

    aput-object v4, v6, p2

    new-instance p2, Lcom/badlogic/gdx/math/CatmullRomSpline;

    invoke-direct {p2, v6, v9}, Lcom/badlogic/gdx/math/CatmullRomSpline;-><init>([Lcom/badlogic/gdx/math/Vector;Z)V

    move v2, v9

    :goto_4
    if-ge v2, v1, :cond_4

    new-instance v4, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v4}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    aput-object v4, v3, v2

    int-to-float v5, v2

    int-to-float v6, v1

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float/2addr v6, v8

    div-float/2addr v5, v6

    invoke-virtual {p2, v4, v5}, Lcom/badlogic/gdx/math/CatmullRomSpline;->valueAt(Lcom/badlogic/gdx/math/Vector;F)Lcom/badlogic/gdx/math/Vector;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    const/4 p2, 0x0

    move v4, p2

    move v2, v9

    :goto_5
    add-int/lit8 v5, v1, -0x1

    if-ge v2, v5, :cond_5

    aget-object v5, v3, v2

    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-int v5, v5

    aget-object v6, v3, v2

    iget v6, v6, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-int v6, v6

    add-int/lit8 v2, v2, 0x1

    aget-object v8, v3, v2

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-int v8, v8

    aget-object v10, v3, v2

    iget v10, v10, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-int v10, v10

    invoke-static {v5, v6, v8, v10}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getLineWidth2(IIII)F

    move-result v5

    add-float/2addr v4, v5

    goto :goto_5

    :cond_5
    new-instance v1, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    aget-object v2, v3, v9

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-int v2, v2

    aget-object v6, v3, v9

    iget v6, v6, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-int v6, v6

    invoke-direct {v1, v2, v6}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :try_start_0
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivNameLength()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    sub-int/2addr v1, v7

    int-to-float v1, v1

    div-float/2addr v4, v1

    goto :goto_6

    :catch_0
    move-exception v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    move v4, p2

    :goto_6
    move v1, v7

    move v2, v9

    :goto_7
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivNameLength()I

    move-result v6

    if-ge v1, v6, :cond_8

    :goto_8
    if-ge v2, v5, :cond_7

    aget-object v6, v3, v2

    iget v6, v6, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-int v6, v6

    aget-object v8, v3, v2

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-int v8, v8

    add-int/lit8 v10, v2, 0x1

    aget-object v11, v3, v10

    iget v11, v11, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-int v11, v11

    aget-object v12, v3, v10

    iget v12, v12, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-int v12, v12

    invoke-static {v6, v8, v11, v12}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getLineWidth2(IIII)F

    move-result v6

    add-float/2addr p2, v6

    cmpl-float v6, p2, v4

    if-ltz v6, :cond_6

    new-instance v6, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    aget-object v8, v3, v2

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-int v8, v8

    aget-object v10, v3, v2

    iget v10, v10, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-int v10, v10

    invoke-direct {v6, v8, v10}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;-><init>(II)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sub-float p2, v4, p2

    goto :goto_9

    :cond_6
    move v2, v10

    goto :goto_8

    :cond_7
    :goto_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_8
    new-instance p2, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    aget-object v1, v3, v5

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-int v1, v1

    aget-object v2, v3, v5

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-int v2, v2

    invoke-direct {p2, v1, v2}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;-><init>(II)V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, v7

    :goto_a
    if-ltz p2, :cond_a

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v1

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v2

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/jakowski/Game;->setProvinceID_Point(II)I

    move-result v1

    if-ltz v1, :cond_9

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    if-eq v2, v1, :cond_9

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    return-object p1

    :cond_9
    add-int/lit8 p2, p2, -0x1

    goto :goto_a

    :cond_a
    invoke-virtual {p0, v9}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->buildScaleOfText(I)F

    move-result p2

    float-to-int p2, p2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v7

    :goto_b
    if-ltz v1, :cond_13

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v2

    add-int/2addr v2, p2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v3

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/jakowski/Game;->setProvinceID_Point(II)I

    move-result v2

    if-ltz v2, :cond_b

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    if-eq v3, v2, :cond_b

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    return-object p1

    :cond_b
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v2

    sub-int/2addr v2, p2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v3

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/jakowski/Game;->setProvinceID_Point(II)I

    move-result v2

    if-ltz v2, :cond_c

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    if-eq v3, v2, :cond_c

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    return-object p1

    :cond_c
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v3

    add-int/2addr v3, p2

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/jakowski/Game;->setProvinceID_Point(II)I

    move-result v2

    if-ltz v2, :cond_d

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    if-eq v3, v2, :cond_d

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    return-object p1

    :cond_d
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v3

    sub-int/2addr v3, p2

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/jakowski/Game;->setProvinceID_Point(II)I

    move-result v2

    if-ltz v2, :cond_e

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    if-eq v3, v2, :cond_e

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    return-object p1

    :cond_e
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v2

    sub-int/2addr v2, p2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v3

    add-int/2addr v3, p2

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/jakowski/Game;->setProvinceID_Point(II)I

    move-result v2

    if-ltz v2, :cond_f

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    if-eq v3, v2, :cond_f

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    return-object p1

    :cond_f
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v2

    add-int/2addr v2, p2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v3

    add-int/2addr v3, p2

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/jakowski/Game;->setProvinceID_Point(II)I

    move-result v2

    if-ltz v2, :cond_10

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    if-eq v3, v2, :cond_10

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    return-object p1

    :cond_10
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v2

    sub-int/2addr v2, p2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v3

    sub-int/2addr v3, p2

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/jakowski/Game;->setProvinceID_Point(II)I

    move-result v2

    if-ltz v2, :cond_11

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    if-eq v3, v2, :cond_11

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    return-object p1

    :cond_11
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v2

    add-int/2addr v2, p2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v3

    sub-int/2addr v3, p2

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/jakowski/Game;->setProvinceID_Point(II)I

    move-result v2

    if-ltz v2, :cond_12

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    if-eq v3, v2, :cond_12

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    return-object p1

    :cond_12
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_b

    :cond_13
    const/4 p1, 0x0

    return-object p1
.end method

.method public static getLineWidth(IIII)I
    .locals 4

    sub-int/2addr p0, p2

    int-to-double v0, p0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sub-int/2addr p1, p3

    int-to-double p0, p1

    invoke-static {p0, p1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    add-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-int p0, p0

    return p0
.end method

.method public static getLineWidth2(IIII)F
    .locals 4

    sub-int/2addr p0, p2

    int-to-double v0, p0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sub-int/2addr p1, p3

    int-to-double p0, p1

    invoke-static {p0, p1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    add-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static getLineWidth3(FFFF)F
    .locals 4

    sub-float/2addr p0, p2

    float-to-double v0, p0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sub-float/2addr p1, p3

    float-to-double p0, p1

    invoke-static {p0, p1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    add-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static getLinesAngle(IIII)F
    .locals 2

    sub-int/2addr p1, p3

    int-to-double v0, p1

    neg-int p0, p0

    add-int/2addr p0, p2

    int-to-double p0, p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    const-wide p2, 0x4066800000000000L    # 180.0

    mul-double/2addr p0, p2

    const-wide p2, 0x400921fb54442d18L    # Math.PI

    div-double/2addr p0, p2

    double-to-float p0, p0

    return p0
.end method

.method public static getLinesAngle2(FFFF)F
    .locals 2

    sub-float/2addr p1, p3

    float-to-double v0, p1

    neg-float p0, p0

    add-float/2addr p0, p2

    float-to-double p0, p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    const-wide p2, 0x4066800000000000L    # 180.0

    mul-double/2addr p0, p2

    const-wide p2, 0x400921fb54442d18L    # Math.PI

    div-double/2addr p0, p2

    double-to-float p0, p0

    return p0
.end method


# virtual methods
.method public final addProvince(I)V
    .locals 3

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iProvincesSize:I

    const/4 v0, 0x0

    :goto_0
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvincesSize()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvinces(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getLevelOfPort()I

    move-result v1

    const/4 v2, -0x2

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lCoastlineProvinces:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p1

    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iRegionID:I

    invoke-virtual {p1, v0}, Laoc/kingdoms/lukasz/map/province/Province;->setCivRegionID(I)V

    return-void
.end method

.method public final addProvince_Just(I)V
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iProvincesSize:I

    return-void
.end method

.method public final buildDrawData(I)V
    .locals 17

    move-object/from16 v1, p0

    move/from16 v2, p1

    monitor-enter p0

    :try_start_0
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontBorder:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v3

    iget v4, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->fontScale:F

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    const/4 v3, 0x1

    iput v3, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iCharMaxWidth:I

    iput v3, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iCharMaxHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    :try_start_1
    iget-object v6, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivNameLength()I

    move-result v6

    if-ge v5, v6, :cond_2

    new-instance v6, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    invoke-direct {v6}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;-><init>()V

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontBorder:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    invoke-virtual {v9, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivNameCharacter(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    iget v7, v6, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    iget v8, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iCharMaxWidth:I

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_0

    iget v7, v6, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int v7, v7

    iput v7, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iCharMaxWidth:I

    :cond_0
    iget v7, v6, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->height:F

    iget v8, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iCharMaxWidth:I

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_1

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->height:F

    float-to-int v6, v6

    iput v6, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iCharMaxHeight:I
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v2, v0

    :try_start_2
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v2, v0

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v2, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setUpdateRegions(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v2, v0

    :try_start_4
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :catch_3
    :cond_2
    :goto_1
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object v2, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getProvince(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    iget-object v5, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v1, v5}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getProvince(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    sub-int/2addr v2, v5

    int-to-double v5, v2

    iget-object v2, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getProvince(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    neg-int v2, v2

    iget-object v7, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v1, v7}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getProvince(I)I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    iget v7, v7, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    add-int/2addr v2, v7

    int-to-double v7, v2

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v5

    const-wide v7, 0x4066800000000000L    # 180.0

    mul-double/2addr v5, v7

    const-wide v9, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v5, v9

    double-to-float v2, v5

    iput v2, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->fAngle:F

    iget-object v2, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getProvince(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    iget-object v5, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v3

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v1, v5}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getProvince(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    sub-int/2addr v2, v5

    int-to-double v5, v2

    iget-object v2, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getProvince(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    neg-int v2, v2

    iget-object v11, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    sub-int/2addr v12, v3

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v1, v11}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getProvince(I)I

    move-result v11

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    iget v11, v11, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    add-int/2addr v2, v11

    int-to-double v11, v2

    invoke-static {v5, v6, v11, v12}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v5

    mul-double/2addr v5, v7

    div-double/2addr v5, v9

    double-to-float v2, v5

    iput v2, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->fAngle_Low:F

    iget-object v2, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lPoints:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iget-object v2, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->drawMatrix4:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :try_start_5
    iget-object v5, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    iget-object v6, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    iget-object v7, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    iget v7, v7, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    iget v8, v8, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    sub-int v9, v8, v7

    int-to-float v9, v9

    const v10, 0x3e19999a    # 0.15f

    mul-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v11

    float-to-int v11, v11

    const/4 v12, -0x1

    if-le v7, v8, :cond_3

    move v13, v12

    goto :goto_2

    :cond_3
    move v13, v3

    :goto_2
    mul-int/2addr v11, v13

    add-int/2addr v11, v7

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    float-to-int v9, v9

    if-le v8, v7, :cond_4

    move v7, v12

    goto :goto_3

    :cond_4
    move v7, v3

    :goto_3
    mul-int/2addr v9, v7

    add-int/2addr v8, v9

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    iget v7, v7, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    iget v6, v6, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    sub-int v9, v6, v7

    int-to-float v9, v9

    mul-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-int v10, v10

    if-le v7, v6, :cond_5

    move v13, v12

    goto :goto_4

    :cond_5
    move v13, v3

    :goto_4
    mul-int/2addr v10, v13

    add-int/2addr v10, v7

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    float-to-int v9, v9

    if-le v6, v7, :cond_6

    goto :goto_5

    :cond_6
    move v12, v3

    :goto_5
    mul-int/2addr v9, v12

    add-int/2addr v6, v9

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivNameLength()I

    move-result v7

    const/4 v9, 0x3

    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    mul-int/lit8 v7, v7, 0x64

    new-array v12, v7, [Lcom/badlogic/gdx/math/Vector2;

    const/4 v13, 0x5

    new-array v13, v13, [Lcom/badlogic/gdx/math/Vector2;

    new-instance v14, Lcom/badlogic/gdx/math/Vector2;

    int-to-float v11, v11

    int-to-float v10, v10

    invoke-direct {v14, v11, v10}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    aput-object v14, v13, v4

    new-instance v14, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v14, v11, v10}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    aput-object v14, v13, v3

    new-instance v10, Lcom/badlogic/gdx/math/Vector2;

    iget v11, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iAveragePointPosX:I

    int-to-float v11, v11

    iget v14, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iAveragePointPosY:I

    int-to-float v14, v14

    invoke-direct {v10, v11, v14}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    const/4 v11, 0x2

    aput-object v10, v13, v11

    new-instance v10, Lcom/badlogic/gdx/math/Vector2;

    int-to-float v8, v8

    int-to-float v6, v6

    invoke-direct {v10, v8, v6}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    aput-object v10, v13, v9

    new-instance v9, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v9, v8, v6}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    const/4 v6, 0x4

    aput-object v9, v13, v6

    new-instance v6, Lcom/badlogic/gdx/math/CatmullRomSpline;

    invoke-direct {v6, v13, v4}, Lcom/badlogic/gdx/math/CatmullRomSpline;-><init>([Lcom/badlogic/gdx/math/Vector;Z)V

    move v8, v4

    :goto_6
    const/high16 v9, 0x3f800000    # 1.0f

    if-ge v8, v7, :cond_7

    new-instance v10, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v10}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    aput-object v10, v12, v8

    int-to-float v13, v8

    int-to-float v14, v7

    sub-float/2addr v14, v9

    div-float/2addr v13, v14

    invoke-virtual {v6, v10, v13}, Lcom/badlogic/gdx/math/CatmullRomSpline;->valueAt(Lcom/badlogic/gdx/math/Vector;F)Lcom/badlogic/gdx/math/Vector;

    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_7
    move v8, v4

    const/4 v10, 0x0

    :goto_7
    add-int/lit8 v13, v7, -0x1

    if-ge v8, v13, :cond_8

    aget-object v13, v12, v8

    iget v13, v13, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-int v13, v13

    aget-object v14, v12, v8

    iget v14, v14, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-int v14, v14

    add-int/lit8 v8, v8, 0x1

    aget-object v15, v12, v8

    iget v15, v15, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-int v15, v15

    aget-object v6, v12, v8

    iget v6, v6, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-int v6, v6

    invoke-static {v13, v14, v15, v6}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getLineWidth2(IIII)F

    move-result v6

    add-float/2addr v10, v6

    goto :goto_7

    :cond_8
    iget-object v6, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lPoints:Ljava/util/List;

    new-instance v7, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    aget-object v8, v12, v4

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-int v8, v8

    aget-object v14, v12, v4

    iget v14, v14, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-int v14, v14

    invoke-direct {v7, v8, v14}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;-><init>(II)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_10

    :try_start_6
    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivNameLength()I

    move-result v6
    :try_end_6
    .catch Ljava/lang/ArithmeticException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_10

    sub-int/2addr v6, v3

    int-to-float v6, v6

    div-float/2addr v10, v6

    goto :goto_8

    :catch_4
    move-exception v0

    move-object v6, v0

    :try_start_7
    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    const/4 v10, 0x0

    :goto_8
    move v6, v3

    move v8, v4

    const/4 v7, 0x0

    :goto_9
    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v14

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v14

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivNameLength()I

    move-result v14

    if-ge v6, v14, :cond_b

    :goto_a
    if-ge v8, v13, :cond_a

    aget-object v14, v12, v8

    iget v14, v14, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-int v14, v14

    aget-object v15, v12, v8

    iget v15, v15, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-int v15, v15

    add-int/lit8 v16, v8, 0x1

    aget-object v9, v12, v16

    iget v9, v9, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-int v9, v9

    aget-object v11, v12, v16

    iget v11, v11, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-int v11, v11

    invoke-static {v14, v15, v9, v11}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getLineWidth2(IIII)F

    move-result v9

    add-float/2addr v7, v9

    cmpl-float v9, v7, v10

    if-ltz v9, :cond_9

    iget-object v9, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lPoints:Ljava/util/List;

    new-instance v11, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    aget-object v14, v12, v8

    iget v14, v14, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-int v14, v14

    aget-object v15, v12, v8

    iget v15, v15, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-int v15, v15

    invoke-direct {v11, v14, v15}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;-><init>(II)V

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sub-float v7, v10, v7

    goto :goto_b

    :cond_9
    move/from16 v8, v16

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v11, 0x2

    goto :goto_a

    :cond_a
    :goto_b
    add-int/lit8 v6, v6, 0x1

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v11, 0x2

    goto :goto_9

    :cond_b
    iget-object v6, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lPoints:Ljava/util/List;

    new-instance v7, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    aget-object v8, v12, v13

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-int v8, v8

    aget-object v9, v12, v13

    iget v9, v9, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-int v9, v9

    invoke-direct {v7, v8, v9}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;-><init>(II)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_10

    move v6, v4

    :goto_c
    :try_start_8
    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivNameLength()I

    move-result v7
    :try_end_8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_e
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_d
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_10

    if-ge v6, v7, :cond_10

    :try_start_9
    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivNameLength()I

    move-result v7

    sub-int/2addr v7, v3

    if-ge v6, v7, :cond_c

    iget-object v7, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lPoints:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v7

    iget-object v8, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lPoints:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v8

    iget-object v9, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lPoints:Ljava/util/List;

    add-int/lit8 v10, v6, 0x1

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v9

    iget-object v11, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lPoints:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v10

    invoke-static {v7, v8, v9, v10}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getLinesAngle(IIII)F

    move-result v7

    goto :goto_d

    :cond_c
    add-int/lit8 v7, v6, -0x1

    if-ltz v7, :cond_d

    iget-object v8, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lPoints:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v8

    iget-object v9, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lPoints:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v7

    iget-object v9, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lPoints:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v9

    iget-object v10, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lPoints:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v10

    invoke-static {v8, v7, v9, v10}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getLinesAngle(IIII)F

    move-result v7

    goto :goto_d

    :cond_d
    const/4 v7, 0x0

    :goto_d
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_8
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_10

    goto/16 :goto_f

    :catch_5
    if-nez v6, :cond_e

    :try_start_a
    iget-object v7, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lPoints:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v7

    iget-object v8, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lPoints:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v8

    iget-object v9, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lPoints:Ljava/util/List;

    add-int/lit8 v10, v6, 0x1

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v9

    iget-object v11, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lPoints:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v10

    invoke-static {v7, v8, v9, v10}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getLinesAngle(IIII)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a .. :try_end_a} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_d
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_c
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_10

    goto :goto_e

    :catch_6
    :try_start_b
    iget v7, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->fAngle:F

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_b .. :try_end_b} :catch_e
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_b} :catch_d
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_b} :catch_c
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_10

    goto :goto_e

    :cond_e
    :try_start_c
    iget-object v7, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lPoints:Ljava/util/List;

    add-int/lit8 v8, v6, -0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v7

    iget-object v9, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lPoints:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v8

    iget-object v9, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lPoints:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v9

    iget-object v10, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lPoints:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v10

    invoke-static {v7, v8, v9, v10}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getLinesAngle(IIII)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_c .. :try_end_c} :catch_7
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_c} :catch_d
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_c} :catch_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_10

    goto :goto_e

    :catch_7
    :try_start_d
    iget v7, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->fAngle:F

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_d .. :try_end_d} :catch_e
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_d} :catch_d
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_d} :catch_c
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_10

    :goto_e
    :try_start_e
    iget-object v7, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    invoke-virtual {v7, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setUpdateRegions(Z)V
    :try_end_e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_e .. :try_end_e} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_e} :catch_b
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_e} :catch_c
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_10

    goto/16 :goto_f

    :catch_8
    if-nez v6, :cond_f

    :try_start_f
    iget-object v7, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lPoints:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v7

    iget-object v8, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lPoints:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v8

    iget-object v9, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lPoints:Ljava/util/List;

    add-int/lit8 v10, v6, 0x1

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v9

    iget-object v11, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lPoints:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v10

    invoke-static {v7, v8, v9, v10}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getLinesAngle(IIII)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_f .. :try_end_f} :catch_9
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_f} :catch_d
    .catch Ljava/lang/IllegalStateException; {:try_start_f .. :try_end_f} :catch_c
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_10

    goto :goto_f

    :catch_9
    :try_start_10
    iget v7, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->fAngle:F

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_10
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_10 .. :try_end_10} :catch_e
    .catch Ljava/lang/NullPointerException; {:try_start_10 .. :try_end_10} :catch_d
    .catch Ljava/lang/IllegalStateException; {:try_start_10 .. :try_end_10} :catch_c
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_10

    goto :goto_f

    :cond_f
    :try_start_11
    iget-object v7, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lPoints:Ljava/util/List;

    add-int/lit8 v8, v6, -0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v7

    iget-object v9, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lPoints:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v8

    iget-object v9, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lPoints:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v9

    iget-object v10, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lPoints:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v10

    invoke-static {v7, v8, v9, v10}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getLinesAngle(IIII)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_11
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_11 .. :try_end_11} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_11 .. :try_end_11} :catch_d
    .catch Ljava/lang/IllegalStateException; {:try_start_11 .. :try_end_11} :catch_c
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_10

    goto :goto_f

    :catch_a
    :try_start_12
    iget v7, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->fAngle:F

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_12
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_12 .. :try_end_12} :catch_e
    .catch Ljava/lang/NullPointerException; {:try_start_12 .. :try_end_12} :catch_d
    .catch Ljava/lang/IllegalStateException; {:try_start_12 .. :try_end_12} :catch_c
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_10

    :catch_b
    :goto_f
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_c

    :catch_c
    move-exception v0

    move-object v3, v0

    :try_start_13
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_10

    :catch_d
    move-exception v0

    move-object v5, v0

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_10

    :try_start_14
    iget-object v5, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setUpdateRegions(Z)V
    :try_end_14
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_14 .. :try_end_14} :catch_f
    .catch Ljava/lang/NullPointerException; {:try_start_14 .. :try_end_14} :catch_f
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_10

    goto :goto_10

    :catch_e
    move-exception v0

    move-object v3, v0

    :try_start_15
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :catch_f
    :cond_10
    :goto_10
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    move v5, v4

    const/4 v6, 0x0

    :goto_11
    if-ge v5, v3, :cond_11

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    add-float/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    :cond_11
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v6, v3

    new-instance v3, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getCharMaxWidth()I

    move-result v5

    const/4 v7, 0x2

    div-int/2addr v5, v7

    int-to-float v5, v5

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const/high16 v8, 0x42b40000    # 90.0f

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    sub-float v7, v8, v7

    div-float/2addr v7, v8

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float/2addr v9, v7

    mul-float/2addr v5, v9

    float-to-int v5, v5

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getCharMaxHeight()I

    move-result v7

    const/4 v9, 0x2

    div-int/2addr v7, v9

    int-to-float v7, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {v6, v8}, Ljava/lang/Math;->min(FF)F

    move-result v6

    sub-float v6, v8, v6

    div-float/2addr v6, v8

    mul-float/2addr v7, v6

    float-to-int v6, v7

    invoke-direct {v3, v5, v6}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;-><init>(II)V

    iput-object v3, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->centerCharXY:Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_10

    goto :goto_12

    :catch_10
    move-exception v0

    move-object v3, v0

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_12
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    :goto_13
    if-ge v4, v3, :cond_12

    iget-object v5, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->drawMatrix4:Ljava/util/List;

    new-instance v6, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v6}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->textRotatedVector3:Lcom/badlogic/gdx/math/Vector3;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-virtual {v6, v7, v8}, Lcom/badlogic/gdx/math/Matrix4;->rotate(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    :cond_12
    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    :try_start_16
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    throw v2
.end method

.method public final buildRegionPath()Z
    .locals 20

    move-object/from16 v1, p0

    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->drawName:Z

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->buildMinMaxBounds()V

    iget-object v0, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    return v2

    :cond_0
    iget-object v0, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v3, :cond_1d

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->DRAW_CIVILIZATIONS_NAMES_OVER_PROVINCES_IN_GAME:Z

    if-nez v0, :cond_1

    return v2

    :cond_1
    move v0, v2

    :goto_0
    iget v4, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iProvincesSize:I

    const/4 v5, -0x1

    if-ge v0, v4, :cond_2

    iget-object v4, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->triedToUse:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v5

    :cond_3
    if-ne v0, v5, :cond_4

    return v2

    :cond_4
    iget v4, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iMinX:I

    iget-object v5, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterX()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-double v4, v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    iget v8, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iMaxY:I

    iget-object v9, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY()I

    move-result v9

    sub-int/2addr v8, v9

    int-to-double v8, v8

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    add-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v4, v4

    iget v5, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iMaxX:I

    iget-object v8, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterX()I

    move-result v8

    sub-int/2addr v5, v8

    int-to-double v8, v5

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    iget v5, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iMinY:I

    iget-object v10, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY()I

    move-result v10

    sub-int/2addr v5, v10

    int-to-double v10, v5

    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-int v5, v8

    iget v8, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iMaxX:I

    iget-object v9, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterX()I

    move-result v9

    sub-int/2addr v8, v9

    int-to-double v8, v8

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    iget v10, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iMaxY:I

    iget-object v11, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY()I

    move-result v11

    sub-int/2addr v10, v11

    int-to-double v10, v10

    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-int v8, v8

    iget v9, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iMinX:I

    iget-object v10, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterX()I

    move-result v10

    sub-int/2addr v9, v10

    int-to-double v9, v9

    invoke-static {v9, v10, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    iget v11, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iMinY:I

    iget-object v12, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY()I

    move-result v12

    sub-int/2addr v11, v12

    int-to-double v11, v11

    invoke-static {v11, v12, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v9, v6

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-int v6, v6

    iget-object v7, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->triedToUse:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v0, 0x1

    move v9, v0

    move v10, v9

    move v11, v4

    move v12, v5

    move v13, v6

    move v14, v7

    move v15, v8

    move v4, v10

    move v5, v4

    move v6, v5

    move v7, v6

    move v8, v7

    :goto_1
    iget v3, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iProvincesSize:I

    if-ge v14, v3, :cond_f

    iget-object v3, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->triedToUse:Ljava/util/List;

    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_5

    goto/16 :goto_5

    :cond_5
    iget-object v3, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    iget-object v2, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    move/from16 v16, v5

    iget v5, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iMinX:I

    move/from16 v17, v6

    iget v6, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iMaxY:I

    invoke-static {v5, v6, v3, v2}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getLineWidth(IIII)I

    move-result v5

    if-ge v5, v11, :cond_6

    move v11, v5

    move v0, v14

    :cond_6
    iget v5, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iMaxX:I

    iget v6, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iMinY:I

    invoke-static {v5, v6, v3, v2}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getLineWidth(IIII)I

    move-result v5

    if-ge v5, v12, :cond_7

    move v12, v5

    move v4, v14

    :cond_7
    iget v5, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iMaxX:I

    iget v6, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iMaxY:I

    invoke-static {v5, v6, v3, v2}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getLineWidth(IIII)I

    move-result v5

    if-ge v5, v15, :cond_8

    move v15, v5

    move v5, v14

    goto :goto_2

    :cond_8
    move/from16 v5, v16

    :goto_2
    iget v6, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iMinX:I

    move/from16 v18, v0

    iget v0, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iMinY:I

    invoke-static {v6, v0, v3, v2}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getLineWidth(IIII)I

    move-result v0

    if-ge v0, v13, :cond_9

    move v13, v0

    move v6, v14

    goto :goto_3

    :cond_9
    move/from16 v6, v17

    :goto_3
    iget-object v0, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    if-ge v0, v2, :cond_a

    move v7, v14

    :cond_a
    iget-object v0, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    if-le v0, v2, :cond_b

    move v8, v14

    :cond_b
    iget-object v0, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    if-le v0, v3, :cond_c

    iget v0, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iMinY:I

    move/from16 v19, v4

    iget v4, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iMaxY:I

    sub-int/2addr v4, v0

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    if-lt v2, v0, :cond_d

    move v9, v14

    goto :goto_4

    :cond_c
    move/from16 v19, v4

    :cond_d
    :goto_4
    iget-object v0, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    if-ge v0, v3, :cond_e

    iget v0, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iMinY:I

    iget v3, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iMaxY:I

    sub-int/2addr v3, v0

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    if-gt v2, v0, :cond_e

    move v10, v14

    :cond_e
    move/from16 v0, v18

    move/from16 v4, v19

    :goto_5
    add-int/lit8 v14, v14, 0x1

    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_f
    move/from16 v16, v5

    move/from16 v17, v6

    invoke-virtual {v1, v0, v4}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getLineWidth(II)I

    move-result v2

    invoke-virtual {v1, v5, v6}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getLineWidth(II)I

    move-result v3

    if-le v2, v3, :cond_13

    invoke-virtual {v1, v0, v4}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getLineWidth(II)I

    move-result v2

    invoke-virtual {v1, v7, v8}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getLineWidth(II)I

    move-result v3

    if-le v2, v3, :cond_11

    invoke-virtual {v1, v0, v4}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getLineWidth(II)I

    move-result v2

    invoke-virtual {v1, v9, v10}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getLineWidth(II)I

    move-result v3

    if-le v2, v3, :cond_10

    iget-object v2, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_10
    iget-object v0, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_11
    invoke-virtual {v1, v7, v8}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getLineWidth(II)I

    move-result v0

    invoke-virtual {v1, v9, v10}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getLineWidth(II)I

    move-result v2

    if-le v0, v2, :cond_12

    iget-object v0, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_12
    iget-object v0, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_13
    invoke-virtual {v1, v5, v6}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getLineWidth(II)I

    move-result v0

    invoke-virtual {v1, v7, v8}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getLineWidth(II)I

    move-result v2

    if-le v0, v2, :cond_15

    invoke-virtual {v1, v5, v6}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getLineWidth(II)I

    move-result v0

    invoke-virtual {v1, v9, v10}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getLineWidth(II)I

    move-result v2

    if-le v0, v2, :cond_14

    iget-object v0, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_14
    iget-object v0, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_15
    invoke-virtual {v1, v7, v8}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getLineWidth(II)I

    move-result v0

    invoke-virtual {v1, v9, v10}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getLineWidth(II)I

    move-result v2

    if-le v0, v2, :cond_16

    iget-object v0, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_16
    iget-object v0, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_6
    iget-object v0, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    iget-object v2, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterX()I

    move-result v0

    iget-object v2, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    iget-object v3, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterX()I

    move-result v2

    if-le v0, v2, :cond_17

    iget-object v0, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    const/4 v5, 0x0

    invoke-interface {v2, v5, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_17
    iget-object v0, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v0, v2, :cond_18

    goto/16 :goto_9

    :cond_18
    iget-object v0, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    iget-object v2, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    iget-object v3, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v1, v0, v2}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->canDrawTextProperly(II)Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v2

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v3

    iget-object v4, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    iget-object v5, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    iget-object v5, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    iget-object v6, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    invoke-static {v2, v3, v4, v5}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getLineWidth(IIII)I

    move-result v2

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v3

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v0

    iget-object v4, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    iget-object v5, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    iget-object v5, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    iget-object v6, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    invoke-static {v3, v0, v4, v5}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getLineWidth(IIII)I

    move-result v0

    if-ge v2, v0, :cond_19

    iget-object v0, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->triedToUse:Ljava/util/List;

    iget-object v2, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_19
    iget-object v0, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->triedToUse:Ljava/util/List;

    iget-object v2, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_7
    iget-object v0, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget v0, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->numOfTries:I

    add-int/lit8 v2, v0, 0x1

    iput v2, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->numOfTries:I

    const/16 v2, 0x64

    if-ge v0, v2, :cond_1a

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->buildRegionPath()Z

    move-result v2

    goto :goto_8

    :cond_1a
    const/4 v2, 0x0

    :goto_8
    return v2

    :cond_1b
    iget-object v0, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->triedToUse:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_a

    :cond_1c
    :goto_9
    iget-object v0, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->triedToUse:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v2, 0x0

    return v2

    :cond_1d
    :goto_a
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->updateDrawRegionName()V
    :try_end_0
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    const/4 v2, 0x0

    return v2
.end method

.method public final buildRegionPath_TriedToUse()V
    .locals 4

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->triedToUse:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iProvincesSize:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->triedToUse:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_1
    iget v2, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iProvincesSize:I

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

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

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->triedToUse:Ljava/util/List;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->numOfTries:I

    return-void
.end method

.method protected final buildScaleOfText(I)F
    .locals 12

    const v0, 0x38d1b717    # 1.0E-4f

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    :try_start_0
    iget-object v4, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v1, :cond_3

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    sub-int/2addr v4, v5

    int-to-double v4, v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    iget-object v8, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    iget-object v9, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    iget v8, v8, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    iget-object v9, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    iget-object v10, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    iget v9, v9, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    sub-int/2addr v8, v9

    int-to-double v8, v8

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    const v5, 0x3f733333    # 0.95f

    mul-float/2addr v4, v5

    new-instance v5, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    invoke-direct {v5}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;-><init>()V

    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_4

    :try_start_1
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontBorder:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v7, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    iget-object v8, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->sCivName_UpperCase:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    iget v6, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->fontScale:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v7, v2

    :goto_0
    :try_start_2
    iget v8, v5, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    cmpl-float v8, v4, v8

    const v9, 0x3d4ccccd    # 0.05f

    if-lez v8, :cond_0

    add-float/2addr v6, v9

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontBorder:Ljava/util/List;

    invoke-interface {v8, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v8}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontBorder:Ljava/util/List;

    invoke-interface {v8, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v10, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    iget-object v11, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/civilization/Civilization;->sCivName_UpperCase:Ljava/lang/String;

    invoke-virtual {v5, v8, v10}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    iget v3, v5, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->height:F

    iget v8, v5, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    cmpg-float v8, v4, v8

    if-gez v8, :cond_1

    sub-float/2addr v6, v9

    iput v6, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->fontScale:F

    goto/16 :goto_1

    :cond_0
    sub-float/2addr v6, v9

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontBorder:Ljava/util/List;

    invoke-interface {v8, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v8}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontBorder:Ljava/util/List;

    invoke-interface {v8, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v10, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    iget-object v11, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/civilization/Civilization;->sCivName_UpperCase:Ljava/lang/String;

    invoke-virtual {v5, v8, v10}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    iget v3, v5, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->height:F

    iget v8, v5, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    cmpl-float v8, v4, v8

    if-lez v8, :cond_1

    add-float/2addr v6, v9

    iput v6, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->fontScale:F

    goto :goto_1

    :cond_1
    add-int/lit8 v8, v7, 0x1

    const/16 v9, 0x3e7

    if-le v7, v9, :cond_2

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->fontScale:F
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_2
    move v7, v8

    goto/16 :goto_0

    :catch_0
    move-exception v4

    :try_start_3
    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->fontScale:F

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v4

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->fontScale:F

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v4, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setUpdateRegions(Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catch_2
    :try_start_5
    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->fontScale:F

    :catch_3
    :goto_1
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->buildAveragePoint()V

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->buildDrawData(I)V
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_2

    :catchall_0
    move-exception p1

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw p1
    :try_end_8
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_4

    :catch_4
    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->fontScale:F

    :try_start_9
    iget-object p1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p1

    invoke-virtual {p1, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setUpdateRegions(Z)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    :catch_5
    :cond_3
    :goto_2
    iget p1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->fontScale:F

    const/high16 v0, 0x3f600000    # 0.875f

    mul-float/2addr p1, v0

    iput p1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->fontScale2:F

    return v3
.end method

.method protected final containsProvince(I)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iProvincesSize:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final drawCivRegion(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 4

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->drawName:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getFontScale()F

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v1

    mul-float/2addr v0, v1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->CIV_NAMES_MIN_SCALE_OF_FONT:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getShortestPath()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getSecondSideOfMap()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getProvince(I)I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getFontScale()F

    move-result v3

    invoke-virtual {p0, p1, v2, v1, v3}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->drawCivilizationName(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getProvince(I)I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getFontScale()F

    move-result v1

    invoke-virtual {p0, p1, v2, v0, v1}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->drawCivilizationName_SecondSideOfMap(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    goto :goto_0

    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getProvince(I)I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getFontScale()F

    move-result v1

    invoke-virtual {p0, p1, v2, v0, v1}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->drawCivilizationName(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final drawCivRegion_Low(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 3

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->drawName:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getFontScale()F

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v1

    mul-float/2addr v0, v1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->CIV_NAMES_MIN_SCALE_OF_FONT:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getShortestPath()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getSecondSideOfMap()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getProvince(I)I

    move-result v0

    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->fontScale2:F

    invoke-virtual {p0, p1, v2, v0, v1}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->drawCivilizationName_Low(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    goto :goto_0

    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getProvince(I)I

    move-result v0

    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->fontScale2:F

    invoke-virtual {p0, p1, v2, v0, v1}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->drawCivilizationName_Low(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final declared-synchronized drawCivilizationName(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V
    .locals 7

    monitor-enter p0

    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontBorder:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    const/4 p4, 0x0

    :goto_0
    invoke-static {p3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivNameLength()I

    move-result v0

    if-ge p4, v0, :cond_0

    invoke-static {p3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0, p4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivNameCharacter(I)Ljava/lang/String;

    move-result-object v3

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v0

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lPoints:Ljava/util/List;

    invoke-interface {v1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->centerCharXY:Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v1

    sub-int v4, v0, v1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v0

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lPoints:Ljava/util/List;

    invoke-interface {v1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->centerCharXY:Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v1

    sub-int v5, v0, v1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->drawMatrix4:Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/badlogic/gdx/math/Matrix4;

    move-object v1, p1

    move v2, p2

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawTextRotatedBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/math/Matrix4;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized drawCivilizationName_Low(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V
    .locals 6

    monitor-enter p0

    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontBorder:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    invoke-static {p3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p3

    invoke-virtual {p3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result p3

    invoke-static {p3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p3

    iget-object v2, p3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->sCivName_UpperCase:Ljava/lang/String;

    sget-object p3, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {p3}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result p3

    iget-object p4, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lPoints:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {p4}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result p4

    add-int/2addr p3, p4

    iget-object p4, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->centerCharXY:Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {p4}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result p4

    sub-int v3, p3, p4

    sget-object p3, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {p3}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result p3

    iget-object p4, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lPoints:Ljava/util/List;

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {p4}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result p4

    add-int/2addr p3, p4

    iget-object p4, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->centerCharXY:Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {p4}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result p4

    sub-int v4, p3, p4

    iget v5, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->fAngle_Low:F

    move-object v0, p1

    move v1, p2

    invoke-static/range {v0 .. v5}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawTextRotatedBorder_2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IIF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected final declared-synchronized drawCivilizationName_SecondSideOfMap(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V
    .locals 7

    monitor-enter p0

    :try_start_0
    invoke-static {p3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getTranslateProvincePosX()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontBorder:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    const/4 p4, 0x0

    :goto_0
    invoke-static {p3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivNameLength()I

    move-result v0

    if-ge p4, v0, :cond_0

    invoke-static {p3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0, p4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivNameCharacter(I)Ljava/lang/String;

    move-result-object v3

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getSecondSideOfMap_MoveX()I

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lPoints:Ljava/util/List;

    invoke-interface {v1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->centerCharXY:Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v1

    sub-int v4, v0, v1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v0

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lPoints:Ljava/util/List;

    invoke-interface {v1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->centerCharXY:Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v1

    sub-int v5, v0, v1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->drawMatrix4:Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/badlogic/gdx/math/Matrix4;

    move-object v1, p1

    move v2, p2

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawTextRotatedBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/math/Matrix4;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final getAngle()F
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->fAngle:F

    return v0
.end method

.method public final getCharMaxHeight()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iCharMaxHeight:I

    return v0
.end method

.method public final getCharMaxWidth()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iCharMaxWidth:I

    return v0
.end method

.method public final getFontScale()F
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->fontScale:F

    return v0
.end method

.method protected getLineWidth(II)I
    .locals 3

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p1

    iget p1, p1, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p2

    iget p2, p2, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    invoke-static {v0, p1, v1, p2}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getLineWidth(IIII)I

    move-result p1

    return p1
.end method

.method public final getProvince(I)I
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public final getProvincesSize()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iProvincesSize:I

    return v0
.end method

.method public final getShortestPath()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->shortestLine:Ljava/util/List;

    return-object v0
.end method

.method public final removeProvince(I)V
    .locals 3

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->setCivRegionID(I)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lCoastlineProvinces:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lCoastlineProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lCoastlineProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iProvincesSize:I

    return-void
.end method

.method public final removeProvinceID(I)V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iProvincesSize:I

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_2

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lProvinces:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->iProvincesSize:I

    :goto_1
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lCoastlineProvinces:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lCoastlineProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->lCoastlineProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Laoc/kingdoms/lukasz/map/province/Province;->setCivRegionID(I)V

    goto :goto_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_3
    return-void
.end method

.method protected final updateDrawRegionName()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->drawName:Z

    return-void
.end method
