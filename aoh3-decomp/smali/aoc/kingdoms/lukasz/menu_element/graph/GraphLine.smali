.class public Laoc/kingdoms/lukasz/menu_element/graph/GraphLine;
.super Ljava/lang/Object;
.source "GraphLine.java"


# instance fields
.field private fAngle:F

.field private iPosY:I

.field private iWidth:I


# direct methods
.method protected constructor <init>(IIII)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphLine;->iPosY:I

    sub-int v0, p3, p1

    mul-int/2addr v0, v0

    sub-int/2addr p2, p4

    mul-int p4, p2, p2

    add-int/2addr v0, p4

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p4, v0

    iput p4, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphLine;->iWidth:I

    int-to-double v0, p2

    neg-int p1, p1

    add-int/2addr p1, p3

    int-to-double p1, p1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p1

    const-wide p3, 0x4066800000000000L    # 180.0

    mul-double/2addr p1, p3

    const-wide p3, 0x400921fb54442d18L    # Math.PI

    div-double/2addr p1, p3

    double-to-float p1, p1

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphLine;->fAngle:F

    return-void
.end method


# virtual methods
.method protected draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V
    .locals 7

    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    iget p4, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphLine;->iPosY:I

    add-int v3, p3, p4

    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphLine;->iWidth:I

    const/4 v5, 0x1

    iget v6, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphLine;->fAngle:F

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIF)V

    return-void
.end method

.method protected final getPosY()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphLine;->iPosY:I

    return v0
.end method

.method protected final getWidth()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphLine;->iWidth:I

    return v0
.end method

.method protected final setWidth(I)V
    .locals 0

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/GraphLine;->iWidth:I

    return-void
.end method
