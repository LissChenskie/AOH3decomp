.class public Laoc/kingdoms/lukasz/map/army/ArmyDivision_Shadow;
.super Ljava/lang/Object;
.source "ArmyDivision_Shadow.java"


# instance fields
.field public extraY:I

.field public iArmyWidth:I

.field public iProvinceID:I

.field public sArmy:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision_Shadow;->sArmy:Ljava/lang/String;

    iput p2, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision_Shadow;->iProvinceID:I

    iput p3, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision_Shadow;->extraY:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/army/ArmyDivision_Shadow;->updateArmyWidth_Just()V

    return-void
.end method


# virtual methods
.method protected final updateArmyWidth_Just()V
    .locals 3

    :try_start_0
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontArmy_GlyphLayout:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision_Shadow;->sArmy:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision_Shadow;->iArmyWidth:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision_Shadow;->iArmyWidth:I

    return-void
.end method
