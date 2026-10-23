.class public Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;
.super Ljava/lang/Object;
.source "PieChart_Renderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer$IntersectAt;
    }
.end annotation


# static fields
.field public static final ANIMATION_TIME:I = 0x96

.field private static COLOR_UNKNOWN_DATA:Lcom/badlogic/gdx/graphics/Color;

.field public static pieChart_BG:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public static pieChart_BG2:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public static pieChart_Frame:Laoc/kingdoms/lukasz/textures/Image;

.field public static progressBar:Lcom/badlogic/gdx/graphics/Color;

.field public static progressBarBG:Lcom/badlogic/gdx/graphics/Color;


# instance fields
.field private center:Lcom/badlogic/gdx/math/Vector2;

.field private centerTop:Lcom/badlogic/gdx/math/Vector2;

.field private fv:[F

.field private intersectAt:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer$IntersectAt;

.field private leftBottom:Lcom/badlogic/gdx/math/Vector2;

.field private leftTop:Lcom/badlogic/gdx/math/Vector2;

.field private oPB:Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;

.field private rightBottom:Lcom/badlogic/gdx/math/Vector2;

.field private rightTop:Lcom/badlogic/gdx/math/Vector2;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->COLOR_UNKNOWN_DATA:Lcom/badlogic/gdx/graphics/Color;

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3dc8c8c9

    const v3, 0x3e20a0a1

    invoke-direct {v0, v1, v1, v3, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->progressBarBG:Lcom/badlogic/gdx/graphics/Color;

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3efafafb

    const v3, 0x3f25a5a6

    const v4, 0x3e969697

    invoke-direct {v0, v4, v1, v3, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->progressBar:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v1, 0x0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/FBO/idYW/HjHDSSkYG;->FaXQQ:Ljava/lang/String;

    sget-object v2, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->loadTexture(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;)Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    sput-object v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->pieChart_BG:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const-string v1, "ui/piechart/bg2.png"

    sget-object v2, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->loadTexture(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;)Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    sput-object v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->pieChart_BG2:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    new-instance v0, Laoc/kingdoms/lukasz/textures/Image;

    const-string v1, "ui/piechart/frame.png"

    sget-object v2, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->loadTexture(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;)Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v0, v1, v2}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    sput-object v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->pieChart_Frame:Laoc/kingdoms/lukasz/textures/Image;

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->oPB:Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    sget-object v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->pieChart_BG:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sget-object v2, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->pieChart_BG:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->center:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    sget-object v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->pieChart_BG:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sget-object v2, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->pieChart_BG:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->centerTop:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    sget-object v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->pieChart_BG:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->leftTop:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0, v2, v2}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->leftBottom:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    sget-object v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->pieChart_BG:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->rightBottom:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    sget-object v1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->pieChart_BG:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v1

    int-to-float v1, v1

    sget-object v3, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->pieChart_BG:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v0, v1, v3}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->rightTop:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->setPercentage(F)V

    return-void
.end method

.method private final IntersectPoint(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .locals 4

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->leftTop:Lcom/badlogic/gdx/math/Vector2;

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->rightTop:Lcom/badlogic/gdx/math/Vector2;

    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->center:Lcom/badlogic/gdx/math/Vector2;

    invoke-static {v1, v2, v3, p1, v0}, Lcom/badlogic/gdx/math/Intersector;->intersectSegments(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer$IntersectAt;->TOP:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer$IntersectAt;

    iput-object p1, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->intersectAt:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer$IntersectAt;

    return-object v0

    :cond_0
    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->leftBottom:Lcom/badlogic/gdx/math/Vector2;

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->rightBottom:Lcom/badlogic/gdx/math/Vector2;

    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->center:Lcom/badlogic/gdx/math/Vector2;

    invoke-static {v1, v2, v3, p1, v0}, Lcom/badlogic/gdx/math/Intersector;->intersectSegments(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object p1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer$IntersectAt;->BOTTOM:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer$IntersectAt;

    iput-object p1, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->intersectAt:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer$IntersectAt;

    return-object v0

    :cond_1
    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->leftTop:Lcom/badlogic/gdx/math/Vector2;

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->leftBottom:Lcom/badlogic/gdx/math/Vector2;

    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->center:Lcom/badlogic/gdx/math/Vector2;

    invoke-static {v1, v2, v3, p1, v0}, Lcom/badlogic/gdx/math/Intersector;->intersectSegments(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object p1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer$IntersectAt;->LEFT:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer$IntersectAt;

    iput-object p1, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->intersectAt:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer$IntersectAt;

    return-object v0

    :cond_2
    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->rightTop:Lcom/badlogic/gdx/math/Vector2;

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->rightBottom:Lcom/badlogic/gdx/math/Vector2;

    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->center:Lcom/badlogic/gdx/math/Vector2;

    invoke-static {v1, v2, v3, p1, v0}, Lcom/badlogic/gdx/math/Intersector;->intersectSegments(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer$IntersectAt;->RIGHT:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer$IntersectAt;

    iput-object p1, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->intersectAt:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer$IntersectAt;

    return-object v0

    :cond_3
    sget-object p1, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer$IntersectAt;->NONE:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer$IntersectAt;

    iput-object p1, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->intersectAt:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer$IntersectAt;

    const/4 p1, 0x0

    return-object p1
.end method

.method private final convertToRadians(F)F
    .locals 1

    const v0, 0x3c8efa35

    mul-float/2addr p1, v0

    return p1
.end method

.method private final drawCircle(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIIILcom/badlogic/gdx/graphics/Color;)V
    .locals 3

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->fv:[F

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/badlogic/gdx/math/EarClippingTriangulator;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/EarClippingTriangulator;-><init>()V

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->fv:[F

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/EarClippingTriangulator;->computeTriangles([F)Lcom/badlogic/gdx/utils/ShortArray;

    move-result-object v0

    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->fv:[F

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ShortArray;->toArray()[S

    move-result-object v0

    invoke-direct {v1, p1, v2, v0}, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;[F[S)V

    new-instance p1, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;

    invoke-direct {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;-><init>(Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->setOrigin(FF)V

    int-to-float p2, p2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int/2addr v1, p5

    sub-int/2addr v1, p3

    int-to-float p3, v1

    invoke-virtual {p1, p2, p3}, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->setPosition(FF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->setRotation(F)V

    invoke-virtual {p1, p6}, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    int-to-float p2, p4

    int-to-float p3, p5

    invoke-virtual {p1, p2, p3}, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->setSize(FF)V

    iget-object p2, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->oPB:Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->draw(Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;)V

    return-void
.end method

.method private final drawCircle2(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIIILcom/badlogic/gdx/graphics/Color;)V
    .locals 3

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->fv:[F

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/badlogic/gdx/math/EarClippingTriangulator;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/EarClippingTriangulator;-><init>()V

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->fv:[F

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/EarClippingTriangulator;->computeTriangles([F)Lcom/badlogic/gdx/utils/ShortArray;

    move-result-object v0

    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->fv:[F

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ShortArray;->toArray()[S

    move-result-object v0

    invoke-direct {v1, p1, v2, v0}, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;[F[S)V

    new-instance p1, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;

    invoke-direct {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;-><init>(Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->setOrigin(FF)V

    int-to-float p2, p2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int/2addr v1, p5

    sub-int/2addr v1, p3

    int-to-float p3, v1

    invoke-virtual {p1, p2, p3}, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->setPosition(FF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->setRotation(F)V

    new-instance p2, Lcom/badlogic/gdx/graphics/Color;

    iget p3, p6, Lcom/badlogic/gdx/graphics/Color;->r:F

    const v0, 0x3dcccccd    # 0.1f

    sub-float/2addr p3, v0

    iget v1, p6, Lcom/badlogic/gdx/graphics/Color;->g:F

    sub-float/2addr v1, v0

    iget v2, p6, Lcom/badlogic/gdx/graphics/Color;->b:F

    sub-float/2addr v2, v0

    iget p6, p6, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-direct {p2, p3, v1, v2, p6}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    int-to-float p2, p4

    int-to-float p3, p5

    invoke-virtual {p1, p2, p3}, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->setSize(FF)V

    iget-object p2, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->oPB:Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/PolygonSprite;->draw(Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;)V

    return-void
.end method

.method private final drawCircle_100Percent(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIIILcom/badlogic/gdx/graphics/Color;)V
    .locals 17

    move-object/from16 v15, p1

    move/from16 v7, p6

    move-object/from16 v0, p1

    move-object/from16 v1, p7

    invoke-virtual {v15, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    move/from16 v2, p3

    int-to-float v2, v2

    move/from16 v3, p4

    neg-int v3, v3

    sub-int/2addr v3, v7

    int-to-float v3, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move/from16 v6, p5

    int-to-float v6, v6

    int-to-float v7, v7

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v14

    const/16 v16, 0x0

    move/from16 v15, v16

    invoke-virtual/range {v0 .. v16}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFFFIIIIZZ)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method private final drawCircle_100Percent2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIIILcom/badlogic/gdx/graphics/Color;)V
    .locals 17

    move-object/from16 v15, p1

    move/from16 v7, p6

    move-object/from16 v1, p7

    move-object/from16 v0, p1

    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    iget v3, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    const v4, 0x3dcccccd    # 0.1f

    sub-float/2addr v3, v4

    iget v5, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    sub-float/2addr v5, v4

    iget v6, v1, Lcom/badlogic/gdx/graphics/Color;->b:F

    sub-float/2addr v6, v4

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-direct {v2, v3, v5, v6, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v15, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    move/from16 v2, p3

    int-to-float v2, v2

    move/from16 v3, p4

    neg-int v3, v3

    sub-int/2addr v3, v7

    int-to-float v3, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move/from16 v6, p5

    int-to-float v6, v6

    int-to-float v7, v7

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v14

    const/16 v16, 0x0

    move/from16 v15, v16

    invoke-virtual/range {v0 .. v16}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFFFIIIIZZ)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method private final drawPieChart_Data(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIIILaoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;F)V
    .locals 11

    move-object v7, p0

    move-object/from16 v8, p6

    :try_start_0
    iget-object v0, v7, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->oPB:Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->begin()V

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->getPieChartValue(I)Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;->getPercentage()F

    move-result v0

    mul-float v0, v0, p7

    const/4 v1, 0x1

    move v9, v0

    move v10, v1

    :goto_0
    invoke-virtual/range {p6 .. p6}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->getPieChartValuesSize()I

    move-result v0

    if-ge v10, v0, :cond_0

    invoke-virtual {p0, v9}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->setPercentage(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v6, Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v8, v10}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->getPieChartValue_ColorR(I)F

    move-result v0

    invoke-virtual {v8, v10}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->getPieChartValue_ColorG(I)F

    move-result v1

    invoke-virtual {v8, v10}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->getPieChartValue_ColorB(I)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v6, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    invoke-direct/range {v0 .. v6}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->drawCircle(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIIILcom/badlogic/gdx/graphics/Color;)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    :try_start_2
    sget-object v6, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->COLOR_UNKNOWN_DATA:Lcom/badlogic/gdx/graphics/Color;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    invoke-direct/range {v0 .. v6}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->drawCircle(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIIILcom/badlogic/gdx/graphics/Color;)V

    :goto_1
    invoke-virtual {v8, v10}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->getPieChartValue(I)Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;->getPercentage()F

    move-result v0

    mul-float v0, v0, p7

    add-float/2addr v9, v0

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, v7, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->oPB:Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->end()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    return-void
.end method

.method private final drawPieChart_Data2(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIIILaoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;FFLcom/badlogic/gdx/graphics/Color;)V
    .locals 8

    move-object v7, p0

    :try_start_0
    iget-object v0, v7, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->oPB:Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->begin()V

    move/from16 v0, p8

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->setPercentage(F)V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object/from16 v6, p9

    invoke-direct/range {v0 .. v6}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->drawCircle2(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIIILcom/badlogic/gdx/graphics/Color;)V

    iget-object v0, v7, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->oPB:Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/PolygonSpriteBatch;->end()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method protected final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIIILaoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;ZF)V
    .locals 17

    move-object/from16 v0, p7

    :try_start_0
    new-instance v8, Lcom/badlogic/gdx/graphics/Color;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->getPieChartValue_ColorR(I)F

    move-result v2

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->getPieChartValue_ColorG(I)F

    move-result v3

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->getPieChartValue_ColorB(I)F

    move-result v1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v8, v2, v3, v1, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v1 .. v8}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->drawCircle_100Percent(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIIILcom/badlogic/gdx/graphics/Color;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :try_start_1
    sget-object v16, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->COLOR_UNKNOWN_DATA:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move/from16 v12, p3

    move/from16 v13, p4

    move/from16 v14, p5

    move/from16 v15, p6

    invoke-direct/range {v9 .. v16}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->drawCircle_100Percent(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIIILcom/badlogic/gdx/graphics/Color;)V

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p9

    invoke-direct/range {v1 .. v8}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->drawPieChart_Data(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIIILaoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;F)V

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method protected final draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIIILaoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;ZFFLcom/badlogic/gdx/graphics/Color;)V
    .locals 17

    :try_start_0
    sget-object v8, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->progressBarBG:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v1 .. v8}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->drawCircle_100Percent(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIIILcom/badlogic/gdx/graphics/Color;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    :try_start_1
    sget-object v16, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->COLOR_UNKNOWN_DATA:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move/from16 v12, p3

    move/from16 v13, p4

    move/from16 v14, p5

    move/from16 v15, p6

    invoke-direct/range {v9 .. v16}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->drawCircle_100Percent(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIIILcom/badlogic/gdx/graphics/Color;)V

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p9

    move/from16 v9, p10

    move-object/from16 v10, p11

    invoke-direct/range {v1 .. v10}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->drawPieChart_Data2(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIIILaoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;FFLcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :goto_1
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method public final getHeight()I
    .locals 1

    sget-object v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->pieChart_Frame:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    return v0
.end method

.method public final getWidth()I
    .locals 1

    sget-object v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->pieChart_Frame:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    return v0
.end method

.method protected final setPercentage(F)V
    .locals 17

    move-object/from16 v0, p0

    const/high16 v1, 0x42b40000    # 90.0f

    invoke-direct {v0, v1}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->convertToRadians(F)F

    move-result v1

    const/high16 v2, 0x43b40000    # 360.0f

    mul-float v2, v2, p1

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    invoke-direct {v0, v2}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->convertToRadians(F)F

    move-result v2

    sub-float/2addr v1, v2

    sget-object v2, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->pieChart_BG:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->pieChart_BG:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v3

    if-le v2, v3, :cond_0

    sget-object v2, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->pieChart_BG:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v2

    goto :goto_0

    :cond_0
    sget-object v2, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->pieChart_BG:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v2

    :goto_0
    int-to-float v2, v2

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    float-to-double v1, v2

    mul-double/2addr v5, v1

    double-to-float v5, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    mul-double/2addr v3, v1

    double-to-float v1, v3

    new-instance v2, Lcom/badlogic/gdx/math/Vector2;

    iget-object v3, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float/2addr v3, v1

    iget-object v1, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float/2addr v1, v5

    invoke-direct {v2, v3, v1}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    invoke-direct {v0, v2}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->IntersectPoint(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    iget-object v2, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->intersectAt:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer$IntersectAt;

    sget-object v3, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer$IntersectAt;->TOP:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer$IntersectAt;

    const/16 v4, 0xc

    const/16 v5, 0xb

    const/16 v6, 0x9

    const/16 v7, 0xa

    const/16 v8, 0x8

    const/4 v9, 0x7

    const/4 v10, 0x6

    const/4 v11, 0x5

    const/4 v12, 0x4

    const/4 v13, 0x3

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x2

    if-ne v2, v3, :cond_2

    iget v2, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    sget-object v3, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->pieChart_BG:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1

    const/16 v2, 0xe

    new-array v2, v2, [F

    iget-object v3, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    aput v3, v2, v15

    iget-object v3, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    aput v3, v2, v14

    iget-object v3, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->centerTop:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    aput v3, v2, v16

    iget-object v3, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->centerTop:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    aput v3, v2, v13

    iget-object v3, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->leftTop:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    aput v3, v2, v12

    iget-object v3, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->leftTop:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    aput v3, v2, v11

    iget-object v3, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->leftBottom:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    aput v3, v2, v10

    iget-object v3, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->leftBottom:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    aput v3, v2, v9

    iget-object v3, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->rightBottom:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    aput v3, v2, v8

    iget-object v3, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->rightBottom:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    aput v3, v2, v6

    iget-object v3, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->rightTop:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    aput v3, v2, v7

    iget-object v3, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->rightTop:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    aput v3, v2, v5

    iget v3, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    aput v3, v2, v4

    const/16 v3, 0xd

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    aput v1, v2, v3

    iput-object v2, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->fv:[F

    goto/16 :goto_1

    :cond_1
    new-array v2, v10, [F

    iget-object v3, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    aput v3, v2, v15

    iget-object v3, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    aput v3, v2, v14

    iget-object v3, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->centerTop:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    aput v3, v2, v16

    iget-object v3, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->centerTop:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    aput v3, v2, v13

    iget v3, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    aput v3, v2, v12

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    aput v1, v2, v11

    iput-object v2, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->fv:[F

    goto/16 :goto_1

    :cond_2
    iget-object v2, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->intersectAt:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer$IntersectAt;

    sget-object v3, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer$IntersectAt;->BOTTOM:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer$IntersectAt;

    if-ne v2, v3, :cond_3

    new-array v2, v7, [F

    iget-object v3, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    aput v3, v2, v15

    iget-object v3, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    aput v3, v2, v14

    iget-object v3, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->centerTop:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    aput v3, v2, v16

    iget-object v3, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->centerTop:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    aput v3, v2, v13

    iget-object v3, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->leftTop:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    aput v3, v2, v12

    iget-object v3, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->leftTop:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    aput v3, v2, v11

    iget-object v3, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->leftBottom:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    aput v3, v2, v10

    iget-object v3, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->leftBottom:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    aput v3, v2, v9

    iget v3, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    aput v3, v2, v8

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    aput v1, v2, v6

    iput-object v2, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->fv:[F

    goto/16 :goto_1

    :cond_3
    iget-object v2, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->intersectAt:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer$IntersectAt;

    sget-object v3, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer$IntersectAt;->LEFT:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer$IntersectAt;

    if-ne v2, v3, :cond_4

    new-array v2, v8, [F

    iget-object v3, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    aput v3, v2, v15

    iget-object v3, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    aput v3, v2, v14

    iget-object v3, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->centerTop:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    aput v3, v2, v16

    iget-object v3, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->centerTop:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    aput v3, v2, v13

    iget-object v3, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->leftTop:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    aput v3, v2, v12

    iget-object v3, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->leftTop:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    aput v3, v2, v11

    iget v3, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    aput v3, v2, v10

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    aput v1, v2, v9

    iput-object v2, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->fv:[F

    goto :goto_1

    :cond_4
    iget-object v2, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->intersectAt:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer$IntersectAt;

    sget-object v3, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer$IntersectAt;->RIGHT:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer$IntersectAt;

    if-ne v2, v3, :cond_5

    new-array v2, v4, [F

    iget-object v3, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    aput v3, v2, v15

    iget-object v3, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    aput v3, v2, v14

    iget-object v3, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->centerTop:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    aput v3, v2, v16

    iget-object v3, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->centerTop:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    aput v3, v2, v13

    iget-object v3, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->leftTop:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    aput v3, v2, v12

    iget-object v3, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->leftTop:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    aput v3, v2, v11

    iget-object v3, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->leftBottom:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    aput v3, v2, v10

    iget-object v3, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->leftBottom:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    aput v3, v2, v9

    iget-object v3, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->rightBottom:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    aput v3, v2, v8

    iget-object v3, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->rightBottom:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    aput v3, v2, v6

    iget v3, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    aput v3, v2, v7

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    aput v1, v2, v5

    iput-object v2, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->fv:[F

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    iput-object v1, v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;->fv:[F

    :goto_1
    return-void
.end method
