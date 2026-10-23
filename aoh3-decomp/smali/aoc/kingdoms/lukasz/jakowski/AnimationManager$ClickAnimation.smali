.class public Laoc/kingdoms/lukasz/jakowski/AnimationManager$ClickAnimation;
.super Ljava/lang/Object;
.source "AnimationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/jakowski/AnimationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ClickAnimation"
.end annotation


# instance fields
.field public clickPosX:I

.field public clickPosY:I

.field public clickTime:J

.field final synthetic this$0:Laoc/kingdoms/lukasz/jakowski/AnimationManager;


# direct methods
.method public constructor <init>(Laoc/kingdoms/lukasz/jakowski/AnimationManager;II)V
    .locals 2

    iput-object p1, p0, Laoc/kingdoms/lukasz/jakowski/AnimationManager$ClickAnimation;->this$0:Laoc/kingdoms/lukasz/jakowski/AnimationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Laoc/kingdoms/lukasz/jakowski/AnimationManager$ClickAnimation;->clickTime:J

    const/4 p1, 0x0

    iput p1, p0, Laoc/kingdoms/lukasz/jakowski/AnimationManager$ClickAnimation;->clickPosX:I

    iput p1, p0, Laoc/kingdoms/lukasz/jakowski/AnimationManager$ClickAnimation;->clickPosY:I

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v0, p0, Laoc/kingdoms/lukasz/jakowski/AnimationManager$ClickAnimation;->clickTime:J

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result p1

    int-to-float p2, p2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    div-float/2addr p2, v0

    float-to-int p2, p2

    sub-int/2addr p1, p2

    sget p2, Laoc/kingdoms/lukasz/textures/Images;->click:I

    invoke-static {p2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p2

    invoke-virtual {p2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    iput p1, p0, Laoc/kingdoms/lukasz/jakowski/AnimationManager$ClickAnimation;->clickPosX:I

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result p1

    int-to-float p2, p3

    sget-object p3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {p3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result p3

    div-float/2addr p2, p3

    float-to-int p2, p2

    sub-int/2addr p1, p2

    sget p2, Laoc/kingdoms/lukasz/textures/Images;->click:I

    invoke-static {p2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p2

    invoke-virtual {p2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    iput p1, p0, Laoc/kingdoms/lukasz/jakowski/AnimationManager$ClickAnimation;->clickPosY:I

    return-void
.end method
