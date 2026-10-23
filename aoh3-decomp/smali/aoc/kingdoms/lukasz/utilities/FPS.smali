.class public Laoc/kingdoms/lukasz/utilities/FPS;
.super Ljava/lang/Object;
.source "FPS.java"


# static fields
.field public static final MIN_NUM_OF_FPS:I = 0x16

.field public static drawFPS:Z


# instance fields
.field public iFPS_Counter:I

.field public iNumOfFPS:I

.field public lTimeFPS:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/utilities/FPS;->iFPS_Counter:I

    const/16 v0, 0x3c

    iput v0, p0, Laoc/kingdoms/lukasz/utilities/FPS;->iNumOfFPS:I

    return-void
.end method


# virtual methods
.method public countFPS()V
    .locals 6

    iget v0, p0, Laoc/kingdoms/lukasz/utilities/FPS;->iFPS_Counter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Laoc/kingdoms/lukasz/utilities/FPS;->iFPS_Counter:I

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iget-wide v2, p0, Laoc/kingdoms/lukasz/utilities/FPS;->lTimeFPS:J

    const-wide/16 v4, 0x3e8

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v0, p0, Laoc/kingdoms/lukasz/utilities/FPS;->lTimeFPS:J

    iget v0, p0, Laoc/kingdoms/lukasz/utilities/FPS;->iFPS_Counter:I

    iput v0, p0, Laoc/kingdoms/lukasz/utilities/FPS;->iNumOfFPS:I

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/utilities/FPS;->iFPS_Counter:I

    :cond_0
    return-void
.end method

.method public final drawFPS(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 6

    sget-boolean v0, Laoc/kingdoms/lukasz/utilities/FPS;->drawFPS:Z

    if-nez v0, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInSettingsMenu()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Laoc/kingdoms/lukasz/utilities/FPS;->iNumOfFPS:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    const v4, 0x3e99999a    # 0.3f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v3, v5, v5, v5, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-static {p1, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    :cond_1
    return-void
.end method
