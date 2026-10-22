.class public Laoc/kingdoms/lukasz/map/map/MapScroll;
.super Ljava/lang/Object;
.source "MapScroll.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/map/map/MapScroll$ReverseDirection;
    }
.end annotation


# static fields
.field private static final MAX_SCROLLING_SPEED:I = 0x1f4

.field protected static final SCROLL_SLOW:F = 0.97f


# instance fields
.field private fScrollNewPosX:F

.field private fScrollNewPosY:F

.field private iScrollEvent_PosX:I

.field private iScrollEvent_PosY:I

.field private iScrollPosX:I

.field private iScrollPosX2:I

.field private iScrollPosY:I

.field private iScrollPosY2:I

.field private iStepID:I

.field private moveMapDirection:Z

.field private moveMapTime:J

.field private reverseDirectionX:Laoc/kingdoms/lukasz/map/map/MapScroll$ReverseDirection;

.field private reverseDirectionY:Laoc/kingdoms/lukasz/map/map/MapScroll$ReverseDirection;

.field private scrollEvent:Z

.field private scrollingTheMap:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->scrollingTheMap:Z

    const/4 v1, -0x1

    iput v1, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->iScrollPosX2:I

    iput v1, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->iScrollPosY2:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->moveMapTime:J

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->moveMapDirection:Z

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->iStepID:I

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->scrollEvent:Z

    const/4 v0, 0x0

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->reverseDirectionX:Laoc/kingdoms/lukasz/map/map/MapScroll$ReverseDirection;

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->reverseDirectionY:Laoc/kingdoms/lukasz/map/map/MapScroll$ReverseDirection;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapScroll;->buildReverseDirectionX()V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapScroll;->buildReverseDirectionY()V

    return-void
.end method

.method protected static final changeAnimationPos(II)F
    .locals 1

    const/high16 v0, 0x42c80000    # 100.0f

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    int-to-float p0, p1

    const/high16 p1, 0x41700000    # 15.0f

    :goto_0
    mul-float/2addr p0, p1

    div-float/2addr p0, v0

    return p0

    :pswitch_1
    int-to-float p0, p1

    const/high16 p1, 0x41200000    # 10.0f

    goto :goto_0

    :pswitch_2
    int-to-float p0, p1

    const/high16 p1, 0x40a00000    # 5.0f

    goto :goto_0

    :pswitch_3
    int-to-float p0, p1

    const/high16 p1, 0x40200000    # 2.5f

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private final setScrollEvent_Pos(II)V
    .locals 2

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->scrollEvent:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->scrollEvent:Z

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->iStepID:I

    iput p1, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->iScrollEvent_PosX:I

    iput p2, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->iScrollEvent_PosY:I

    sget-wide p1, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    const-wide/16 v0, 0xd0

    add-long/2addr p1, v0

    iput-wide p1, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->moveMapTime:J

    return-void
.end method


# virtual methods
.method protected final buildReverseDirectionX()V
    .locals 1

    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/CFG;->reverseDirectionX:Z

    if-eqz v0, :cond_0

    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapScroll$1;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/map/map/MapScroll$1;-><init>(Laoc/kingdoms/lukasz/map/map/MapScroll;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->reverseDirectionX:Laoc/kingdoms/lukasz/map/map/MapScroll$ReverseDirection;

    goto :goto_0

    :cond_0
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapScroll$2;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/map/map/MapScroll$2;-><init>(Laoc/kingdoms/lukasz/map/map/MapScroll;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->reverseDirectionX:Laoc/kingdoms/lukasz/map/map/MapScroll$ReverseDirection;

    :goto_0
    return-void
.end method

.method protected final buildReverseDirectionY()V
    .locals 1

    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/CFG;->reverseDirectionY:Z

    if-eqz v0, :cond_0

    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapScroll$3;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/map/map/MapScroll$3;-><init>(Laoc/kingdoms/lukasz/map/map/MapScroll;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->reverseDirectionY:Laoc/kingdoms/lukasz/map/map/MapScroll$ReverseDirection;

    goto :goto_0

    :cond_0
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapScroll$4;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/map/map/MapScroll$4;-><init>(Laoc/kingdoms/lukasz/map/map/MapScroll;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->reverseDirectionY:Laoc/kingdoms/lukasz/map/map/MapScroll$ReverseDirection;

    :goto_0
    return-void
.end method

.method protected getScrollingTheMap()Z
    .locals 1

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->scrollingTheMap:Z

    return v0
.end method

.method public final resetScrollInfo()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->iScrollPosY2:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->iScrollPosX2:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->iScrollPosY:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->iScrollPosX:I

    return-void
.end method

.method protected final setScrollEvent(I)V
    .locals 4

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterX()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v1, v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    div-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY()I

    move-result p1

    add-int/2addr v1, p1

    int-to-float p1, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v1, v1

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    div-float/2addr v1, v3

    div-float/2addr v1, v2

    sub-float/2addr p1, v1

    float-to-int p1, p1

    invoke-direct {p0, v0, p1}, Laoc/kingdoms/lukasz/map/map/MapScroll;->setScrollEvent_Pos(II)V

    return-void
.end method

.method protected final setScrollEvent_ToPosition(II)V
    .locals 3

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v0

    add-int/2addr v0, p1

    int-to-float p1, v0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v0, v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v1

    div-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sub-float/2addr p1, v0

    float-to-int p1, p1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v0

    add-int/2addr v0, p2

    int-to-float p2, v0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v0, v0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    div-float/2addr v0, v2

    div-float/2addr v0, v1

    sub-float/2addr p2, v0

    float-to-int p2, p2

    invoke-direct {p0, p1, p2}, Laoc/kingdoms/lukasz/map/map/MapScroll;->setScrollEvent_Pos(II)V

    return-void
.end method

.method public final setScrollPos(II)V
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->iScrollPosX:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->iScrollPosX2:I

    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->iScrollPosY:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->iScrollPosY2:I

    iput p1, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->iScrollPosX:I

    iput p2, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->iScrollPosY:I

    return-void
.end method

.method protected final startScrollingTheMap()V
    .locals 7

    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/CFG;->brushTool:Z

    const/4 v1, 0x1

    if-nez v0, :cond_8

    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->iScrollPosX2:I

    if-gez v0, :cond_0

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->iScrollPosY2:I

    if-ltz v2, :cond_8

    :cond_0
    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->iScrollPosX:I

    sub-int/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v4, 0x40800000    # 4.0f

    if-eqz v2, :cond_1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    int-to-float v2, v2

    mul-float/2addr v2, v3

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->DENSITY:F

    mul-float/2addr v2, v5

    cmpl-float v0, v0, v2

    const/4 v2, -0x1

    const v5, 0x3f99999a    # 1.2f

    if-lez v0, :cond_3

    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->iScrollPosX:I

    iget v6, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->iScrollPosX2:I

    sub-int/2addr v0, v6

    int-to-float v0, v0

    mul-float/2addr v0, v5

    sget-boolean v6, Laoc/kingdoms/lukasz/jakowski/CFG;->reverseDirectionX:Z

    if-eqz v6, :cond_2

    move v6, v1

    goto :goto_1

    :cond_2
    move v6, v2

    :goto_1
    int-to-float v6, v6

    mul-float/2addr v0, v6

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->fScrollNewPosX:F

    iput-boolean v1, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->scrollingTheMap:Z

    :cond_3
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->iScrollPosY:I

    iget v6, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->iScrollPosY2:I

    sub-int/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v6

    if-eqz v6, :cond_4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    int-to-float v4, v4

    mul-float/2addr v4, v3

    :cond_4
    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->DENSITY:F

    mul-float/2addr v4, v3

    cmpl-float v0, v0, v4

    if-lez v0, :cond_6

    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->iScrollPosY:I

    iget v3, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->iScrollPosY2:I

    sub-int/2addr v0, v3

    int-to-float v0, v0

    mul-float/2addr v0, v5

    sget-boolean v3, Laoc/kingdoms/lukasz/jakowski/CFG;->reverseDirectionY:Z

    if-eqz v3, :cond_5

    move v2, v1

    :cond_5
    int-to-float v2, v2

    mul-float/2addr v0, v2

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->fScrollNewPosY:F

    iput-boolean v1, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->scrollingTheMap:Z

    :cond_6
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    const/high16 v2, 0x43fa0000    # 500.0f

    const/high16 v3, -0x3c060000    # -500.0f

    if-lez v0, :cond_7

    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->fScrollNewPosX:F

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v4

    div-float/2addr v0, v4

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->fScrollNewPosX:F

    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->fScrollNewPosY:F

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    div-float/2addr v0, v2

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->fScrollNewPosY:F

    goto :goto_2

    :cond_7
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->fScrollNewPosX:F

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->fScrollNewPosX:F

    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->fScrollNewPosY:F

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->fScrollNewPosY:F

    :cond_8
    :goto_2
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->iScrollPosX:I

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->iScrollPosX2:I

    if-eq v0, v2, :cond_a

    if-le v0, v2, :cond_9

    goto :goto_3

    :cond_9
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/map/MapScroll;->updateMoveMapDirection(Z)V

    :cond_a
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapScroll;->resetScrollInfo()V

    return-void
.end method

.method public final stopScrollingTheMap()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->scrollingTheMap:Z

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->scrollEvent:Z

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapScroll;->resetScrollInfo()V

    return-void
.end method

.method protected final update()V
    .locals 5

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->scrollEvent:Z

    if-eqz v0, :cond_0

    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->iStepID:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_4

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v2

    iget v3, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->iStepID:I

    iget v4, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->iScrollEvent_PosX:I

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/map/map/MapScroll;->changeAnimationPos(II)F

    move-result v3

    float-to-int v3, v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->setNewPosX(I)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v2

    iget v3, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->iStepID:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->iStepID:I

    iget v4, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->iScrollEvent_PosY:I

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/map/map/MapScroll;->changeAnimationPos(II)F

    move-result v3

    float-to-int v3, v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->setNewPosY(I)V

    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->iStepID:I

    if-ne v0, v1, :cond_4

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v0, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->moveMapTime:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->scrollEvent:Z

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->scrollingTheMap:Z

    if-eqz v0, :cond_4

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/map/map/MapCoords;->disableMovingMap:Z

    if-nez v0, :cond_4

    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->fScrollNewPosX:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_2

    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->fScrollNewPosY:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapScroll;->stopScrollingTheMap()V

    goto :goto_1

    :cond_2
    :goto_0
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->fScrollNewPosX:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v1

    const v2, 0x3f7851ec    # 0.97f

    if-lez v0, :cond_3

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->reverseDirectionX:Laoc/kingdoms/lukasz/map/map/MapScroll$ReverseDirection;

    iget v4, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->fScrollNewPosX:F

    float-to-int v4, v4

    invoke-interface {v3, v4}, Laoc/kingdoms/lukasz/map/map/MapScroll$ReverseDirection;->getNewPos(I)I

    move-result v3

    invoke-virtual {v0, v3}, Laoc/kingdoms/lukasz/map/map/MapCoords;->setNewPosX(I)V

    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->fScrollNewPosX:F

    mul-float/2addr v0, v2

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->fScrollNewPosX:F

    :cond_3
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->fScrollNewPosY:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->reverseDirectionY:Laoc/kingdoms/lukasz/map/map/MapScroll$ReverseDirection;

    iget v3, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->fScrollNewPosY:F

    float-to-int v3, v3

    invoke-interface {v1, v3}, Laoc/kingdoms/lukasz/map/map/MapScroll$ReverseDirection;->getNewPos(I)I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->setNewPosY(I)V

    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->fScrollNewPosY:F

    mul-float/2addr v0, v2

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->fScrollNewPosY:F

    :cond_4
    :goto_1
    return-void
.end method

.method protected final updateMoveMapDirection(Z)V
    .locals 2

    iput-boolean p1, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->moveMapDirection:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Laoc/kingdoms/lukasz/map/map/MapScroll;->moveMapTime:J

    return-void
.end method
