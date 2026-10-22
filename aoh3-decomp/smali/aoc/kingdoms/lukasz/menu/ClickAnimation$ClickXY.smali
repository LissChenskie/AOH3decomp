.class public Laoc/kingdoms/lukasz/menu/ClickAnimation$ClickXY;
.super Ljava/lang/Object;
.source "ClickAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/menu/ClickAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClickXY"
.end annotation


# instance fields
.field public fX:F

.field public fY:F

.field public speedX:F

.field public speedY:F

.field public width:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Laoc/kingdoms/lukasz/menu/ClickAnimation$ClickXY;->fX:F

    iput p2, p0, Laoc/kingdoms/lukasz/menu/ClickAnimation$ClickXY;->fY:F

    iput p3, p0, Laoc/kingdoms/lukasz/menu/ClickAnimation$ClickXY;->speedX:F

    iput p4, p0, Laoc/kingdoms/lukasz/menu/ClickAnimation$ClickXY;->speedY:F

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/GameValues;->clickAnim:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_ClickAnimation;

    iget p1, p1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_ClickAnimation;->CLICK_WIDTH:F

    iput p1, p0, Laoc/kingdoms/lukasz/menu/ClickAnimation$ClickXY;->width:F

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/GameValues;->clickAnim:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_ClickAnimation;

    iget p1, p1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_ClickAnimation;->CLICK_WIDTH_RANDOM:F

    const/high16 p2, 0x40000000    # 2.0f

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_0

    iget p1, p0, Laoc/kingdoms/lukasz/menu/ClickAnimation$ClickXY;->width:F

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object p3, Laoc/kingdoms/lukasz/jakowski/GameValues;->clickAnim:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_ClickAnimation;

    iget p3, p3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_ClickAnimation;->CLICK_WIDTH_RANDOM:F

    float-to-int p3, p3

    invoke-virtual {p2, p3}, Ljava/util/Random;->nextInt(I)I

    move-result p2

    int-to-float p2, p2

    add-float/2addr p1, p2

    iput p1, p0, Laoc/kingdoms/lukasz/menu/ClickAnimation$ClickXY;->width:F

    :cond_0
    return-void
.end method
