.class public Laoc/kingdoms/lukasz/map/map/MapTouchManager;
.super Ljava/lang/Object;
.source "MapTouchManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/map/map/MapTouchManager$ReverseDirection2;,
        Laoc/kingdoms/lukasz/map/map/MapTouchManager$ReverseDirection;
    }
.end annotation


# static fields
.field protected static reverseDirectionX:Z = true

.field protected static reverseDirectionY:Z = true


# instance fields
.field public actionDownPosX:I

.field public actionDownPosY:I

.field public disableMovingMap:Z

.field public enableSelectMode:Z

.field public iSelectBoxHeight:I

.field public iSelectBoxWidth:I

.field public iSelectBoxX:I

.field public iSelectBoxY:I

.field public iStartMovePosX:I

.field public iStartMovePosY:I

.field private lActionDownTime:J

.field public mapMoveDirectionX:Laoc/kingdoms/lukasz/map/map/MapTouchManager$ReverseDirection;

.field public mapMoveDirectionX2:Laoc/kingdoms/lukasz/map/map/MapTouchManager$ReverseDirection2;

.field public mapMoveDirectionY:Laoc/kingdoms/lukasz/map/map/MapTouchManager$ReverseDirection;

.field public mapMoveDirectionY2:Laoc/kingdoms/lukasz/map/map/MapTouchManager$ReverseDirection2;

.field public selectMode:Z

.field public updateStartMovePosX:Z

.field public updateStartMovePosY:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->actionDownPosX:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->actionDownPosY:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->lActionDownTime:J

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->disableMovingMap:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->enableSelectMode:Z

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->selectMode:Z

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->buildReversePos()V

    return-void
.end method

.method public static final actionUpSelectModeIsInBox(IIIIII)Z
    .locals 2

    :try_start_0
    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getArmyPosX(II)I

    move-result v0

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getArmyPosY(II)I

    move-result v1

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p0

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object p0

    iget p0, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyWidth:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getArmyWidth(I)I

    move-result p0

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getArmyHeight()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ge v0, p4, :cond_0

    if-gt v0, p2, :cond_1

    :cond_0
    add-int/2addr v0, p0

    if-ge v0, p4, :cond_4

    if-le v0, p2, :cond_4

    :cond_1
    if-le v1, p3, :cond_2

    if-lt v1, p5, :cond_3

    :cond_2
    add-int/2addr v1, p1

    if-le v1, p3, :cond_4

    if-ge v1, p5, :cond_4

    :cond_3
    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public static final actionUpSelectModeIsInBox_Center(IIIII)Z
    .locals 2

    :try_start_0
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getDetailsPosX_2(I)I

    move-result v0

    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getDetailsPosY_2(I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    if-ge v0, p3, :cond_0

    if-gt v0, p1, :cond_1

    :cond_0
    add-int/2addr v0, v1

    if-ge v0, p3, :cond_4

    if-le v0, p1, :cond_4

    :cond_1
    if-le p0, p2, :cond_2

    if-lt p0, p4, :cond_3

    :cond_2
    add-int/2addr p0, v1

    if-le p0, p2, :cond_4

    if-ge p0, p4, :cond_4

    :cond_3
    return v1

    :catch_0
    move-exception p0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_4
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final Scroll(I)V
    .locals 1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/map/map/MapScale;->scrollScale(I)V

    return-void
.end method

.method public final actionDown(IIII)V
    .locals 1

    :try_start_0
    invoke-virtual {p0, p1, p2}, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->setActionDownPosXY(II)V

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->enableSelectMode:Z

    if-eqz v0, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->MAP_SELECT_ARMY_BUTTON:I

    if-ne p4, v0, :cond_0

    iput p1, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxX:I

    iput p2, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxY:I

    const/4 p1, 0x1

    iput p1, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxWidth:I

    iput p1, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxHeight:I

    iput-boolean p1, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->selectMode:Z

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->setCursorDrag()V

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->selectMode:Z

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScroll:Laoc/kingdoms/lukasz/map/map/MapScroll;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScroll;->getScrollingTheMap()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScroll:Laoc/kingdoms/lukasz/map/map/MapScroll;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScroll;->stopScrollingTheMap()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    :try_start_1
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction;->actionDown_ExtraAction:Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$ExtraAction;

    invoke-interface {v0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$ExtraAction;->extraAction(IIII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final actionMove(III)V
    .locals 2

    :try_start_0
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/CFG;->brushTool:Z

    if-eqz v0, :cond_0

    sget v0, Laoc/kingdoms/lukasz/jakowski/Touch;->buttonTouch:I

    if-nez v0, :cond_0

    iput p1, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->actionDownPosX:I

    iput p2, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->actionDownPosY:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameActiveProvince:Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;->actionUp_setActiveProvinceID(IIII)V

    return-void

    :cond_0
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->selectMode:Z

    if-eqz v0, :cond_1

    iget p3, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxX:I

    sub-int/2addr p1, p3

    iput p1, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxWidth:I

    iget p1, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxY:I

    sub-int/2addr p2, p1

    iput p2, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxHeight:I

    return-void

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->actionMoveMap(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final actionMove(IIII)V
    .locals 1

    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/map/map/MapCoords;->disableMovingMap:Z

    if-nez v0, :cond_1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getEnableScaling()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getStartScalePosY()I

    move-result v0

    if-gtz v0, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0, p1, p3, p2, p4}, Laoc/kingdoms/lukasz/map/map/MapScale;->startScaleTheMap(IIII)V

    goto :goto_0

    :cond_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0, p1, p3, p2, p4}, Laoc/kingdoms/lukasz/map/map/MapScale;->scaleTheMap(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected final actionMoveMap(III)V
    .locals 3

    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapTouchManager:Laoc/kingdoms/lukasz/map/map/MapTouchManager;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->disableMovingMap:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-boolean p3, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->updateStartMovePosX:Z

    if-nez p3, :cond_0

    iget-boolean p3, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->updateStartMovePosY:Z

    if-eqz p3, :cond_1

    :cond_0
    invoke-virtual {p0, p1, p2}, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->updateStartMovePosXY(II)V

    iput-boolean v1, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->updateStartMovePosX:Z

    iput-boolean v1, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->updateStartMovePosY:Z

    :cond_1
    sget-object p3, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->mapMoveDirectionX2:Laoc/kingdoms/lukasz/map/map/MapTouchManager$ReverseDirection2;

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iStartMovePosX:I

    int-to-float p1, p1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    div-float/2addr p1, v2

    float-to-int p1, p1

    invoke-interface {v0, v1, p1}, Laoc/kingdoms/lukasz/map/map/MapTouchManager$ReverseDirection2;->getNewPos(II)I

    move-result p1

    invoke-virtual {p3, p1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->setNewPosX(I)V

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    iget-object p3, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->mapMoveDirectionY2:Laoc/kingdoms/lukasz/map/map/MapTouchManager$ReverseDirection2;

    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iStartMovePosY:I

    int-to-float p2, p2

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v1

    div-float/2addr p2, v1

    float-to-int p2, p2

    invoke-interface {p3, v0, p2}, Laoc/kingdoms/lukasz/map/map/MapTouchManager$ReverseDirection2;->getNewPos(II)I

    move-result p2

    invoke-virtual {p1, p2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->setNewPosY(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :cond_2
    :try_start_1
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction;->actionMove_ExtraAction:Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$ExtraAction;

    invoke-interface {v0, p1, p2, p3, v1}, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$ExtraAction;->extraAction(IIII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final actionUp(IIII)V
    .locals 8

    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getEnableScaling()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->MAP_MOVE:I

    if-eq p4, v0, :cond_0

    if-ne p4, v1, :cond_1

    :cond_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    invoke-virtual {v0, v2, v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->resetScaleOfMap(J)V

    :cond_1
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->selectMode:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->MAP_SELECT_ARMY_BUTTON:I

    if-eq p4, v0, :cond_2

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iput-boolean v2, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->selectMode:Z

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->setCursorDefault()V

    invoke-virtual {p0, p1, p2}, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->actionUpSelectMode(II)V

    return-void

    :cond_3
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInGame()Z

    move-result v0

    const-wide/16 v3, 0x0

    if-eqz v0, :cond_3d

    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->chooseProvinceMode:Z

    if-nez v0, :cond_3d

    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->actionDownPosX:I

    sub-int v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    div-int/lit8 v5, v5, 0x2

    if-ge v0, v5, :cond_3d

    const/4 v0, -0x1

    if-ne p4, v1, :cond_9

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmySize:I

    if-lez v5, :cond_4

    sget-object p3, Laoc/kingdoms/lukasz/jakowski/Game;->gameActiveProvince:Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;

    invoke-virtual {p3, p1, p2}, Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;->setProvinceID_PPM(II)V

    return-void

    :cond_4
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v6, v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_RECRUIT_ARMY:I

    if-eq v5, v6, :cond_3d

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v6, v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_BUILDING:I

    if-eq v5, v6, :cond_3d

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v6, v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_NEW_ARMY_CHOOSE_PROVINCE:I

    if-eq v5, v6, :cond_3d

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v6, v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_NUKE_CHOOSE_PROVINCE:I

    if-eq v5, v6, :cond_3d

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v6, v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_COLONIZE_CHOOSE_PROVINCE:I

    if-eq v5, v6, :cond_3d

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v6, v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_WARS:I

    if-eq v5, v6, :cond_3d

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v6, v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_MERCENARIES_CHOOSE_PROVINCE:I

    if-eq v5, v6, :cond_3d

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v6, v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_PEACE_VIEW:I

    if-eq v5, v6, :cond_3d

    sget p1, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    if-ltz p1, :cond_5

    sget p1, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->setActiveProvinceID(I)V

    sget-object p1, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->action:Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$Action;

    sget p2, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-interface {p1, p2}, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$Action;->setProvinceID(I)V

    :cond_5
    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Civ()Z

    move-result p1

    if-eqz p1, :cond_7

    sget p1, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    if-ltz p1, :cond_6

    sget p1, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result p1

    sget p2, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    if-ne p1, p2, :cond_6

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p1, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Civ(Z)V

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->gameActiveProvince:Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;->resetLastActiveProvince()V

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->setActiveProvinceID(I)V

    goto :goto_0

    :cond_6
    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Civ()V

    sput-wide v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->lTime:J

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    invoke-virtual {p2}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getDiplomacy()I

    move-result p2

    invoke-virtual {p1, p2}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->playSound(I)V

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_CivBonuses()Z

    move-result p1

    if-eqz p1, :cond_8

    sget p1, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    if-eqz p1, :cond_8

    sget p1, Laoc/kingdoms/lukasz/menusInGame/InGame_CivBonuses;->iCivID:I

    sget p2, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    if-eq p1, p2, :cond_8

    sget p1, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    sput p1, Laoc/kingdoms/lukasz/menusInGame/InGame_CivBonuses;->iCivID:I

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_CivBonuses()V

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p1, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_CivBonuses(Z)V

    sput-wide v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivBonuses;->lTime:J

    goto :goto_0

    :cond_7
    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Civ()V

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    invoke-virtual {p2}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getDiplomacy()I

    move-result p2

    invoke-virtual {p1, p2}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->playSound(I)V

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_CivBonuses()Z

    move-result p1

    if-eqz p1, :cond_8

    sget p1, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    if-eqz p1, :cond_8

    sget p1, Laoc/kingdoms/lukasz/menusInGame/InGame_CivBonuses;->iCivID:I

    sget p2, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    if-eq p1, p2, :cond_8

    sget p1, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    sput p1, Laoc/kingdoms/lukasz/menusInGame/InGame_CivBonuses;->iCivID:I

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_CivBonuses()V

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p1, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_CivBonuses(Z)V

    sput-wide v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivBonuses;->lTime:J

    :cond_8
    :goto_0
    return-void

    :cond_9
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v6, v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_RECRUIT_ARMY:I

    if-eq v5, v6, :cond_3d

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v6, v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_NEW_ARMY_CHOOSE_PROVINCE:I

    if-eq v5, v6, :cond_3d

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v6, v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_NUKE_CHOOSE_PROVINCE:I

    if-eq v5, v6, :cond_3d

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v6, v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_COLONIZE_CHOOSE_PROVINCE:I

    if-eq v5, v6, :cond_3d

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v6, v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_MERCENARIES_CHOOSE_PROVINCE:I

    if-eq v5, v6, :cond_3d

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v6, v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_INVEST_IN_ECONOMY:I

    if-eq v5, v6, :cond_3d

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v6, v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEVELOP_INFRASTRUCTURE:I

    if-eq v5, v6, :cond_3d

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v6, v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_INCREASE_TAX_EFFICIENCY:I

    if-eq v5, v6, :cond_3d

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v6, v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_INCREASE_MANPOWER:I

    if-eq v5, v6, :cond_3d

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v6, v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_MOVE_CAPITAL:I

    if-eq v5, v6, :cond_3d

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v6, v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_INCREASE_GROWTH_RATE:I

    if-eq v5, v6, :cond_3d

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v6, v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_BUILDING:I

    if-eq v5, v6, :cond_3d

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v6, v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_CONVERT_RELIGION:I

    if-eq v5, v6, :cond_3d

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v6, v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_CORE:I

    if-eq v5, v6, :cond_3d

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v6, v6, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_PEACE_VIEW:I

    if-eq v5, v6, :cond_3d

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/Game;->DRAW_ARMY_MIN_SCALE:F

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_3d

    sget-boolean v5, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawArmyInProvince:Z

    if-eqz v5, :cond_3d

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v5

    if-eqz v5, :cond_1c

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredBattle:Laoc/kingdoms/lukasz/jakowski/Game$HoveredBattle;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/Game$HoveredBattle;->iProvinceID:I

    if-ltz v5, :cond_c

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredBattle:Laoc/kingdoms/lukasz/jakowski/Game$HoveredBattle;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/Game$HoveredBattle;->iProvinceID:I

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredBattle:Laoc/kingdoms/lukasz/jakowski/Game$HoveredBattle;

    iget-object v7, v7, Laoc/kingdoms/lukasz/jakowski/Game$HoveredBattle;->key:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattleID(ILjava/lang/String;)I

    move-result v5

    invoke-static {p1, p2, v5}, Laoc/kingdoms/lukasz/jakowski/Touch;->isMouseOverBattle(III)Z

    move-result v5

    if-eqz v5, :cond_3d

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredBattle:Laoc/kingdoms/lukasz/jakowski/Game$HoveredBattle;

    iget p1, p1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredBattle;->iProvinceID:I

    sput p1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->iProvinceID:I

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredBattle:Laoc/kingdoms/lukasz/jakowski/Game$HoveredBattle;

    iget-object p1, p1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredBattle;->key:Ljava/lang/String;

    sput-object p1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->key:Ljava/lang/String;

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Siege()Z

    move-result p1

    if-eqz p1, :cond_a

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p1, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Siege(Z)V

    :cond_a
    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_War()Z

    move-result p1

    if-eqz p1, :cond_b

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p1, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_War(Z)V

    :cond_b
    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/menu/MenuManager;->showInGame_Battle_HideMenus()V

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Battle()V

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->gameActiveProvince:Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;->resetLastActiveProvince()V

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->setActiveProvinceID(I)V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->clearActiveArmy()V

    return-void

    :cond_c
    sget v5, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredSiegeID:I

    if-ltz v5, :cond_10

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredSiegeID:I

    invoke-static {p1, p2, v5}, Laoc/kingdoms/lukasz/jakowski/Touch;->isMouseOverSiege(III)Z

    move-result v5

    if-eqz v5, :cond_3d

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Siege()Z

    move-result p1

    if-eqz p1, :cond_d

    sget p1, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceSiege;->iProvinceID:I

    sget p2, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredSiegeID:I

    if-ne p1, p2, :cond_d

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p1, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Siege(Z)V

    goto :goto_1

    :cond_d
    sget p1, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredSiegeID:I

    sput p1, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceSiege;->iProvinceID:I

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Battle()Z

    move-result p1

    if-eqz p1, :cond_e

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p1, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Battle(Z)V

    :cond_e
    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_War()Z

    move-result p1

    if-eqz p1, :cond_f

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p1, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_War(Z)V

    :cond_f
    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/menu/MenuManager;->showInGame_Battle_HideMenus()V

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Siege()V

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    sget p2, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SIEGE:I

    invoke-virtual {p1, p2}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->playSound(I)V

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->gameActiveProvince:Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;->resetLastActiveProvince()V

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->setActiveProvinceID(I)V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->clearActiveArmy()V

    :goto_1
    return-void

    :cond_10
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    if-ltz v5, :cond_17

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    invoke-static {p1, p2, v5, v6}, Laoc/kingdoms/lukasz/jakowski/Touch;->isMouseOverArmy(IIII)Z

    move-result v5

    if-eqz v5, :cond_3d

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v1, :cond_11

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget p1, p1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result p1

    if-le p1, v1, :cond_11

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget-object p1, p1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->key:Ljava/lang/String;

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget p2, p2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p2

    sget-object p3, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget p3, p3, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    invoke-virtual {p2, p3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object p2

    iget-object p2, p2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_2

    :cond_11
    move v1, v2

    :goto_2
    sget-boolean p1, Laoc/kingdoms/lukasz/jakowski/AA_KeyManager;->CTRL_HOLD:Z

    if-eqz p1, :cond_13

    new-instance p1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    invoke-direct {p1}, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;-><init>()V

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget p2, p2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p2

    sget-object p3, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget p3, p3, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    invoke-virtual {p2, p3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object p2

    iget-object p2, p2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    iput-object p2, p1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->key:Ljava/lang/String;

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget p2, p2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p2

    sget-object p3, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget p3, p3, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    invoke-virtual {p2, p3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object p2

    iget p2, p2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    iput p2, p1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iCivID:I

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget p2, p2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    iput p2, p1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget p2, p2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    iput p2, p1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    iget-object p2, p1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->key:Ljava/lang/String;

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->isAlreadyActiveArmy(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_12

    iget-object p1, p1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->key:Ljava/lang/String;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->removeActiveArmy(Ljava/lang/String;)V

    goto :goto_3

    :cond_12
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->addActiveArmy(Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;)V

    :goto_3
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction;->actionUp_SetActiveArmy()V

    goto/16 :goto_5

    :cond_13
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->clearActiveArmy()V

    if-eqz v1, :cond_15

    :goto_4
    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget p1, p1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result p1

    if-ge v2, p1, :cond_16

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget p1, p1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p1

    invoke-virtual {p1, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object p1

    iget p1, p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget p2, p2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p2

    sget-object p3, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget p3, p3, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    invoke-virtual {p2, p3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object p2

    iget p2, p2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    if-ne p1, p2, :cond_14

    new-instance p1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    invoke-direct {p1}, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;-><init>()V

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget p2, p2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p2

    invoke-virtual {p2, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object p2

    iget-object p2, p2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    iput-object p2, p1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->key:Ljava/lang/String;

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget p2, p2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p2

    invoke-virtual {p2, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object p2

    iget p2, p2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    iput p2, p1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iCivID:I

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget p2, p2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    iput p2, p1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    iput v2, p1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->addActiveArmy(Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;)V

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction;->actionUp_SetActiveArmy()V

    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_15
    new-instance p1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    invoke-direct {p1}, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;-><init>()V

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget p2, p2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p2

    sget-object p3, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget p3, p3, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    invoke-virtual {p2, p3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object p2

    iget-object p2, p2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    iput-object p2, p1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->key:Ljava/lang/String;

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget p2, p2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p2

    sget-object p3, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget p3, p3, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    invoke-virtual {p2, p3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object p2

    iget p2, p2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    iput p2, p1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iCivID:I

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget p2, p2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    iput p2, p1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget p2, p2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    iput p2, p1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->addActiveArmy(Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;)V

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction;->actionUp_SetActiveArmy()V

    :cond_16
    :goto_5
    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->gameActiveProvince:Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;->resetLastActiveProvince()V

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->setActiveProvinceID(I)V

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->animationHover:Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;->resetAnimationData()V

    return-void

    :cond_17
    sget v5, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredCapitalProvinceID:I

    if-ltz v5, :cond_3d

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredCapitalProvinceID:I

    invoke-static {p1, p2, v5}, Laoc/kingdoms/lukasz/jakowski/Touch;->isMouseOverCapitalProvince_Flag(III)Z

    move-result v5

    if-eqz v5, :cond_3d

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->gameActiveProvince:Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;->resetLastActiveProvince()V

    sget p1, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredCapitalProvinceID:I

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->setActiveProvinceID(I)V

    sget-object p1, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->action:Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$Action;

    sget p2, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-interface {p1, p2}, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$Action;->setProvinceID(I)V

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->animationHover:Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;->resetAnimationData()V

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Civ()Z

    move-result p1

    if-eqz p1, :cond_1a

    sget p1, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    sget p2, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredCapitalProvinceID:I

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p2

    invoke-virtual {p2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result p2

    if-eq p1, p2, :cond_19

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Civ()V

    sput-wide v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->lTime:J

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_CivBonuses()Z

    move-result p1

    if-eqz p1, :cond_18

    sget p1, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredCapitalProvinceID:I

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result p1

    if-eqz p1, :cond_18

    sget p1, Laoc/kingdoms/lukasz/menusInGame/InGame_CivBonuses;->iCivID:I

    sget p2, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredCapitalProvinceID:I

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p2

    invoke-virtual {p2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result p2

    if-eq p1, p2, :cond_18

    sget p1, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredCapitalProvinceID:I

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result p1

    sput p1, Laoc/kingdoms/lukasz/menusInGame/InGame_CivBonuses;->iCivID:I

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_CivBonuses()V

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p1, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_CivBonuses(Z)V

    sput-wide v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivBonuses;->lTime:J

    :cond_18
    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    invoke-virtual {p2}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getDiplomacy()I

    move-result p2

    invoke-virtual {p1, p2}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->playSound(I)V

    goto :goto_6

    :cond_19
    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p1, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Civ(Z)V

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    sget p2, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_CLICK_TOP:I

    invoke-virtual {p1, p2}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->playSound(I)V

    goto :goto_6

    :cond_1a
    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Civ()V

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_CivBonuses()Z

    move-result p1

    if-eqz p1, :cond_1b

    sget p1, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredCapitalProvinceID:I

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result p1

    if-eqz p1, :cond_1b

    sget p1, Laoc/kingdoms/lukasz/menusInGame/InGame_CivBonuses;->iCivID:I

    sget p2, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredCapitalProvinceID:I

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p2

    invoke-virtual {p2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result p2

    if-eq p1, p2, :cond_1b

    sget p1, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredCapitalProvinceID:I

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result p1

    sput p1, Laoc/kingdoms/lukasz/menusInGame/InGame_CivBonuses;->iCivID:I

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_CivBonuses()V

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p1, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_CivBonuses(Z)V

    sput-wide v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivBonuses;->lTime:J

    :cond_1b
    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    invoke-virtual {p2}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getDiplomacy()I

    move-result p2

    invoke-virtual {p1, p2}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->playSound(I)V

    :goto_6
    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->gameActiveProvince:Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;->resetLastActiveProvince()V

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->setActiveProvinceID(I)V

    return-void

    :cond_1c
    move v5, v2

    :goto_7
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattleSize()I

    move-result v6

    if-ge v5, v6, :cond_20

    invoke-static {p1, p2, v5}, Laoc/kingdoms/lukasz/jakowski/Touch;->isMouseOverBattle(III)Z

    move-result v6

    if-eqz v6, :cond_1f

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    invoke-virtual {p1, v5}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object p1

    iget p1, p1, Laoc/kingdoms/lukasz/map/battles/Battle;->provinceID:I

    sput p1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->iProvinceID:I

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    invoke-virtual {p1, v5}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object p1

    iget-object p1, p1, Laoc/kingdoms/lukasz/map/battles/Battle;->key:Ljava/lang/String;

    sput-object p1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->key:Ljava/lang/String;

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Siege()Z

    move-result p1

    if-eqz p1, :cond_1d

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p1, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Siege(Z)V

    :cond_1d
    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_War()Z

    move-result p1

    if-eqz p1, :cond_1e

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p1, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_War(Z)V

    :cond_1e
    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/menu/MenuManager;->showInGame_Battle_HideMenus()V

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Battle()V

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->gameActiveProvince:Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;->resetLastActiveProvince()V

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->setActiveProvinceID(I)V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->clearActiveArmy()V

    return-void

    :cond_1f
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_20
    move v5, v2

    :goto_8
    sget v6, Laoc/kingdoms/lukasz/map/SiegeManager;->iProvincesSize:I

    if-ge v5, v6, :cond_25

    sget-object v6, Laoc/kingdoms/lukasz/map/SiegeManager;->lProvinces:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {p1, p2, v6}, Laoc/kingdoms/lukasz/jakowski/Touch;->isMouseOverSiege(III)Z

    move-result v6

    if-eqz v6, :cond_24

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Siege()Z

    move-result p1

    if-eqz p1, :cond_21

    sget p1, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceSiege;->iProvinceID:I

    sget-object p2, Laoc/kingdoms/lukasz/map/SiegeManager;->lProvinces:Ljava/util/List;

    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p1, p2, :cond_21

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p1, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Siege(Z)V

    goto :goto_9

    :cond_21
    sget-object p1, Laoc/kingdoms/lukasz/map/SiegeManager;->lProvinces:Ljava/util/List;

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sput p1, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceSiege;->iProvinceID:I

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Battle()Z

    move-result p1

    if-eqz p1, :cond_22

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p1, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Battle(Z)V

    :cond_22
    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_War()Z

    move-result p1

    if-eqz p1, :cond_23

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p1, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_War(Z)V

    :cond_23
    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/menu/MenuManager;->showInGame_Battle_HideMenus()V

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Siege()V

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    sget p2, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SIEGE:I

    invoke-virtual {p1, p2}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->playSound(I)V

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->gameActiveProvince:Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;->resetLastActiveProvince()V

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->setActiveProvinceID(I)V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->clearActiveArmy()V

    :goto_9
    return-void

    :cond_24
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_25
    move v5, v2

    :goto_a
    sget v6, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v5, v6, :cond_28

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getFogDrawArmy()Z

    move-result v6

    if-eqz v6, :cond_27

    move v6, v2

    :goto_b
    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v7

    if-ge v6, v7, :cond_27

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7, v6}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v7

    iget-boolean v7, v7, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z

    if-nez v7, :cond_26

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v7

    invoke-static {p1, p2, v7, v6}, Laoc/kingdoms/lukasz/jakowski/Touch;->isMouseOverArmy(IIII)Z

    move-result v7

    if-eqz v7, :cond_26

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->clearActiveArmy()V

    new-instance p1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    invoke-direct {p1}, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;-><init>()V

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result p2

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p2

    invoke-virtual {p2, v6}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object p2

    iget-object p2, p2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    iput-object p2, p1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->key:Ljava/lang/String;

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result p2

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p2

    invoke-virtual {p2, v6}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object p2

    iget p2, p2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    iput p2, p1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iCivID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result p2

    iput p2, p1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    iput v6, p1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->addActiveArmy(Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;)V

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction;->actionUp_SetActiveArmy()V

    return-void

    :cond_26
    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    :cond_27
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    :cond_28
    move v5, v2

    :goto_c
    sget v6, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v5, v6, :cond_2b

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getFogDrawArmy()Z

    move-result v6

    if-eqz v6, :cond_2a

    move v6, v2

    :goto_d
    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v7

    if-ge v6, v7, :cond_2a

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7, v6}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v7

    iget-boolean v7, v7, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z

    if-nez v7, :cond_29

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v7

    invoke-static {p1, p2, v7, v6}, Laoc/kingdoms/lukasz/jakowski/Touch;->isMouseOverArmy(IIII)Z

    move-result v7

    if-eqz v7, :cond_29

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->clearActiveArmy()V

    new-instance p1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    invoke-direct {p1}, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;-><init>()V

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result p2

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p2

    invoke-virtual {p2, v6}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object p2

    iget-object p2, p2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    iput-object p2, p1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->key:Ljava/lang/String;

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result p2

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p2

    invoke-virtual {p2, v6}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object p2

    iget p2, p2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    iput p2, p1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iCivID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result p2

    iput p2, p1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    iput v6, p1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->addActiveArmy(Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;)V

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction;->actionUp_SetActiveArmy()V

    return-void

    :cond_29
    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    :cond_2a
    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    :cond_2b
    move v5, v2

    :goto_e
    sget v6, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_SEA_PROVINCES_IN_VIEW:I

    if-ge v5, v6, :cond_2e

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getSeaProvinceInViewID(I)I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getFogDrawArmy()Z

    move-result v6

    if-eqz v6, :cond_2d

    move v6, v2

    :goto_f
    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getSeaProvinceInViewID(I)I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v7

    if-ge v6, v7, :cond_2d

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getSeaProvinceInViewID(I)I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7, v6}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v7

    iget-boolean v7, v7, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z

    if-nez v7, :cond_2c

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getSeaProvinceInViewID(I)I

    move-result v7

    invoke-static {p1, p2, v7, v6}, Laoc/kingdoms/lukasz/jakowski/Touch;->isMouseOverArmy(IIII)Z

    move-result v7

    if-eqz v7, :cond_2c

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->clearActiveArmy()V

    new-instance p1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    invoke-direct {p1}, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;-><init>()V

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getSeaProvinceInViewID(I)I

    move-result p2

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p2

    invoke-virtual {p2, v6}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object p2

    iget-object p2, p2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    iput-object p2, p1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->key:Ljava/lang/String;

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getSeaProvinceInViewID(I)I

    move-result p2

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p2

    invoke-virtual {p2, v6}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object p2

    iget p2, p2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    iput p2, p1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iCivID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getSeaProvinceInViewID(I)I

    move-result p2

    iput p2, p1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    iput v6, p1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->addActiveArmy(Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;)V

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction;->actionUp_SetActiveArmy()V

    return-void

    :cond_2c
    add-int/lit8 v6, v6, 0x1

    goto :goto_f

    :cond_2d
    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    :cond_2e
    move v5, v2

    :goto_10
    sget v6, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_WASTELAND_PROVINCES_IN_VIEW:I

    if-ge v5, v6, :cond_31

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getWastelandProvinceInViewID(I)I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getFogDrawArmy()Z

    move-result v6

    if-eqz v6, :cond_30

    move v6, v2

    :goto_11
    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getWastelandProvinceInViewID(I)I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v7

    if-ge v6, v7, :cond_30

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getWastelandProvinceInViewID(I)I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7, v6}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v7

    iget-boolean v7, v7, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z

    if-nez v7, :cond_2f

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getWastelandProvinceInViewID(I)I

    move-result v7

    invoke-static {p1, p2, v7, v6}, Laoc/kingdoms/lukasz/jakowski/Touch;->isMouseOverArmy(IIII)Z

    move-result v7

    if-eqz v7, :cond_2f

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->clearActiveArmy()V

    new-instance p1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    invoke-direct {p1}, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;-><init>()V

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getWastelandProvinceInViewID(I)I

    move-result p2

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p2

    invoke-virtual {p2, v6}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object p2

    iget-object p2, p2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    iput-object p2, p1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->key:Ljava/lang/String;

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getWastelandProvinceInViewID(I)I

    move-result p2

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p2

    invoke-virtual {p2, v6}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object p2

    iget p2, p2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    iput p2, p1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iCivID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getWastelandProvinceInViewID(I)I

    move-result p2

    iput p2, p1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    iput v6, p1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->addActiveArmy(Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;)V

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction;->actionUp_SetActiveArmy()V

    return-void

    :cond_2f
    add-int/lit8 v6, v6, 0x1

    goto :goto_11

    :cond_30
    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    :cond_31
    move v5, v2

    :goto_12
    sget v6, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v5, v6, :cond_37

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    iget-boolean v6, v6, Laoc/kingdoms/lukasz/map/province/Province;->isCapital:Z

    if-eqz v6, :cond_36

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getCitiesSize()I

    move-result v6

    if-lez v6, :cond_36

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v6

    invoke-static {p1, p2, v6}, Laoc/kingdoms/lukasz/jakowski/Touch;->isMouseOverCapitalProvince_Flag(III)Z

    move-result v6

    if-eqz v6, :cond_36

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->gameActiveProvince:Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;->resetLastActiveProvince()V

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result p1

    sput p1, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredCapitalProvinceID:I

    sget p1, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredCapitalProvinceID:I

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->setActiveProvinceID(I)V

    sget-object p1, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->action:Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$Action;

    sget p2, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-interface {p1, p2}, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$Action;->setProvinceID(I)V

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->animationHover:Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;->resetAnimationData()V

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Civ()Z

    move-result p1

    if-eqz p1, :cond_34

    sget p1, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    sget p2, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredCapitalProvinceID:I

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p2

    invoke-virtual {p2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result p2

    if-eq p1, p2, :cond_33

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Civ()V

    sput-wide v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->lTime:J

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_CivBonuses()Z

    move-result p1

    if-eqz p1, :cond_32

    sget p1, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredCapitalProvinceID:I

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result p1

    if-eqz p1, :cond_32

    sget p1, Laoc/kingdoms/lukasz/menusInGame/InGame_CivBonuses;->iCivID:I

    sget p2, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredCapitalProvinceID:I

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p2

    invoke-virtual {p2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result p2

    if-eq p1, p2, :cond_32

    sget p1, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredCapitalProvinceID:I

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result p1

    sput p1, Laoc/kingdoms/lukasz/menusInGame/InGame_CivBonuses;->iCivID:I

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_CivBonuses()V

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p1, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_CivBonuses(Z)V

    sput-wide v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivBonuses;->lTime:J

    :cond_32
    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    invoke-virtual {p2}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getDiplomacy()I

    move-result p2

    invoke-virtual {p1, p2}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->playSound(I)V

    goto :goto_13

    :cond_33
    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p1, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Civ(Z)V

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    sget p2, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_CLICK_TOP:I

    invoke-virtual {p1, p2}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->playSound(I)V

    goto :goto_13

    :cond_34
    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Civ()V

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_CivBonuses()Z

    move-result p1

    if-eqz p1, :cond_35

    sget p1, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredCapitalProvinceID:I

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result p1

    if-eqz p1, :cond_35

    sget p1, Laoc/kingdoms/lukasz/menusInGame/InGame_CivBonuses;->iCivID:I

    sget p2, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredCapitalProvinceID:I

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p2

    invoke-virtual {p2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result p2

    if-eq p1, p2, :cond_35

    sget p1, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredCapitalProvinceID:I

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result p1

    sput p1, Laoc/kingdoms/lukasz/menusInGame/InGame_CivBonuses;->iCivID:I

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_CivBonuses()V

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p1, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_CivBonuses(Z)V

    sput-wide v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivBonuses;->lTime:J

    :cond_35
    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    invoke-virtual {p2}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getDiplomacy()I

    move-result p2

    invoke-virtual {p1, p2}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->playSound(I)V

    :goto_13
    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->gameActiveProvince:Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;->resetLastActiveProvince()V

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->setActiveProvinceID(I)V

    return-void

    :cond_36
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_12

    :cond_37
    move v5, v2

    :goto_14
    sget v6, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v5, v6, :cond_3d

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    iget-boolean v6, v6, Laoc/kingdoms/lukasz/map/province/Province;->isCapital:Z

    if-eqz v6, :cond_3c

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getCitiesSize()I

    move-result v6

    if-lez v6, :cond_3c

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v6

    invoke-static {p1, p2, v6}, Laoc/kingdoms/lukasz/jakowski/Touch;->isMouseOverCapitalProvince_Flag(III)Z

    move-result v6

    if-eqz v6, :cond_3c

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->gameActiveProvince:Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;->resetLastActiveProvince()V

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result p1

    sput p1, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredCapitalProvinceID:I

    sget p1, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredCapitalProvinceID:I

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->setActiveProvinceID(I)V

    sget-object p1, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->action:Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$Action;

    sget p2, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-interface {p1, p2}, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$Action;->setProvinceID(I)V

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->animationHover:Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;->resetAnimationData()V

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Civ()Z

    move-result p1

    if-eqz p1, :cond_3a

    sget p1, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    sget p2, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredCapitalProvinceID:I

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p2

    invoke-virtual {p2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result p2

    if-eq p1, p2, :cond_39

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Civ()V

    sput-wide v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->lTime:J

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_CivBonuses()Z

    move-result p1

    if-eqz p1, :cond_38

    sget p1, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredCapitalProvinceID:I

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result p1

    if-eqz p1, :cond_38

    sget p1, Laoc/kingdoms/lukasz/menusInGame/InGame_CivBonuses;->iCivID:I

    sget p2, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredCapitalProvinceID:I

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p2

    invoke-virtual {p2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result p2

    if-eq p1, p2, :cond_38

    sget p1, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredCapitalProvinceID:I

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result p1

    sput p1, Laoc/kingdoms/lukasz/menusInGame/InGame_CivBonuses;->iCivID:I

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_CivBonuses()V

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p1, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_CivBonuses(Z)V

    sput-wide v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivBonuses;->lTime:J

    :cond_38
    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    invoke-virtual {p2}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getDiplomacy()I

    move-result p2

    invoke-virtual {p1, p2}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->playSound(I)V

    goto :goto_15

    :cond_39
    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p1, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Civ(Z)V

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    sget p2, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_CLICK_TOP:I

    invoke-virtual {p1, p2}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->playSound(I)V

    goto :goto_15

    :cond_3a
    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Civ()V

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_CivBonuses()Z

    move-result p1

    if-eqz p1, :cond_3b

    sget p1, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredCapitalProvinceID:I

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result p1

    if-eqz p1, :cond_3b

    sget p1, Laoc/kingdoms/lukasz/menusInGame/InGame_CivBonuses;->iCivID:I

    sget p2, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredCapitalProvinceID:I

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p2

    invoke-virtual {p2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result p2

    if-eq p1, p2, :cond_3b

    sget p1, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredCapitalProvinceID:I

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result p1

    sput p1, Laoc/kingdoms/lukasz/menusInGame/InGame_CivBonuses;->iCivID:I

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_CivBonuses()V

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p1, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_CivBonuses(Z)V

    sput-wide v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivBonuses;->lTime:J

    :cond_3b
    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    invoke-virtual {p2}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getDiplomacy()I

    move-result p2

    invoke-virtual {p1, p2}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->playSound(I)V

    :goto_15
    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->gameActiveProvince:Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;->resetLastActiveProvince()V

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->setActiveProvinceID(I)V

    return-void

    :cond_3c
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_14

    :cond_3d
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->MAP_MOVE:I

    if-eq p4, v0, :cond_3e

    if-ne p4, v1, :cond_47

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->enableRightClick()Z

    move-result v0

    if-eqz v0, :cond_47

    :cond_3e
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInGame()Z

    move-result v0

    if-eqz v0, :cond_46

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->DRAW_CIV_NAMES_START_DRAWING_MAP_SCALE:F

    cmpl-float v0, v0, v2

    if-gez v0, :cond_45

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    if-ltz v0, :cond_45

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    if-ltz v0, :cond_3f

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    if-nez v0, :cond_3f

    goto/16 :goto_18

    :cond_3f
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEFAULT:I

    if-ne v0, v2, :cond_44

    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->actionDownPosX:I

    sub-int v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    div-int/lit8 v2, v2, 0x2

    if-ge v0, v2, :cond_47

    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->regroupArmyMode:Z

    if-nez v0, :cond_43

    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->chooseProvinceMode:Z

    if-eqz v0, :cond_40

    goto/16 :goto_17

    :cond_40
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->invasionArmyMode:Z

    if-eqz v0, :cond_41

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameActiveProvince:Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;

    invoke-virtual {v0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;->actionUp_setActiveProvinceID(IIII)V

    goto/16 :goto_19

    :cond_41
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->setActiveProvinceID(I)V

    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->action:Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$Action;

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-interface {v0, v2}, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$Action;->setProvinceID(I)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Civ()Z

    move-result v0

    if-eqz v0, :cond_42

    sget-boolean v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->enabledByScaleOut:Z

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Civ()V

    sput-wide v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->lTime:J

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getDiplomacy()I

    move-result v5

    invoke-virtual {v2, v5}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->playSound(I)V

    sput-boolean v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->enabledByScaleOut:Z

    goto :goto_16

    :cond_42
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Civ()V

    sput-boolean v1, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->enabledByScaleOut:Z

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getDiplomacy()I

    move-result v2

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->playSound(I)V

    :goto_16
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_CivBonuses()Z

    move-result v0

    if-eqz v0, :cond_47

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    if-eqz v0, :cond_47

    sget v0, Laoc/kingdoms/lukasz/menusInGame/InGame_CivBonuses;->iCivID:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    if-eq v0, v2, :cond_47

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/menusInGame/InGame_CivBonuses;->iCivID:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_CivBonuses()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_CivBonuses(Z)V

    sput-wide v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivBonuses;->lTime:J

    goto :goto_19

    :cond_43
    :goto_17
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameActiveProvince:Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;

    invoke-virtual {v0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;->actionUp_setActiveProvinceID(IIII)V

    goto :goto_19

    :cond_44
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameActiveProvince:Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;

    invoke-virtual {v0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;->actionUp_setActiveProvinceID(IIII)V

    goto :goto_19

    :cond_45
    :goto_18
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameActiveProvince:Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;

    invoke-virtual {v0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;->actionUp_setActiveProvinceID(IIII)V

    goto :goto_19

    :cond_46
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameActiveProvince:Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;

    invoke-virtual {v0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;->actionUp_setActiveProvinceID(IIII)V

    :cond_47
    :goto_19
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getScaleMode()Z

    move-result v0

    if-nez v0, :cond_48

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/map/map/MapCoords;->disableMovingMap:Z

    if-nez v0, :cond_48

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScroll:Laoc/kingdoms/lukasz/map/map/MapScroll;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScroll;->startScrollingTheMap()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_48
    :try_start_1
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction;->actionUp_ExtraAction:Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$ExtraAction;

    invoke-interface {v0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$ExtraAction;->extraAction(IIII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1a

    :catch_0
    move-exception p1

    :try_start_2
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1a

    :catch_1
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_1a
    return-void
.end method

.method public final actionUpSelectMode(II)V
    .locals 13

    :try_start_0
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxX:I

    if-eq v0, p1, :cond_6a

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxY:I

    if-ne v1, p2, :cond_0

    goto/16 :goto_37

    :cond_0
    if-le v0, p1, :cond_1

    iput p1, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxX:I

    move p1, v0

    :cond_1
    if-le v1, p2, :cond_2

    iput p2, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxY:I

    move p2, v1

    :cond_2
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInGame()Z

    move-result v0

    const/4 v6, 0x0

    const/4 v1, 0x1

    if-eqz v0, :cond_5b

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_INVEST_IN_ECONOMY:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "InsufficientLegacy"

    const-string v4, "InsufficientGold"

    const/16 v5, 0x64

    const/4 v7, 0x0

    sget-object v7, Laoc/kingdoms/lukasz/menusScenarioEditor/YGiX/gpVDKipRURuzw;->LJqcVxZvhAFKUq:Ljava/lang/String;

    if-ne v0, v2, :cond_c

    move v0, v6

    :goto_0
    :try_start_1
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v2, " / "

    const-string v8, "MaximumEconomy"

    const-string v9, "IncreasePopulationGrowthRate"

    const/16 v10, 0xa

    if-ge v0, v1, :cond_7

    :try_start_2
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v11, v11, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v1, v11, :cond_6

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    iget v11, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxX:I

    iget v12, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxY:I

    invoke-static {v1, v11, v12, p1, p2}, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->actionUpSelectModeIsInBox_Center(IIIII)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->canInvestInEconomy(I)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v11, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->populationUp:I

    invoke-virtual {v1, v9, v11}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToastGold(Ljava/lang/String;I)V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v11, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v11

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomyWithBonuses()F

    move-result v11

    invoke-static {v11, v10}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getMaxEconomy(I)F

    move-result v9

    invoke-static {v9, v10}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v9, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_ECONOMY:I

    invoke-virtual {v1, v8, v2, v9}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToastInsufficient(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1

    :cond_3
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getInvestCost_Legacy(I)F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_4

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v8, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getInvestCost_Legacy(I)F

    move-result v8

    invoke-static {v8, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v8

    sget v9, Laoc/kingdoms/lukasz/textures/Images;->legacy:I

    invoke-virtual {v1, v2, v8, v9}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToastInsufficient(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    :cond_4
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->addInvestInProvince()Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v8, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getInvestCost(I)F

    move-result v8

    invoke-static {v8, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v8

    sget v9, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-virtual {v1, v2, v8, v9}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToastInsufficient(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    :cond_5
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->addProvinceDot_Economy(I)V

    :cond_6
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_7
    :goto_2
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v6, v0, :cond_6b

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v0, v1, :cond_b

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v0

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxX:I

    iget v11, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxY:I

    invoke-static {v0, v1, v11, p1, p2}, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->actionUpSelectModeIsInBox_Center(IIIII)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->canInvestInEconomy(I)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v1, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->populationUp:I

    invoke-virtual {v0, v1, v11}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToastGold(Ljava/lang/String;I)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v11, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomyWithBonuses()F

    move-result v12

    invoke-static {v12, v10}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getMaxEconomy(I)F

    move-result v12

    invoke-static {v12, v10}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    sget v12, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_ECONOMY:I

    invoke-virtual {v0, v1, v11, v12}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToastInsufficient(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_3

    :cond_8
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getInvestCost_Legacy(I)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_9

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v11, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v11

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getInvestCost_Legacy(I)F

    move-result v11

    invoke-static {v11, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v11

    sget v12, Laoc/kingdoms/lukasz/textures/Images;->legacy:I

    invoke-virtual {v0, v1, v11, v12}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToastInsufficient(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_3

    :cond_9
    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->addInvestInProvince()Z

    move-result v0

    if-nez v0, :cond_a

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v11, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v11

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getInvestCost(I)F

    move-result v11

    invoke-static {v11, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v11

    sget v12, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-virtual {v0, v1, v11, v12}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToastInsufficient(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_3

    :cond_a
    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->addProvinceDot_Economy(I)V

    :cond_b
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    :cond_c
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_PEACE_VIEW:I

    if-ne v0, v2, :cond_10

    move v0, v6

    :goto_4
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v0, v2, :cond_e

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v2

    iget v3, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxX:I

    iget v4, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxY:I

    invoke-static {v2, v3, v4, p1, p2}, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->actionUpSelectModeIsInBox_Center(IIIII)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v2

    invoke-static {v2, v1}, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction;->actionPeaceView(IZ)V

    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_e
    :goto_5
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v6, v0, :cond_6b

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v0

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxX:I

    iget v3, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxY:I

    invoke-static {v0, v2, v3, p1, p2}, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->actionUpSelectModeIsInBox_Center(IIIII)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v0

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction;->actionPeaceView(IZ)V

    :cond_f
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_10
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_RELEASE_VASSAL:I

    if-ne v0, v2, :cond_15

    move v0, v6

    :goto_6
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v0, v2, :cond_12

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v2

    iget v3, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxX:I

    iget v4, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxY:I

    invoke-static {v2, v3, v4, p1, p2}, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->actionUpSelectModeIsInBox_Center(IIIII)Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v2

    invoke-static {v2, v1}, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction;->actionReleaseVassal(IZ)V

    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_12
    :goto_7
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v6, v0, :cond_14

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v0

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxX:I

    iget v3, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxY:I

    invoke-static {v0, v2, v3, p1, p2}, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->actionUpSelectModeIsInBox_Center(IIIII)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v0

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction;->actionReleaseVassal(IZ)V

    :cond_13
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_14
    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_ReleaseAVassal_SavePos()V

    goto/16 :goto_38

    :cond_15
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_BUILDING:I

    if-ne v0, v1, :cond_19

    move v0, v6

    :goto_8
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v0, v1, :cond_17

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v1, v2, :cond_16

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxX:I

    iget v3, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxY:I

    invoke-static {v1, v2, v3, p1, p2}, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->actionUpSelectModeIsInBox_Center(IIIII)Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction;->actionBuilding(I)V

    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_17
    :goto_9
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v6, v0, :cond_6b

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v0, v1, :cond_18

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v0

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxX:I

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxY:I

    invoke-static {v0, v1, v2, p1, p2}, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->actionUpSelectModeIsInBox_Center(IIIII)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction;->actionBuilding(I)V

    :cond_18
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    :cond_19
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_INCREASE_MANPOWER:I

    if-ne v0, v1, :cond_21

    move v0, v6

    :goto_a
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v0, v1, :cond_1d

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v1, v2, :cond_1c

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxX:I

    iget v8, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxY:I

    invoke-static {v1, v2, v8, p1, p2}, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->actionUpSelectModeIsInBox_Center(IIIII)Z

    move-result v1

    if-eqz v1, :cond_1c

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getIncreaseManpowerCostLegacy(I)F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1a

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v8, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getIncreaseManpowerCostLegacy(I)F

    move-result v8

    invoke-static {v8, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v8

    sget v9, Laoc/kingdoms/lukasz/textures/Images;->legacy:I

    invoke-virtual {v1, v2, v8, v9}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToastInsufficient(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_b

    :cond_1a
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->addIncreaseManpowerInProvince()Z

    move-result v1

    if-nez v1, :cond_1b

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v8, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getIncreaseManpowerCost(I)F

    move-result v8

    invoke-static {v8, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v8

    sget v9, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-virtual {v1, v2, v8, v9}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToastInsufficient(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_b

    :cond_1b
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->addProvinceDot_Manpower(I)V

    :cond_1c
    :goto_b
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_a

    :cond_1d
    :goto_c
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v6, v0, :cond_6b

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v0, v1, :cond_20

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v0

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxX:I

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxY:I

    invoke-static {v0, v1, v2, p1, p2}, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->actionUpSelectModeIsInBox_Center(IIIII)Z

    move-result v0

    if-eqz v0, :cond_20

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getIncreaseManpowerCostLegacy(I)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1e

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getIncreaseManpowerCostLegacy(I)F

    move-result v2

    invoke-static {v2, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v2

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->legacy:I

    invoke-virtual {v0, v1, v2, v8}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToastInsufficient(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_d

    :cond_1e
    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->addIncreaseManpowerInProvince()Z

    move-result v0

    if-nez v0, :cond_1f

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v2, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getIncreaseManpowerCost(I)F

    move-result v2

    invoke-static {v2, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v2

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-virtual {v0, v1, v2, v8}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToastInsufficient(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_d

    :cond_1f
    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->addProvinceDot_Manpower(I)V

    :cond_20
    :goto_d
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_c

    :cond_21
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_INCREASE_GROWTH_RATE:I

    if-ne v0, v1, :cond_27

    move v0, v6

    :goto_e
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v0, v1, :cond_24

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v1, v2, :cond_23

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxX:I

    iget v3, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxY:I

    invoke-static {v1, v2, v3, p1, p2}, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->actionUpSelectModeIsInBox_Center(IIIII)Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->addIncreaseGrowthRateInProvince()Z

    move-result v1

    if-nez v1, :cond_22

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getIncreaseGrowthRateCost(I)F

    move-result v3

    invoke-static {v3, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-virtual {v1, v2, v3, v8}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToastInsufficient(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_f

    :cond_22
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->addProvinceDot_GrowthRate(I)V

    :cond_23
    :goto_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_24
    :goto_10
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v6, v0, :cond_6b

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v0, v1, :cond_26

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v0

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxX:I

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxY:I

    invoke-static {v0, v1, v2, p1, p2}, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->actionUpSelectModeIsInBox_Center(IIIII)Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->addIncreaseGrowthRateInProvince()Z

    move-result v0

    if-nez v0, :cond_25

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v2, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getIncreaseGrowthRateCost(I)F

    move-result v2

    invoke-static {v2, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-virtual {v0, v1, v2, v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToastInsufficient(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_11

    :cond_25
    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->addProvinceDot_GrowthRate(I)V

    :cond_26
    :goto_11
    add-int/lit8 v6, v6, 0x1

    goto :goto_10

    :cond_27
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEVELOP_INFRASTRUCTURE:I

    if-ne v0, v1, :cond_2b

    move v0, v6

    :goto_12
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v0, v1, :cond_29

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v1, v2, :cond_28

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxX:I

    iget v3, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxY:I

    invoke-static {v1, v2, v3, p1, p2}, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->actionUpSelectModeIsInBox_Center(IIIII)Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo;->addDevelopInfrastructureCost(I)Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->addProvinceDot_Infrastructure(I)V

    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_29
    :goto_13
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v6, v0, :cond_6b

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v0, v1, :cond_2a

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v0

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxX:I

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxY:I

    invoke-static {v0, v1, v2, p1, p2}, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->actionUpSelectModeIsInBox_Center(IIIII)Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo;->addDevelopInfrastructureCost(I)Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->addProvinceDot_Infrastructure(I)V

    :cond_2a
    add-int/lit8 v6, v6, 0x1

    goto :goto_13

    :cond_2b
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_INCREASE_TAX_EFFICIENCY:I

    if-ne v0, v1, :cond_33

    move v0, v6

    :goto_14
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v0, v1, :cond_2f

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v1, v2, :cond_2e

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxX:I

    iget v8, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxY:I

    invoke-static {v1, v2, v8, p1, p2}, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->actionUpSelectModeIsInBox_Center(IIIII)Z

    move-result v1

    if-eqz v1, :cond_2e

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getIncreaseTaxEfficiencyCostLegacy(I)F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2c

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v8, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getIncreaseTaxEfficiencyCostLegacy(I)F

    move-result v8

    invoke-static {v8, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v8

    sget v9, Laoc/kingdoms/lukasz/textures/Images;->legacy:I

    invoke-virtual {v1, v2, v8, v9}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToastInsufficient(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_15

    :cond_2c
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->addIncreaseTaxEfficiencyInProvince()Z

    move-result v1

    if-nez v1, :cond_2d

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v8, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getIncreaseTaxEfficiencyCost(I)F

    move-result v8

    invoke-static {v8, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v8

    sget v9, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-virtual {v1, v2, v8, v9}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToastInsufficient(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_15

    :cond_2d
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->addProvinceDot_TaxEfficiency(I)V

    :cond_2e
    :goto_15
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_14

    :cond_2f
    :goto_16
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v6, v0, :cond_6b

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v0, v1, :cond_32

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v0

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxX:I

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxY:I

    invoke-static {v0, v1, v2, p1, p2}, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->actionUpSelectModeIsInBox_Center(IIIII)Z

    move-result v0

    if-eqz v0, :cond_32

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getIncreaseTaxEfficiencyCostLegacy(I)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_30

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getIncreaseTaxEfficiencyCostLegacy(I)F

    move-result v2

    invoke-static {v2, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v2

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->legacy:I

    invoke-virtual {v0, v1, v2, v8}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToastInsufficient(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_17

    :cond_30
    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->addIncreaseTaxEfficiencyInProvince()Z

    move-result v0

    if-nez v0, :cond_31

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v2, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getIncreaseTaxEfficiencyCost(I)F

    move-result v2

    invoke-static {v2, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v2

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-virtual {v0, v1, v2, v8}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToastInsufficient(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_17

    :cond_31
    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->addProvinceDot_TaxEfficiency(I)V

    :cond_32
    :goto_17
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_16

    :cond_33
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_CONVERT_RELIGION:I

    if-ne v0, v1, :cond_39

    move v0, v6

    :goto_18
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v0, v1, :cond_36

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v1, v2, :cond_35

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxX:I

    iget v3, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxY:I

    invoke-static {v1, v2, v3, p1, p2}, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->actionUpSelectModeIsInBox_Center(IIIII)Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getReligion()I

    move-result v1

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v2

    if-ne v1, v2, :cond_34

    goto :goto_19

    :cond_34
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->addReligionConversion()Z

    move-result v1

    if-nez v1, :cond_35

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v8

    invoke-virtual {v3, v8}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligionConversionCost(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v3, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-virtual {v1, v2, v3, v8}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToastInsufficient(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_35
    :goto_19
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_18

    :cond_36
    :goto_1a
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v6, v0, :cond_6b

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v0, v1, :cond_38

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v0

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxX:I

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxY:I

    invoke-static {v0, v1, v2, p1, p2}, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->actionUpSelectModeIsInBox_Center(IIIII)Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getReligion()I

    move-result v0

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v1

    if-ne v0, v1, :cond_37

    goto :goto_1b

    :cond_37
    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->addReligionConversion()Z

    move-result v0

    if-nez v0, :cond_38

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v2, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligionConversionCost(I)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-virtual {v0, v1, v2, v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToastInsufficient(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_38
    :goto_1b
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1a

    :cond_39
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_CORE:I

    if-ne v0, v1, :cond_3f

    move v0, v6

    :goto_1c
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v0, v1, :cond_3c

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v1, v2, :cond_3b

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxX:I

    iget v3, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxY:I

    invoke-static {v1, v2, v3, p1, p2}, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->actionUpSelectModeIsInBox_Center(IIIII)Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/province/Province;->haveACore(I)Z

    move-result v1

    if-nez v1, :cond_3b

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/province/Province;->coreCreation:Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    if-eqz v1, :cond_3a

    goto :goto_1d

    :cond_3a
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->addCoreCreation()Z

    move-result v1

    if-nez v1, :cond_3b

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCoreCreationCost(I)F

    move-result v3

    invoke-static {v3, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-virtual {v1, v2, v3, v8}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToastInsufficient(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_3b
    :goto_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    :cond_3c
    :goto_1e
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v6, v0, :cond_6b

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v0, v1, :cond_3e

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v0

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxX:I

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxY:I

    invoke-static {v0, v1, v2, p1, p2}, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->actionUpSelectModeIsInBox_Center(IIIII)Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->haveACore(I)Z

    move-result v0

    if-nez v0, :cond_3e

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/province/Province;->coreCreation:Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    if-eqz v0, :cond_3d

    goto :goto_1f

    :cond_3d
    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->addCoreCreation()Z

    move-result v0

    if-nez v0, :cond_3e

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v2, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCoreCreationCost(I)F

    move-result v2

    invoke-static {v2, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-virtual {v0, v1, v2, v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToastInsufficient(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_3e
    :goto_1f
    add-int/lit8 v6, v6, 0x1

    goto :goto_1e

    :cond_3f
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->invasionArmyMode:Z

    if-eqz v0, :cond_48

    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/AA_KeyManager;->CTRL_HOLD:Z

    if-nez v0, :cond_44

    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/AA_KeyManager;->SHIFT_HOLD:Z

    if-eqz v0, :cond_40

    goto :goto_22

    :cond_40
    move v0, v6

    :goto_20
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v0, v1, :cond_42

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxX:I

    iget v3, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxY:I

    invoke-static {v1, v2, v3, p1, p2}, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->actionUpSelectModeIsInBox_Center(IIIII)Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->invasionArmy_AddProvince(I)V

    :cond_41
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    :cond_42
    :goto_21
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v6, v0, :cond_6b

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v0

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxX:I

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxY:I

    invoke-static {v0, v1, v2, p1, p2}, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->actionUpSelectModeIsInBox_Center(IIIII)Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->invasionArmy_AddProvince(I)V

    :cond_43
    add-int/lit8 v6, v6, 0x1

    goto :goto_21

    :cond_44
    :goto_22
    move v0, v6

    :goto_23
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v0, v1, :cond_46

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxX:I

    iget v3, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxY:I

    invoke-static {v1, v2, v3, p1, p2}, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->actionUpSelectModeIsInBox_Center(IIIII)Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->invasionArmy_RemoveProvince(I)V

    :cond_45
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    :cond_46
    :goto_24
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v6, v0, :cond_6b

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v0

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxX:I

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxY:I

    invoke-static {v0, v1, v2, p1, p2}, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->actionUpSelectModeIsInBox_Center(IIIII)Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->invasionArmy_RemoveProvince(I)V

    :cond_47
    add-int/lit8 v6, v6, 0x1

    goto :goto_24

    :cond_48
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxX:I

    sub-int v0, p1, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    if-le v0, v1, :cond_49

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->hideInGameMenus()V

    :cond_49
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/AA_KeyManager;->SHIFT_HOLD:Z

    if-nez v0, :cond_4a

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->clearActiveArmy()V

    :cond_4a
    move v7, v6

    :goto_25
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v7, v0, :cond_4e

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getFogDrawArmy()Z

    move-result v0

    if-eqz v0, :cond_4d

    move v8, v6

    :goto_26
    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v0

    if-ge v8, v0, :cond_4d

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0, v8}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-eq v0, v1, :cond_4b

    goto :goto_27

    :cond_4b
    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v0

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxX:I

    iget v3, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxY:I

    move v1, v8

    move v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->actionUpSelectModeIsInBox(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_4c

    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;-><init>()V

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v8}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    iput-object v1, v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->key:Ljava/lang/String;

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v8}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    iput v1, v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iCivID:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    iput v8, v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->addActiveArmy(Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->animationHover:Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;->resetAnimationData()V

    :cond_4c
    :goto_27
    add-int/lit8 v8, v8, 0x1

    goto :goto_26

    :cond_4d
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_25

    :cond_4e
    move v7, v6

    :goto_28
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v7, v0, :cond_52

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getFogDrawArmy()Z

    move-result v0

    if-eqz v0, :cond_51

    move v8, v6

    :goto_29
    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v0

    if-ge v8, v0, :cond_51

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0, v8}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-eq v0, v1, :cond_4f

    goto :goto_2a

    :cond_4f
    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v0

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxX:I

    iget v3, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxY:I

    move v1, v8

    move v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->actionUpSelectModeIsInBox(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_50

    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;-><init>()V

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v8}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    iput-object v1, v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->key:Ljava/lang/String;

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v8}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    iput v1, v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iCivID:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    iput v8, v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->addActiveArmy(Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->animationHover:Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;->resetAnimationData()V

    :cond_50
    :goto_2a
    add-int/lit8 v8, v8, 0x1

    goto :goto_29

    :cond_51
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_28

    :cond_52
    move v7, v6

    :goto_2b
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_SEA_PROVINCES_IN_VIEW:I

    if-ge v7, v0, :cond_56

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getSeaProvinceInViewID(I)I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getFogDrawArmy()Z

    move-result v0

    if-eqz v0, :cond_55

    move v8, v6

    :goto_2c
    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getSeaProvinceInViewID(I)I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v0

    if-ge v8, v0, :cond_55

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getSeaProvinceInViewID(I)I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0, v8}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-eq v0, v1, :cond_53

    goto :goto_2d

    :cond_53
    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getSeaProvinceInViewID(I)I

    move-result v0

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxX:I

    iget v3, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxY:I

    move v1, v8

    move v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->actionUpSelectModeIsInBox(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_54

    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;-><init>()V

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getSeaProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v8}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    iput-object v1, v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->key:Ljava/lang/String;

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getSeaProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v8}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    iput v1, v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iCivID:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getSeaProvinceInViewID(I)I

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    iput v8, v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->addActiveArmy(Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->animationHover:Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;->resetAnimationData()V

    :cond_54
    :goto_2d
    add-int/lit8 v8, v8, 0x1

    goto :goto_2c

    :cond_55
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2b

    :cond_56
    move v7, v6

    :goto_2e
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_WASTELAND_PROVINCES_IN_VIEW:I

    if-ge v7, v0, :cond_5a

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getWastelandProvinceInViewID(I)I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getFogDrawArmy()Z

    move-result v0

    if-eqz v0, :cond_59

    move v8, v6

    :goto_2f
    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getWastelandProvinceInViewID(I)I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v0

    if-ge v8, v0, :cond_59

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getWastelandProvinceInViewID(I)I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0, v8}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-eq v0, v1, :cond_57

    goto :goto_30

    :cond_57
    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getWastelandProvinceInViewID(I)I

    move-result v0

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxX:I

    iget v3, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxY:I

    move v1, v8

    move v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->actionUpSelectModeIsInBox(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_58

    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;-><init>()V

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getWastelandProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v8}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    iput-object v1, v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->key:Ljava/lang/String;

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getWastelandProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v8}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    iput v1, v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iCivID:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getWastelandProvinceInViewID(I)I

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    iput v8, v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->addActiveArmy(Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->animationHover:Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;->resetAnimationData()V

    :cond_58
    :goto_30
    add-int/lit8 v8, v8, 0x1

    goto :goto_2f

    :cond_59
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2e

    :cond_5a
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction;->actionUp_SetActiveArmy()V

    sget p1, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmySize:I

    if-lez p1, :cond_6b

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->gameActiveProvince:Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;->resetLastActiveProvince()V

    const/4 p1, -0x1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->setActiveProvinceID(I)V

    goto/16 :goto_38

    :cond_5b
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInScenarioAssign()Z

    move-result v0

    if-eqz v0, :cond_60

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    move v2, v6

    :goto_31
    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v2, v3, :cond_5d

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    iget v4, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxX:I

    iget v5, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxY:I

    invoke-static {v3, v4, v5, p1, p2}, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->actionUpSelectModeIsInBox_Center(IIIII)Z

    move-result v3

    if-eqz v3, :cond_5c

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    sput v3, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioAssign;->actionUpdateData(Z)V

    :cond_5c
    add-int/lit8 v2, v2, 0x1

    goto :goto_31

    :cond_5d
    :goto_32
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v6, v2, :cond_5f

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v2

    iget v3, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxX:I

    iget v4, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxY:I

    invoke-static {v2, v3, v4, p1, p2}, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->actionUpSelectModeIsInBox_Center(IIIII)Z

    move-result v2

    if-eqz v2, :cond_5e

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v2

    sput v2, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioAssign;->actionUpdateData(Z)V

    :cond_5e
    add-int/lit8 v6, v6, 0x1

    goto :goto_32

    :cond_5f
    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    goto/16 :goto_38

    :cond_60
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInScenarioWasteland()Z

    move-result v0

    if-eqz v0, :cond_65

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    move v2, v6

    :goto_33
    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v2, v3, :cond_62

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    iget v4, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxX:I

    iget v5, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxY:I

    invoke-static {v3, v4, v5, p1, p2}, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->actionUpSelectModeIsInBox_Center(IIIII)Z

    move-result v3

    if-eqz v3, :cond_61

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    sput v3, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/menusScenarioEditor/Wasteland/ScenarioWasteland;->actionUpdateData(Z)V

    :cond_61
    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    :cond_62
    :goto_34
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v6, v2, :cond_64

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v2

    iget v3, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxX:I

    iget v4, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxY:I

    invoke-static {v2, v3, v4, p1, p2}, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->actionUpSelectModeIsInBox_Center(IIIII)Z

    move-result v2

    if-eqz v2, :cond_63

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v2

    sput v2, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/menusScenarioEditor/Wasteland/ScenarioWasteland;->actionUpdateData(Z)V

    :cond_63
    add-int/lit8 v6, v6, 0x1

    goto :goto_34

    :cond_64
    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    goto :goto_38

    :cond_65
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInMapEditorContinents()Z

    move-result v0

    if-eqz v0, :cond_6b

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    move v1, v6

    :goto_35
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v1, v2, :cond_67

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v2

    iget v3, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxX:I

    iget v4, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxY:I

    invoke-static {v2, v3, v4, p1, p2}, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->actionUpSelectModeIsInBox_Center(IIIII)Z

    move-result v2

    if-eqz v2, :cond_66

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapContinents;->currentContinentID:I

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/province/Province;->setContinent(I)V

    :cond_66
    add-int/lit8 v1, v1, 0x1

    goto :goto_35

    :cond_67
    :goto_36
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v6, v1, :cond_69

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v1

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxX:I

    iget v3, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxY:I

    invoke-static {v1, v2, v3, p1, p2}, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->actionUpSelectModeIsInBox_Center(IIIII)Z

    move-result v1

    if-eqz v1, :cond_68

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    sget v2, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapContinents;->currentContinentID:I

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/province/Province;->setContinent(I)V

    :cond_68
    add-int/lit8 v6, v6, 0x1

    goto :goto_36

    :cond_69
    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_38

    :cond_6a
    :goto_37
    return-void

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_6b
    :goto_38
    return-void
.end method

.method public final buildReversePos()V
    .locals 0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->buildReversePosX()V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->buildReversePosY()V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->buildReversePosX2()V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->buildReversePosY2()V

    return-void
.end method

.method protected final buildReversePosX()V
    .locals 1

    sget-boolean v0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->reverseDirectionX:Z

    if-eqz v0, :cond_0

    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapTouchManager$1;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/map/map/MapTouchManager$1;-><init>(Laoc/kingdoms/lukasz/map/map/MapTouchManager;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->mapMoveDirectionX:Laoc/kingdoms/lukasz/map/map/MapTouchManager$ReverseDirection;

    goto :goto_0

    :cond_0
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapTouchManager$2;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/map/map/MapTouchManager$2;-><init>(Laoc/kingdoms/lukasz/map/map/MapTouchManager;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->mapMoveDirectionX:Laoc/kingdoms/lukasz/map/map/MapTouchManager$ReverseDirection;

    :goto_0
    return-void
.end method

.method protected final buildReversePosX2()V
    .locals 1

    sget-boolean v0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->reverseDirectionX:Z

    if-eqz v0, :cond_0

    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapTouchManager$5;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/map/map/MapTouchManager$5;-><init>(Laoc/kingdoms/lukasz/map/map/MapTouchManager;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->mapMoveDirectionX2:Laoc/kingdoms/lukasz/map/map/MapTouchManager$ReverseDirection2;

    goto :goto_0

    :cond_0
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapTouchManager$6;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/map/map/MapTouchManager$6;-><init>(Laoc/kingdoms/lukasz/map/map/MapTouchManager;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->mapMoveDirectionX2:Laoc/kingdoms/lukasz/map/map/MapTouchManager$ReverseDirection2;

    :goto_0
    return-void
.end method

.method protected final buildReversePosY()V
    .locals 1

    sget-boolean v0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->reverseDirectionY:Z

    if-eqz v0, :cond_0

    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapTouchManager$3;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/map/map/MapTouchManager$3;-><init>(Laoc/kingdoms/lukasz/map/map/MapTouchManager;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->mapMoveDirectionY:Laoc/kingdoms/lukasz/map/map/MapTouchManager$ReverseDirection;

    goto :goto_0

    :cond_0
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapTouchManager$4;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/map/map/MapTouchManager$4;-><init>(Laoc/kingdoms/lukasz/map/map/MapTouchManager;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->mapMoveDirectionY:Laoc/kingdoms/lukasz/map/map/MapTouchManager$ReverseDirection;

    :goto_0
    return-void
.end method

.method protected final buildReversePosY2()V
    .locals 1

    sget-boolean v0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->reverseDirectionY:Z

    if-eqz v0, :cond_0

    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapTouchManager$7;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/map/map/MapTouchManager$7;-><init>(Laoc/kingdoms/lukasz/map/map/MapTouchManager;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->mapMoveDirectionY2:Laoc/kingdoms/lukasz/map/map/MapTouchManager$ReverseDirection2;

    goto :goto_0

    :cond_0
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapTouchManager$8;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/map/map/MapTouchManager$8;-><init>(Laoc/kingdoms/lukasz/map/map/MapTouchManager;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->mapMoveDirectionY2:Laoc/kingdoms/lukasz/map/map/MapTouchManager$ReverseDirection2;

    :goto_0
    return-void
.end method

.method public final drawSelectMode(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 10

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->selectMode:Z

    if-eqz v0, :cond_4

    :try_start_0
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxX:I

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxWidth:I

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iput v2, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxWidth:I

    goto :goto_0

    :cond_0
    if-gez v1, :cond_1

    add-int/2addr v0, v1

    :cond_1
    :goto_0
    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxY:I

    iget v3, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxHeight:I

    if-nez v3, :cond_2

    iput v2, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxHeight:I

    goto :goto_1

    :cond_2
    if-gez v3, :cond_3

    add-int/2addr v1, v3

    :cond_3
    :goto_1
    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    const v3, 0x3d99999a    # 0.075f

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v2, v9, v9, v9, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v3, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxWidth:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v7

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxHeight:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v8

    move-object v4, p1

    move v5, v0

    move v6, v1

    invoke-virtual/range {v3 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    const v3, 0x3e8ccccd    # 0.275f

    invoke-direct {v2, v9, v9, v9, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxWidth:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxHeight:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v7

    const/high16 v8, 0x3f800000    # 1.0f

    move-object v3, p1

    move v4, v0

    move v5, v1

    invoke-static/range {v3 .. v8}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIF)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public enableRightClick()Z
    .locals 2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_RECRUIT_ARMY:I

    if-eq v0, v1, :cond_1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_BUILDING:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final getActionDownTime()J
    .locals 2

    iget-wide v0, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->lActionDownTime:J

    return-wide v0
.end method

.method public final setActionDownPosXY(II)V
    .locals 0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->updateStartMovePosXY(II)V

    iput p1, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->actionDownPosX:I

    iput p2, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->actionDownPosY:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final setActionDownTime(J)V
    .locals 0

    iput-wide p1, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->lActionDownTime:J

    return-void
.end method

.method public final setUpdateStartMovePosX(Z)V
    .locals 0

    iput-boolean p1, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->updateStartMovePosX:Z

    return-void
.end method

.method public final setUpdateStartMovePosY(Z)V
    .locals 0

    iput-boolean p1, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->updateStartMovePosY:Z

    return-void
.end method

.method protected final updateStartMovePosXY(II)V
    .locals 2

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->mapMoveDirectionX:Laoc/kingdoms/lukasz/map/map/MapTouchManager$ReverseDirection;

    int-to-float p1, p1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v1

    div-float/2addr p1, v1

    float-to-int p1, p1

    invoke-interface {v0, p1}, Laoc/kingdoms/lukasz/map/map/MapTouchManager$ReverseDirection;->getStartMovePos(I)I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iStartMovePosX:I

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->mapMoveDirectionY:Laoc/kingdoms/lukasz/map/map/MapTouchManager$ReverseDirection;

    int-to-float p2, p2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    div-float/2addr p2, v0

    float-to-int p2, p2

    invoke-interface {p1, p2}, Laoc/kingdoms/lukasz/map/map/MapTouchManager$ReverseDirection;->getStartMovePos(I)I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iStartMovePosY:I

    return-void
.end method
