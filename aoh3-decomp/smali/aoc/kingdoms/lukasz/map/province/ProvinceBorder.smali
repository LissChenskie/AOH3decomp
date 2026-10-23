.class public Laoc/kingdoms/lukasz/map/province/ProvinceBorder;
.super Ljava/lang/Object;
.source "ProvinceBorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/map/province/ProvinceBorder$DrawProvinceBorder;,
        Laoc/kingdoms/lukasz/map/province/ProvinceBorder$DrawCivBorder;
    }
.end annotation


# static fields
.field public static final PROVINCE_BORDER_INTERVAL:F = 425.0f

.field public static drawCivBorder:Laoc/kingdoms/lukasz/map/province/ProvinceBorder$DrawCivBorder; = null

.field public static drawCivBorderWar:Laoc/kingdoms/lukasz/map/province/ProvinceBorder$DrawCivBorder; = null

.field public static mapCordsPosY:I = 0x0

.field public static pathProvinceBorderExtraWidth:F = 1.0f

.field public static pathProvinceBorderExtraWidth2:F = 1.0f


# instance fields
.field public animationTime:J

.field private civilizationBorder:Z

.field public drawProvinceBorder:Laoc/kingdoms/lukasz/map/province/ProvinceBorder$DrawProvinceBorder;

.field private iLineWidth:I

.field private iProvinceBorderLineSize:I

.field public isLocked:Z

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

.field private pathLastPointX:I

.field private pathLastPointY:I

.field private provinceBorderLine:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/province/ProvinceBorderLine;",
            ">;"
        }
    .end annotation
.end field

.field private wastelandBorder:Z

.field public withProvinceID:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(ILjava/util/List;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->provinceBorderLine:Ljava/util/List;

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->nPath:Lcom/badlogic/gdx/utils/Array;

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->iLineWidth:I

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->civilizationBorder:Z

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->wastelandBorder:Z

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->isLocked:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->animationTime:J

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->lPointsX:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->lPointsY:Ljava/util/List;

    iput p1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->withProvinceID:I

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/2addr p1, v1

    iput p1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->pathLastPointX:I

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/2addr p1, v1

    iput p1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->pathLastPointY:I

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_1

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->provinceBorderLine:Ljava/util/List;

    new-instance v3, Laoc/kingdoms/lukasz/map/province/ProvinceBorderLine;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/2addr v4, v5

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v6, v6, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/2addr v5, v6

    add-int/lit8 v1, v1, 0x1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v7, v7, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/2addr v6, v7

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v8, v8, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/2addr v7, v8

    invoke-direct {v3, v4, v5, v6, v7}, Laoc/kingdoms/lukasz/map/province/ProvinceBorderLine;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    move v1, v0

    :goto_1
    if-ge v1, p1, :cond_2

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->lPointsX:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->lPointsY:Ljava/util/List;

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object p1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->provinceBorderLine:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->iProvinceBorderLineSize:I

    move p1, v0

    :goto_2
    iget p2, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->iProvinceBorderLineSize:I

    if-ge p1, p2, :cond_3

    iget p2, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->iLineWidth:I

    iget-object p3, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->provinceBorderLine:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Laoc/kingdoms/lukasz/map/province/ProvinceBorderLine;

    invoke-virtual {p3}, Laoc/kingdoms/lukasz/map/province/ProvinceBorderLine;->getWidth()I

    move-result p3

    add-int/2addr p2, p3

    iput p2, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->iLineWidth:I

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    iget p1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->iProvinceBorderLineSize:I

    if-ge v0, p1, :cond_4

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->nPath:Lcom/badlogic/gdx/utils/Array;

    new-instance p2, Lcom/badlogic/gdx/math/Vector2;

    iget-object p3, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->provinceBorderLine:Ljava/util/List;

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Laoc/kingdoms/lukasz/map/province/ProvinceBorderLine;

    invoke-virtual {p3}, Laoc/kingdoms/lukasz/map/province/ProvinceBorderLine;->getPosX()I

    move-result p3

    int-to-float p3, p3

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->provinceBorderLine:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/province/ProvinceBorderLine;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/ProvinceBorderLine;->getPosY()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {p2, p3, v1}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    iget-object p1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->nPath:Lcom/badlogic/gdx/utils/Array;

    new-instance p2, Lcom/badlogic/gdx/math/Vector2;

    iget p3, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->pathLastPointX:I

    int-to-float p3, p3

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->pathLastPointY:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-direct {p2, p3, v0}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public static final updateDrawCivBorder()V
    .locals 2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->SETTINGS_PROVINCE_BORDER:I

    if-nez v0, :cond_0

    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$21;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$21;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->drawCivBorder:Laoc/kingdoms/lukasz/map/province/ProvinceBorder$DrawCivBorder;

    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$22;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$22;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->drawCivBorderWar:Laoc/kingdoms/lukasz/map/province/ProvinceBorder$DrawCivBorder;

    goto :goto_0

    :cond_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->SETTINGS_PROVINCE_BORDER:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$23;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$23;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->drawCivBorder:Laoc/kingdoms/lukasz/map/province/ProvinceBorder$DrawCivBorder;

    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$24;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$24;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->drawCivBorderWar:Laoc/kingdoms/lukasz/map/province/ProvinceBorder$DrawCivBorder;

    goto :goto_0

    :cond_1
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsProvince;->value:Laoc/kingdoms/lukasz/jakowski/setting/SettingsProvince$ValuesProvinceBorder;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsProvince$ValuesProvinceBorder;->ENABLE_DOUBLE_BORDER:Z

    if-eqz v0, :cond_2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->DOUBLE_BORDER:Z

    if-eqz v0, :cond_2

    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$25;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$25;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->drawCivBorder:Laoc/kingdoms/lukasz/map/province/ProvinceBorder$DrawCivBorder;

    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$26;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$26;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->drawCivBorderWar:Laoc/kingdoms/lukasz/map/province/ProvinceBorder$DrawCivBorder;

    goto :goto_0

    :cond_2
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$27;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$27;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->drawCivBorder:Laoc/kingdoms/lukasz/map/province/ProvinceBorder$DrawCivBorder;

    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$28;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$28;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->drawCivBorderWar:Laoc/kingdoms/lukasz/map/province/ProvinceBorder$DrawCivBorder;

    :goto_0
    return-void
.end method


# virtual methods
.method public final drawDashedBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .locals 10

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->iProvinceBorderLineSize:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->provinceBorderLine:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Laoc/kingdoms/lukasz/map/province/ProvinceBorderLine;

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->imgLine_32:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/ProvinceBorderLine;->getPosX()I

    move-result v2

    add-int v3, p3, v2

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v2

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/ProvinceBorderLine;->getPosY()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/ProvinceBorderLine;->getWidth()I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/ProvinceBorderLine;->getAngle()F

    move-result v7

    move-object v2, p1

    move v8, p2

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIFI)V

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/ProvinceBorderLine;->getWidth()I

    move-result v1

    add-int/2addr p2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected final drawDashedBorder_Percentage(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IF)V
    .locals 11

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->iLineWidth:I

    int-to-float v0, v0

    mul-float/2addr v0, p3

    float-to-int p3, v0

    const/4 v0, 0x0

    move v9, v0

    :goto_0
    iget v1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->iProvinceBorderLineSize:I

    if-ge v0, v1, :cond_0

    if-gt v9, p3, :cond_0

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->provinceBorderLine:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Laoc/kingdoms/lukasz/map/province/ProvinceBorderLine;

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->imgLine_32:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/ProvinceBorderLine;->getPosX()I

    move-result v2

    add-int v3, p2, v2

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v2

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/ProvinceBorderLine;->getPosY()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/ProvinceBorderLine;->getWidth()I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/ProvinceBorderLine;->getAngle()F

    move-result v7

    move-object v2, p1

    move v8, v9

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIFI)V

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/ProvinceBorderLine;->getWidth()I

    move-result v1

    add-int/2addr v9, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final drawInnerBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->drawDashedBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    return-void
.end method

.method public final drawInnerBorder_Shape(I)V
    .locals 0

    return-void
.end method

.method public final drawStraightBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V
    .locals 9

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->iProvinceBorderLineSize:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->provinceBorderLine:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/province/ProvinceBorderLine;

    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/ProvinceBorderLine;->getPosX()I

    move-result v3

    add-int v4, p2, v3

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v3

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/ProvinceBorderLine;->getPosY()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/ProvinceBorderLine;->getWidth()I

    move-result v6

    const/4 v7, 0x1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/ProvinceBorderLine;->getAngle()F

    move-result v8

    move-object v3, p1

    invoke-virtual/range {v2 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected final drawStraightBorder_Percentage(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IF)V
    .locals 11

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->iLineWidth:I

    int-to-float v0, v0

    mul-float/2addr v0, p3

    float-to-int p3, v0

    const/4 v0, 0x0

    move v9, v0

    :goto_0
    iget v1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->iProvinceBorderLineSize:I

    if-ge v0, v1, :cond_0

    if-gt v9, p3, :cond_0

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->provinceBorderLine:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Laoc/kingdoms/lukasz/map/province/ProvinceBorderLine;

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/ProvinceBorderLine;->getPosX()I

    move-result v2

    add-int v3, p2, v2

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v2

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/ProvinceBorderLine;->getPosY()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/ProvinceBorderLine;->getWidth()I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/ProvinceBorderLine;->getAngle()F

    move-result v7

    move-object v2, p1

    move v8, v9

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIFI)V

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/ProvinceBorderLine;->getWidth()I

    move-result v1

    add-int/2addr v9, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final drawStraightBorder_Shape(ILspace/earlygrey/shapedrawer/JoinType;F)V
    .locals 9

    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->drawCivBorder:Laoc/kingdoms/lukasz/map/province/ProvinceBorder$DrawCivBorder;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/CFG;->COLOR_PROVINCE_STRAIGHT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/CFG;->COLOR_PROVINCE_STRAIGHT2:Lcom/badlogic/gdx/graphics/Color;

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->nPath:Lcom/badlogic/gdx/utils/Array;

    int-to-float v7, p1

    sget v1, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->mapCordsPosY:I

    int-to-float v8, v1

    move v1, p1

    move-object v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v8}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$DrawCivBorder;->drawCivBorder(ILspace/earlygrey/shapedrawer/JoinType;FLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/utils/Array;FF)V

    return-void
.end method

.method public final drawStraightBorder_Shape(ILspace/earlygrey/shapedrawer/JoinType;FLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 9

    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->drawCivBorder:Laoc/kingdoms/lukasz/map/province/ProvinceBorder$DrawCivBorder;

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->nPath:Lcom/badlogic/gdx/utils/Array;

    int-to-float v7, p1

    sget v1, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->mapCordsPosY:I

    int-to-float v8, v1

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v8}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$DrawCivBorder;->drawCivBorder(ILspace/earlygrey/shapedrawer/JoinType;FLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/utils/Array;FF)V

    return-void
.end method

.method public final drawStraightBorder_Shape2(ILspace/earlygrey/shapedrawer/JoinType;F)V
    .locals 7

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    sget-object p3, Laoc/kingdoms/lukasz/jakowski/CFG;->COLOR_PROVINCE_STRAIGHT:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p2, p3}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->setColor(Lcom/badlogic/gdx/graphics/Color;)F

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->nPath:Lcom/badlogic/gdx/utils/Array;

    sget v2, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->pathProvinceBorderExtraWidth2:F

    sget-object v3, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->joinType_Shadow:Lspace/earlygrey/shapedrawer/JoinType;

    const/4 v4, 0x1

    int-to-float v5, p1

    sget p1, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->mapCordsPosY:I

    int-to-float v6, p1

    invoke-virtual/range {v0 .. v6}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->path2(Ljava/lang/Iterable;FLspace/earlygrey/shapedrawer/JoinType;ZFF)V

    return-void
.end method

.method public final drawStraightBorder_Shape2(ILspace/earlygrey/shapedrawer/JoinType;FLcom/badlogic/gdx/graphics/Color;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p4

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    iget v4, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v5, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v6, v1, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v7, v1, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v2, v3}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->setColor(Lcom/badlogic/gdx/graphics/Color;)F

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    iget-object v9, v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->nPath:Lcom/badlogic/gdx/utils/Array;

    const/4 v12, 0x1

    move/from16 v2, p1

    int-to-float v13, v2

    sget v2, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->mapCordsPosY:I

    int-to-float v14, v2

    move/from16 v10, p3

    move-object/from16 v11, p2

    invoke-virtual/range {v8 .. v14}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->path2(Ljava/lang/Iterable;FLspace/earlygrey/shapedrawer/JoinType;ZFF)V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    invoke-virtual {v2, v1}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->setColor(Lcom/badlogic/gdx/graphics/Color;)F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    iget-object v2, v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->nPath:Lcom/badlogic/gdx/utils/Array;

    sget v3, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->pathProvinceBorderExtraWidth2:F

    const/4 v4, 0x1

    move-object/from16 v5, p2

    invoke-virtual {v1, v2, v3, v5, v4}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->path(Ljava/lang/Iterable;FLspace/earlygrey/shapedrawer/JoinType;Z)V

    return-void
.end method

.method public final drawStraightBorder_ShapeWar(ILspace/earlygrey/shapedrawer/JoinType;F)V
    .locals 9

    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->drawCivBorderWar:Laoc/kingdoms/lukasz/map/province/ProvinceBorder$DrawCivBorder;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/CFG;->COLOR_PROVINCE_STRAIGHT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/CFG;->COLOR_PROVINCE_STRAIGHT2:Lcom/badlogic/gdx/graphics/Color;

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->nPath:Lcom/badlogic/gdx/utils/Array;

    int-to-float v7, p1

    sget v1, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->mapCordsPosY:I

    int-to-float v8, v1

    move v1, p1

    move-object v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v8}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$DrawCivBorder;->drawCivBorder(ILspace/earlygrey/shapedrawer/JoinType;FLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/utils/Array;FF)V

    return-void
.end method

.method public final drawStraightBorder_Shape_ActiveProvince(ILspace/earlygrey/shapedrawer/JoinType;F)V
    .locals 9

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    new-instance p3, Lcom/badlogic/gdx/graphics/Color;

    const/4 v0, 0x0

    const v1, 0x3e99999a    # 0.3f

    invoke-direct {p3, v0, v0, v0, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p2, p3}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->setColor(Lcom/badlogic/gdx/graphics/Color;)F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->nPath:Lcom/badlogic/gdx/utils/Array;

    sget v4, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->pathProvinceBorderExtraWidth:F

    sget-object v5, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->joinType_Shadow:Lspace/earlygrey/shapedrawer/JoinType;

    const/4 v6, 0x1

    int-to-float v7, p1

    sget p1, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->mapCordsPosY:I

    int-to-float v8, p1

    invoke-virtual/range {v2 .. v8}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->path2(Ljava/lang/Iterable;FLspace/earlygrey/shapedrawer/JoinType;ZFF)V

    return-void
.end method

.method public final drawStraightBorder_Shape_Sea(ILspace/earlygrey/shapedrawer/JoinType;F)V
    .locals 13

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/CFG;->COLOR_PROVINCE_SEABYSEA:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/CFG;->COLOR_PROVINCE_SEABYSEA:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/CFG;->COLOR_PROVINCE_SEABYSEA:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v5, 0x3d4ccccd    # 0.05f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->setColor(Lcom/badlogic/gdx/graphics/Color;)F

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    move-object v0, p0

    iget-object v7, v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->nPath:Lcom/badlogic/gdx/utils/Array;

    const/4 v10, 0x1

    move v1, p1

    int-to-float v11, v1

    sget v1, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->mapCordsPosY:I

    int-to-float v12, v1

    move/from16 v8, p3

    move-object v9, p2

    invoke-virtual/range {v6 .. v12}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->path2(Ljava/lang/Iterable;FLspace/earlygrey/shapedrawer/JoinType;ZFF)V

    return-void
.end method

.method public final drawStraightBorder_Shape_Sea(ILspace/earlygrey/shapedrawer/JoinType;FF)V
    .locals 13

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/CFG;->COLOR_PROVINCE_SEABYSEA:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/CFG;->COLOR_PROVINCE_SEABYSEA:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/CFG;->COLOR_PROVINCE_SEABYSEA:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v5, 0x3d4ccccd    # 0.05f

    mul-float v5, v5, p4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->setColor(Lcom/badlogic/gdx/graphics/Color;)F

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    move-object v0, p0

    iget-object v7, v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->nPath:Lcom/badlogic/gdx/utils/Array;

    const/4 v10, 0x1

    move v1, p1

    int-to-float v11, v1

    sget v1, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->mapCordsPosY:I

    int-to-float v12, v1

    move/from16 v8, p3

    move-object v9, p2

    invoke-virtual/range {v6 .. v12}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->path2(Ljava/lang/Iterable;FLspace/earlygrey/shapedrawer/JoinType;ZFF)V

    return-void
.end method

.method public final getIsCivilizationBorder()Z
    .locals 1

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->civilizationBorder:Z

    return v0
.end method

.method public final getIsWastelandBorder()Z
    .locals 1

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->wastelandBorder:Z

    return v0
.end method

.method public final getWithProvinceID()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->withProvinceID:I

    return v0
.end method

.method public final setIsCivilizationBorder(ZI)V
    .locals 0

    iput-boolean p1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->civilizationBorder:Z

    invoke-virtual {p0, p2}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->updateDrawProvinceBorder(I)V

    return-void
.end method

.method public final setIsCivilizationBorder_Just(ZI)V
    .locals 0

    iput-boolean p1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->civilizationBorder:Z

    return-void
.end method

.method protected final setIsWastelandBorder(ZI)V
    .locals 0

    iput-boolean p1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->wastelandBorder:Z

    invoke-virtual {p0, p2}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->updateDrawProvinceBorder(I)V

    return-void
.end method

.method public final updateDrawProvinceBorder(I)V
    .locals 3

    :try_start_0
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->isLocked:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->wastelandBorder:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    iget-boolean p1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->civilizationBorder:Z

    if-eqz p1, :cond_4

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result p1

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->DRAW_INNER_BORDERS:F

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_2

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget p1, p1, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->SETTINGS_PROVINCE_BORDER:I

    if-ne p1, v1, :cond_1

    new-instance p1, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$1;

    invoke-direct {p1, p0}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$1;-><init>(Laoc/kingdoms/lukasz/map/province/ProvinceBorder;)V

    iput-object p1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->drawProvinceBorder:Laoc/kingdoms/lukasz/map/province/ProvinceBorder$DrawProvinceBorder;

    goto/16 :goto_2

    :cond_1
    new-instance p1, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$2;

    invoke-direct {p1, p0}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$2;-><init>(Laoc/kingdoms/lukasz/map/province/ProvinceBorder;)V

    iput-object p1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->drawProvinceBorder:Laoc/kingdoms/lukasz/map/province/ProvinceBorder$DrawProvinceBorder;

    goto/16 :goto_2

    :cond_2
    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result p1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsProvince;->value:Laoc/kingdoms/lukasz/jakowski/setting/SettingsProvince$ValuesProvinceBorder;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsProvince$ValuesProvinceBorder;->DRAW_BORDERS:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_3

    new-instance p1, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$3;

    invoke-direct {p1, p0}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$3;-><init>(Laoc/kingdoms/lukasz/map/province/ProvinceBorder;)V

    iput-object p1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->drawProvinceBorder:Laoc/kingdoms/lukasz/map/province/ProvinceBorder$DrawProvinceBorder;

    goto/16 :goto_2

    :cond_3
    new-instance p1, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$4;

    invoke-direct {p1, p0}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$4;-><init>(Laoc/kingdoms/lukasz/map/province/ProvinceBorder;)V

    iput-object p1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->drawProvinceBorder:Laoc/kingdoms/lukasz/map/province/ProvinceBorder$DrawProvinceBorder;

    goto/16 :goto_2

    :cond_4
    new-instance p1, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$5;

    invoke-direct {p1, p0}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$5;-><init>(Laoc/kingdoms/lukasz/map/province/ProvinceBorder;)V

    iput-object p1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->drawProvinceBorder:Laoc/kingdoms/lukasz/map/province/ProvinceBorder$DrawProvinceBorder;

    goto/16 :goto_2

    :cond_5
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->civilizationBorder:Z

    if-eqz v0, :cond_b

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->DRAW_INNER_BORDERS:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_9

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->SETTINGS_PROVINCE_BORDER:I

    if-ne v0, v1, :cond_6

    new-instance p1, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$6;

    invoke-direct {p1, p0}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$6;-><init>(Laoc/kingdoms/lukasz/map/province/ProvinceBorder;)V

    iput-object p1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->drawProvinceBorder:Laoc/kingdoms/lukasz/map/province/ProvinceBorder$DrawProvinceBorder;

    goto/16 :goto_2

    :cond_6
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->provinceBorderWar:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_ProvinceBorderWar;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_ProvinceBorderWar;->ENABLE_WAR_BORDER:Z

    if-eqz v0, :cond_8

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result p1

    invoke-static {v0, p1}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z

    move-result p1

    if-nez p1, :cond_7

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget p1, p1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->withProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-static {p1, v0}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z

    move-result p1

    if-eqz p1, :cond_8

    :cond_7
    new-instance p1, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$7;

    invoke-direct {p1, p0}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$7;-><init>(Laoc/kingdoms/lukasz/map/province/ProvinceBorder;)V

    iput-object p1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->drawProvinceBorder:Laoc/kingdoms/lukasz/map/province/ProvinceBorder$DrawProvinceBorder;

    goto/16 :goto_2

    :cond_8
    new-instance p1, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$8;

    invoke-direct {p1, p0}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$8;-><init>(Laoc/kingdoms/lukasz/map/province/ProvinceBorder;)V

    iput-object p1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->drawProvinceBorder:Laoc/kingdoms/lukasz/map/province/ProvinceBorder$DrawProvinceBorder;

    goto/16 :goto_2

    :cond_9
    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result p1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsProvince;->value:Laoc/kingdoms/lukasz/jakowski/setting/SettingsProvince$ValuesProvinceBorder;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsProvince$ValuesProvinceBorder;->DRAW_BORDERS:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_a

    new-instance p1, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$9;

    invoke-direct {p1, p0}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$9;-><init>(Laoc/kingdoms/lukasz/map/province/ProvinceBorder;)V

    iput-object p1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->drawProvinceBorder:Laoc/kingdoms/lukasz/map/province/ProvinceBorder$DrawProvinceBorder;

    goto/16 :goto_2

    :cond_a
    new-instance p1, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$10;

    invoke-direct {p1, p0}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$10;-><init>(Laoc/kingdoms/lukasz/map/province/ProvinceBorder;)V

    iput-object p1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->drawProvinceBorder:Laoc/kingdoms/lukasz/map/province/ProvinceBorder$DrawProvinceBorder;

    goto/16 :goto_2

    :cond_b
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getWasteland()I

    move-result v0

    if-ltz v0, :cond_c

    new-instance p1, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$11;

    invoke-direct {p1, p0}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$11;-><init>(Laoc/kingdoms/lukasz/map/province/ProvinceBorder;)V

    iput-object p1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->drawProvinceBorder:Laoc/kingdoms/lukasz/map/province/ProvinceBorder$DrawProvinceBorder;

    goto/16 :goto_2

    :cond_c
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->DRAW_INNER_BORDERS:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_10

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->animationTime:J

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v0

    if-nez v0, :cond_e

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->withProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_0

    :cond_d
    new-instance p1, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$14;

    invoke-direct {p1, p0}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$14;-><init>(Laoc/kingdoms/lukasz/map/province/ProvinceBorder;)V

    iput-object p1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->drawProvinceBorder:Laoc/kingdoms/lukasz/map/province/ProvinceBorder$DrawProvinceBorder;

    goto/16 :goto_2

    :cond_e
    :goto_0
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result p1

    if-eqz p1, :cond_f

    iget p1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->withProvinceID:I

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result p1

    if-eqz p1, :cond_f

    new-instance p1, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$12;

    invoke-direct {p1, p0}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$12;-><init>(Laoc/kingdoms/lukasz/map/province/ProvinceBorder;)V

    iput-object p1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->drawProvinceBorder:Laoc/kingdoms/lukasz/map/province/ProvinceBorder$DrawProvinceBorder;

    goto :goto_2

    :cond_f
    new-instance p1, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$13;

    invoke-direct {p1, p0}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$13;-><init>(Laoc/kingdoms/lukasz/map/province/ProvinceBorder;)V

    iput-object p1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->drawProvinceBorder:Laoc/kingdoms/lukasz/map/province/ProvinceBorder$DrawProvinceBorder;

    goto :goto_2

    :cond_10
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->animationTime:J

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v0

    if-nez v0, :cond_12

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->withProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_1

    :cond_11
    new-instance p1, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$17;

    invoke-direct {p1, p0}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$17;-><init>(Laoc/kingdoms/lukasz/map/province/ProvinceBorder;)V

    iput-object p1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->drawProvinceBorder:Laoc/kingdoms/lukasz/map/province/ProvinceBorder$DrawProvinceBorder;

    goto :goto_2

    :cond_12
    :goto_1
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result p1

    if-eqz p1, :cond_13

    iget p1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->withProvinceID:I

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result p1

    if-eqz p1, :cond_13

    new-instance p1, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$15;

    invoke-direct {p1, p0}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$15;-><init>(Laoc/kingdoms/lukasz/map/province/ProvinceBorder;)V

    iput-object p1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->drawProvinceBorder:Laoc/kingdoms/lukasz/map/province/ProvinceBorder$DrawProvinceBorder;

    goto :goto_2

    :cond_13
    new-instance p1, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$16;

    invoke-direct {p1, p0}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$16;-><init>(Laoc/kingdoms/lukasz/map/province/ProvinceBorder;)V

    iput-object p1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->drawProvinceBorder:Laoc/kingdoms/lukasz/map/province/ProvinceBorder$DrawProvinceBorder;
    :try_end_0
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method public final updateDrawProvinceBorder_ActiveCivilizationBorder()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->isLocked:Z

    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$19;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$19;-><init>(Laoc/kingdoms/lukasz/map/province/ProvinceBorder;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->drawProvinceBorder:Laoc/kingdoms/lukasz/map/province/ProvinceBorder$DrawProvinceBorder;

    return-void
.end method

.method public final updateDrawProvinceBorder_ActiveProvince()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->isLocked:Z

    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$18;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$18;-><init>(Laoc/kingdoms/lukasz/map/province/ProvinceBorder;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->drawProvinceBorder:Laoc/kingdoms/lukasz/map/province/ProvinceBorder$DrawProvinceBorder;

    return-void
.end method

.method public final updateDrawProvinceBorder_RelationUp()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->isLocked:Z

    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$20;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$20;-><init>(Laoc/kingdoms/lukasz/map/province/ProvinceBorder;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->drawProvinceBorder:Laoc/kingdoms/lukasz/map/province/ProvinceBorder$DrawProvinceBorder;

    return-void
.end method
