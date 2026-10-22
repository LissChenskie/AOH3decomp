.class public Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;
.super Ljava/lang/Object;
.source "Renderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer$SimpleTaskArmyText;
    }
.end annotation


# static fields
.field public static BACKGROUND_COLOR:Lcom/badlogic/gdx/graphics/Color; = null

.field public static BOX_CORNER_TIME:J = 0x0L

.field public static BOX_CORNER_TIMER:J = 0x0L

.field public static final LOADING_CHANGE_TEXT_TIME:I = 0xfa0

.field public static boxBGExtraY:I = 0x0

.field public static camera:Lcom/badlogic/gdx/graphics/OrthographicCamera; = null

.field public static charset:Ljava/lang/String; = null

.field public static drawArmyInProvince:Z = true

.field public static drawerPix:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public static fontArmy_GlyphLayout:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

.field public static fontBorder:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/badlogic/gdx/graphics/g2d/BitmapFont;",
            ">;"
        }
    .end annotation
.end field

.field public static fontBorderSize:I

.field public static fontMain:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/badlogic/gdx/graphics/g2d/BitmapFont;",
            ">;"
        }
    .end annotation
.end field

.field public static fontMainSize:I

.field public static glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

.field public static iBoxCornerX:I

.field public static iLoadingTextWidth:I

.field public static loadingTime:J

.field private static numOfScissors:I

.field public static oSBBorder:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

.field public static peekBounds:Lcom/badlogic/gdx/math/Rectangle;

.field public static pieChartRenderer:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;

.field public static sLoadingText:Ljava/lang/String;

.field public static shaderAlpha:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

.field public static shaderAlpha2:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

.field public static shaderAlpha_Map:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

.field public static shaderAlpha_MapSea:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

.field public static shaderAlpha_Pattern:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

.field public static shaderBlackWhite:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

.field public static shaderBlur:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

.field public static shaderDefault:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

.field public static shaderDefaultProvince:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

.field public static shaderDefault_FBO:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

.field public static shaderOutline:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

.field public static shaderTime:F

.field public static shaderTime2:F

.field public static shaderWater:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

.field public static shaderWater2:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

.field public static shaderWater3:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

.field public static shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

.field public static simpleTasksCivNames:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;",
            ">;"
        }
    .end annotation
.end field

.field public static simpleTasks_ArmyWidth:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer$SimpleTaskArmyText;",
            ">;"
        }
    .end annotation
.end field

.field public static final textRotatedVector3:Lcom/badlogic/gdx/math/Vector3;

.field public static uFPS:Laoc/kingdoms/lukasz/utilities/FPS;

.field public static updateBackgroundColor:Z

.field public static viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;


# instance fields
.field public oSB:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3d507c85    # 0.0509f

    const v2, 0x3df8d4fe    # 0.1215f

    const v3, 0x3e44b5dd    # 0.1921f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->BACKGROUND_COLOR:Lcom/badlogic/gdx/graphics/Color;

    const/4 v0, 0x1

    sput-boolean v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->updateBackgroundColor:Z

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->simpleTasksCivNames:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->simpleTasks_ArmyWidth:Ljava/util/List;

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sput v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->iBoxCornerX:I

    const-wide/16 v1, 0x0

    sput-wide v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->BOX_CORNER_TIME:J

    const-wide/16 v5, 0x38

    sput-wide v5, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->BOX_CORNER_TIMER:J

    new-instance v3, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    invoke-direct {v3}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;-><init>()V

    sput-object v3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    const-string v3, ""

    sput-object v3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->charset:Ljava/lang/String;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    sput-object v5, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    sput v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMainSize:I

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    sput-object v5, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontBorder:Ljava/util/List;

    sput v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontBorderSize:I

    new-instance v5, Lcom/badlogic/gdx/math/Vector3;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v6, v4}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    sput-object v5, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->textRotatedVector3:Lcom/badlogic/gdx/math/Vector3;

    sput-object v3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->sLoadingText:Ljava/lang/String;

    sput v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->iLoadingTextWidth:I

    sput-wide v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->loadingTime:J

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput p1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sput p2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    new-instance p1, Lcom/badlogic/gdx/graphics/OrthographicCamera;

    sget p2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float p2, p2

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v0, v0

    invoke-direct {p1, p2, v0}, Lcom/badlogic/gdx/graphics/OrthographicCamera;-><init>(FF)V

    sput-object p1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    sget p2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float p2, p2

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, p2, v0}, Lcom/badlogic/gdx/graphics/OrthographicCamera;->setToOrtho(ZFF)V

    new-instance p1, Lcom/badlogic/gdx/utils/viewport/FitViewport;

    sget p2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float p2, p2

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v0, v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    invoke-direct {p1, p2, v0, v1}, Lcom/badlogic/gdx/utils/viewport/FitViewport;-><init>(FFLcom/badlogic/gdx/graphics/Camera;)V

    sput-object p1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    new-instance p1, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-direct {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;-><init>()V

    iput-object p1, p0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->oSB:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    new-instance p1, Laoc/kingdoms/lukasz/utilities/FPS;

    invoke-direct {p1}, Laoc/kingdoms/lukasz/utilities/FPS;-><init>()V

    sput-object p1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->uFPS:Laoc/kingdoms/lukasz/utilities/FPS;

    new-instance p1, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-direct {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;-><init>()V

    sput-object p1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->oSBBorder:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-static {}, Laoc/kingdoms/lukasz/textures/ImageManager;->buildPix_IMG()Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p1

    sput-object p1, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    invoke-static {}, Laoc/kingdoms/lukasz/textures/ImageManager;->buildPix()I

    move-result p1

    sput p1, Laoc/kingdoms/lukasz/textures/Images;->pix2:I

    new-instance p1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-object p2, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p2}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    sput-object p1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawerPix:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    new-instance p1, Lspace/earlygrey/shapedrawer/ShapeDrawer;

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->oSBBorder:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawerPix:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {p1, p2, v0}, Lspace/earlygrey/shapedrawer/ShapeDrawer;-><init>(Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    sput-object p1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    invoke-direct {p0}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->loadShaders()V

    return-void
.end method

.method public static addSimpleTaskCivsNames(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V
    .locals 1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->simpleTasksCivNames:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->simpleTasksCivNames:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static addSimpleTask_ArmyWidth(Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer$SimpleTaskArmyText;)V
    .locals 1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->simpleTasks_ArmyWidth:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->simpleTasks_ArmyWidth:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static final clearFonts()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMainSize:I

    if-ge v1, v2, :cond_0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->dispose()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    sput v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMainSize:I

    return-void
.end method

.method public static final clearUnclearedScissors(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 1

    :goto_0
    sget v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->numOfScissors:I

    if-lez v0, :cond_0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->clipView_End(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final clipViewPeek()V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->peekScissors()Lcom/badlogic/gdx/math/Rectangle;

    move-result-object v0

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->peekBounds:Lcom/badlogic/gdx/math/Rectangle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static final clipViewPeek_Add(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 0

    :try_start_0
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->clearUnclearedScissors(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->peekBounds:Lcom/badlogic/gdx/math/Rectangle;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->pushScissors(Lcom/badlogic/gdx/math/Rectangle;)Z

    sget p0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->numOfScissors:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->numOfScissors:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static final clipView_End(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 2

    :try_start_0
    sget v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->numOfScissors:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->numOfScissors:I

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->popScissors()Lcom/badlogic/gdx/math/Rectangle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static final clipView_Start(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)Z
    .locals 1

    :try_start_0
    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    int-to-float p1, p1

    int-to-float p2, p2

    int-to-float p3, p3

    int-to-float p4, p4

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/math/Rectangle;-><init>(FFFF)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    sget p0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->numOfScissors:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->numOfScissors:I

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->pushScissors(Lcom/badlogic/gdx/math/Rectangle;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static final drawBlueBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V
    .locals 8

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_INFO:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_INFO:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_INFO:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v4, 0x3f666666    # 0.9f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_INFO:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_INFO:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_INFO:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gradientHorizontal:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_INFO:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_INFO:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_INFO:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    const/high16 v4, 0x3e800000    # 0.25f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_INFO:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_INFO:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_INFO:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    add-int/lit8 v3, p2, 0x1

    const/4 v5, 0x1

    move-object v1, p0

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    add-int v7, p2, p4

    add-int/lit8 v3, v7, -0x2

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v6}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    move-object v1, p0

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    add-int/lit8 v3, v7, -0x1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public static final drawBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIF)V
    .locals 7

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxEdge:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIF)V

    return-void
.end method

.method public static final drawBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIF)V
    .locals 9

    add-int/lit8 p6, p5, 0x1

    div-int/lit8 p6, p6, 0x2

    div-int/lit8 p5, p5, 0x2

    invoke-static {p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {p4, v0}, Ljava/lang/Math;->max(II)I

    move-result p4

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    sub-int v4, p4, v0

    move-object v0, p1

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    add-int v8, p2, p4

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    sub-int v2, v8, v0

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZ)V

    add-int/2addr p3, p6

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result p6

    sub-int v4, p4, p6

    const/4 v6, 0x0

    const/4 v7, 0x1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result p2

    sub-int v2, v8, p2

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v4

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget-object p1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public static final drawBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/textures/Image;IIIIF)V
    .locals 9

    add-int/lit8 p6, p5, 0x1

    div-int/lit8 p6, p6, 0x2

    div-int/lit8 p5, p5, 0x2

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {p4, v0}, Ljava/lang/Math;->max(II)I

    move-result p4

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    sub-int v4, p4, v0

    move-object v0, p1

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    add-int v8, p2, p4

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    sub-int v2, v8, v0

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZ)V

    add-int/2addr p3, p6

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result p6

    sub-int v4, p4, p6

    const/4 v6, 0x0

    const/4 v7, 0x1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result p2

    sub-int v2, v8, p2

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v4

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget-object p1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public static final drawBox2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIF)V
    .locals 12

    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    const/4 v5, 0x1

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v6, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    add-int v0, p1, p3

    add-int/lit8 v8, v0, -0x1

    add-int/lit8 v3, p2, 0x1

    const/4 v10, 0x1

    add-int/lit8 v5, p4, -0x2

    move-object v7, p0

    move v9, v3

    move v11, v5

    invoke-virtual/range {v6 .. v11}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    const/4 v4, 0x1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    add-int v1, p2, p4

    add-int/lit8 v3, v1, -0x1

    const/4 v5, 0x1

    move-object v1, p0

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public static final drawBoxBOT(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIF)V
    .locals 16

    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    sub-int v4, p4, v1

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v8

    add-int v0, p2, p4

    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    sub-int v10, v0, v1

    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v12

    const/4 v14, 0x1

    const/4 v15, 0x1

    move-object/from16 v9, p0

    move/from16 v11, p3

    move/from16 v13, p5

    invoke-virtual/range {v8 .. v15}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public static final drawBoxBOT(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/textures/Image;IIIIF)V
    .locals 8

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result p6

    sub-int v4, p4, p6

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p1

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    add-int/2addr p2, p4

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result p4

    sub-int v2, p2, p4

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v4

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget-object p1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public static final drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V
    .locals 10

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3f59999a    # 0.85f

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxBGLinePix:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxBGCorner:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    sub-int v2, p1, v1

    sub-int v1, p2, v1

    invoke-virtual {v0, p0, v2, v1}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxBGCorner:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    add-int v6, p1, p3

    sget v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    sub-int v3, p2, v1

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v1, p0

    move v2, v6

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxBGCorner:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    sub-int v2, p1, v1

    add-int v8, p2, p4

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    move v3, v8

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxBGCorner:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    const/4 v4, 0x1

    move v2, v6

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxBGLine:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    sget v4, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    sub-int v2, p1, v4

    move v3, p2

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxBGLine:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    sget v4, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    const/4 v7, 0x1

    const/4 v9, 0x0

    move v2, v6

    move v6, v7

    move v7, v9

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxBGLineH:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    sget v5, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    sub-int v3, p2, v5

    move v2, p1

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxBGLineH:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    sget v5, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    move v3, v8

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public static final drawBoxCorner2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V
    .locals 14

    move-object v10, p0

    move/from16 v11, p4

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct {v0, v12, v12, v12, v12}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxBGCorner:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    sub-int v2, p1, v1

    add-int v6, p2, v11

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    move v3, v6

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxBGCorner:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    add-int v2, p1, p3

    const/4 v4, 0x1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->BOX_CORNER_TIME:J

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v4, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->BOX_CORNER_TIMER:J

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->BOX_CORNER_TIME:J

    sget v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->iBoxCornerX:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->iBoxCornerX:I

    :cond_0
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxBGLineH:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    sget v5, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->iBoxCornerX:I

    neg-int v7, v1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v13, 0x1

    move-object v1, p0

    move v2, p1

    move v3, v6

    move/from16 v4, p3

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v13

    invoke-virtual/range {v0 .. v9}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIZZ)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f400000    # 0.75f

    const/4 v6, 0x0

    invoke-direct {v0, v6, v6, v6, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v2, p1, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int v4, p3, v1

    move-object v1, p0

    move/from16 v3, p2

    move/from16 v5, p4

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v6, v6, v6, v12}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v2, p1, v1

    int-to-float v1, v11

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    float-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v1, v3

    add-int v3, p2, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int v4, p3, v1

    div-int/lit8 v8, v11, 0x2

    move-object v1, p0

    move v5, v8

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v2, p1, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v1, v3

    add-int v3, p2, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int v4, p3, v1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    return-void
.end method

.method public static final drawBoxCornerAlpha(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V
    .locals 10

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxBGLinePix:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxBGCorner:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    sub-int v2, p1, v1

    sub-int v1, p2, v1

    invoke-virtual {v0, p0, v2, v1}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxBGCorner:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    add-int v6, p1, p3

    sget v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    sub-int v3, p2, v1

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v1, p0

    move v2, v6

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxBGCorner:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    sub-int v2, p1, v1

    add-int v8, p2, p4

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    move v3, v8

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxBGCorner:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    const/4 v4, 0x1

    move v2, v6

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxBGLine:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    sget v4, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    sub-int v2, p1, v4

    move v3, p2

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxBGLine:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    sget v4, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    const/4 v7, 0x1

    const/4 v9, 0x0

    move v2, v6

    move v6, v7

    move v7, v9

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxBGLineH:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    sget v5, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    sub-int v3, p2, v5

    move v2, p1

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxBGLineH:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    sget v5, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    move v3, v8

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public static final drawBoxCornerEmpty(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V
    .locals 10

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3f333333    # 0.7f

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxBGCorner:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    sub-int v2, p1, v1

    sub-int v1, p2, v1

    invoke-virtual {v0, p0, v2, v1}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxBGCorner:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    add-int v6, p1, p3

    sget v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    sub-int v3, p2, v1

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v1, p0

    move v2, v6

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxBGCorner:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    sub-int v2, p1, v1

    add-int v8, p2, p4

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    move v3, v8

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxBGCorner:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    const/4 v4, 0x1

    move v2, v6

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxBGLine:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    sget v4, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    sub-int v2, p1, v4

    move v3, p2

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxBGLine:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    sget v4, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    const/4 v7, 0x1

    const/4 v9, 0x0

    move v2, v6

    move v6, v7

    move v7, v9

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxBGLineH:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    sget v5, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    sub-int v3, p2, v5

    move v2, p1

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxBGLineH:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    sget v5, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    move v3, v8

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public static final drawBoxHover(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIF)V
    .locals 7

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxEdge:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxHover(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIF)V

    return-void
.end method

.method public static final drawBoxHover(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIF)V
    .locals 13

    move-object v8, p0

    move/from16 v9, p5

    int-to-float v0, v9

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v7, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v10, v0

    invoke-static {p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-static {p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    sub-int v4, p4, v1

    move-object v1, p0

    move v2, p2

    move/from16 v3, p3

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    invoke-static {p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    add-int v11, p2, p4

    invoke-static {p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    sub-int v2, v11, v1

    invoke-static {p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v4

    const/4 v6, 0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZ)V

    invoke-static {p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    add-int v12, p3, v7

    invoke-static {p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    sub-int v4, p4, v1

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p0

    move v2, p2

    move v3, v12

    move v5, v10

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    invoke-static {p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-static {p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    sub-int v2, v11, v1

    invoke-static {p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v4

    const/4 v6, 0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3d4ccccd    # 0.05f

    mul-float v1, v1, p6

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->noise:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    move-object v1, p0

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LINE2:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LINE2:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LINE2:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LINE2:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float v4, v4, p6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    add-int/lit8 v6, p2, 0x1

    add-int/lit8 v3, p3, 0x1

    add-int/lit8 v7, p4, -0x2

    const/4 v5, 0x1

    move-object v1, p0

    move v2, v6

    move v4, v7

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    add-int v1, p3, v9

    add-int/lit8 v1, v1, -0x2

    const/4 v2, 0x1

    move-object p1, v0

    move-object p2, p0

    move/from16 p3, v6

    move/from16 p4, v1

    move/from16 p5, v7

    move/from16 p6, v2

    invoke-virtual/range {p1 .. p6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public static final drawBoxLineFrame(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIILcom/badlogic/gdx/graphics/Color;)V
    .locals 11

    move-object v8, p0

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f400000    # 0.75f

    const/4 v9, 0x0

    invoke-direct {v0, v9, v9, v9, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    div-int/lit8 v2, v2, 0x2

    add-int v5, v1, v2

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    add-int v10, p2, p4

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v1, v10, v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    div-int/lit8 v2, v2, 0x2

    sub-int v3, v1, v2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    div-int/lit8 v2, v2, 0x2

    add-int v5, v1, v2

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p0

    move v2, p1

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {v0, v9, v9, v9, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    div-int/lit8 v2, v2, 0x2

    add-int v5, v1, v2

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v1, v10, v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    div-int/lit8 v2, v2, 0x2

    sub-int v3, v1, v2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    div-int/lit8 v2, v2, 0x2

    add-int v5, v1, v2

    move-object v1, p0

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    move-object/from16 v0, p5

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    const/4 v5, 0x1

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    add-int v1, p1, p3

    add-int/lit8 v2, v1, -0x1

    add-int/lit8 v6, p2, 0x1

    const/4 v4, 0x1

    add-int/lit8 v7, p4, -0x2

    move-object v1, p0

    move v3, v6

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    add-int/lit8 v3, v10, -0x1

    const/4 v5, 0x1

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public static final drawBoxProgress(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/textures/Image;IIIII)V
    .locals 9

    add-int/lit8 p6, p5, 0x1

    div-int/lit8 p6, p6, 0x2

    div-int/lit8 p5, p5, 0x2

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    if-le v0, p4, :cond_0

    move-object v0, p1

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    add-int v3, p3, p6

    const/4 v6, 0x0

    const/4 v7, 0x1

    move v5, p5

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    sub-int v4, p4, v0

    move-object v0, p1

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    add-int v8, p2, p4

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    sub-int v2, v8, v0

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZ)V

    add-int/2addr p3, p6

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result p6

    sub-int v4, p4, p6

    const/4 v6, 0x0

    const/4 v7, 0x1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result p2

    sub-int v2, v8, p2

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v4

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    :goto_0
    sget-object p1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public static final drawBoxTOP(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIF)V
    .locals 12

    invoke-static {p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-static {p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    sub-int v4, p4, v1

    move-object v1, p0

    move v2, p2

    move v3, p3

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    invoke-static {p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v5

    add-int v0, p2, p4

    invoke-static {p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    sub-int v7, v0, v1

    invoke-static {p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v9

    const/4 v11, 0x1

    move-object v6, p0

    move v8, p3

    move/from16 v10, p5

    invoke-virtual/range {v5 .. v11}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZ)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    move-object v1, p0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public static final drawBoxTOP(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/textures/Image;IIIIF)V
    .locals 7

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result p6

    sub-int v4, p4, p6

    move-object v0, p1

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    add-int/2addr p2, p4

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result p4

    sub-int v2, p2, p4

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v4

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZ)V

    sget-object p1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public static final drawBox_EDGE_LorR(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIZZ)V
    .locals 8

    invoke-static {p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    return-void
.end method

.method public static final drawBox_EDGE_TOP_LR(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIII)V
    .locals 12

    invoke-static {p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-static {p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    sub-int v4, p4, v1

    move-object v1, p0

    move v2, p2

    move v3, p3

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    invoke-static {p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v5

    add-int v0, p2, p4

    invoke-static {p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    sub-int v7, v0, v1

    invoke-static {p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v9

    const/4 v11, 0x1

    move-object v6, p0

    move v8, p3

    move/from16 v10, p5

    invoke-virtual/range {v5 .. v11}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZ)V

    return-void
.end method

.method public static final drawBox_EDGE_TOP_LR(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIZ)V
    .locals 15

    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    sub-int v4, p4, v1

    const/4 v6, 0x0

    move-object v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v5, p5

    move/from16 v7, p6

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v7

    add-int v0, p2, p4

    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    sub-int v9, v0, v1

    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v11

    const/4 v13, 0x1

    move-object v8, p0

    move/from16 v10, p3

    move/from16 v12, p5

    move/from16 v14, p6

    invoke-virtual/range {v7 .. v14}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    return-void
.end method

.method public static final drawEditorMenuBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIII)V
    .locals 7

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->mainBox:I

    add-int v2, p1, p5

    add-int v3, p2, p6

    const/4 v6, 0x1

    move-object v0, p0

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox_EDGE_TOP_LR(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIZ)V

    return-void
.end method

.method public static final drawLine(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V
    .locals 11

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LINE1:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LINE1:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LINE1:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v5, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    const/4 v10, 0x1

    move-object v6, p0

    move v7, p1

    move v8, p2

    move v9, p3

    invoke-virtual/range {v5 .. v10}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LINE2:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LINE2:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LINE2:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v5, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    add-int/lit8 v8, p2, 0x1

    invoke-virtual/range {v5 .. v10}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object p1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public static final drawLineShape(IIII)V
    .locals 1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    int-to-float p0, p0

    neg-int p1, p1

    int-to-float p1, p1

    int-to-float p2, p2

    neg-int p3, p3

    int-to-float p3, p3

    invoke-virtual {v0, p0, p1, p2, p3}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->line(FFFF)V

    return-void
.end method

.method public static final drawLoading(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V
    .locals 9

    const/4 v0, 0x0

    sget-object v0, Lcom/google/android/gms/internal/tasks/Vhe/SwmJtrccN;->WOwFlGWqd:Ljava/lang/String;

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->logo:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sget-wide v1, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    const-wide/16 v3, 0xfa0

    sub-long/2addr v1, v3

    sget-wide v3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->loadingTime:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->iLoading_NumOfTexts:I

    invoke-virtual {v0, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->getLoading(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->sLoadingText:Ljava/lang/String;

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->loadingTime:J

    new-instance v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->sLoadingText:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int v0, v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->iLoadingTextWidth:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/4 v7, 0x0

    const v8, 0x3f266666    # 0.65f

    invoke-direct {v0, v7, v7, v7, v8}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    add-int/2addr v0, p2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sub-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0xb

    sub-int v4, v0, v2

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x6

    add-int v6, v0, v2

    move-object v2, p0

    move v3, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3ecccccd    # 0.4f

    invoke-direct {v0, v7, v7, v7, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p1

    sget v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->iLoadingTextWidth:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x6

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    sub-int v3, v0, v2

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    add-int/2addr v0, p2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sub-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0xb

    sub-int v4, v0, v2

    sget v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->iLoadingTextWidth:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x6

    add-int v5, v0, v2

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x6

    add-int v6, v0, v2

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v7, v7, v7, v8}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    add-int/2addr v0, p2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sub-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0xb

    sub-int/2addr v0, v2

    add-int/lit8 v4, v0, 0x1

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    const/4 v6, 0x1

    move-object v2, p0

    move v3, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    add-int/2addr v0, p2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sub-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0xb

    sub-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    add-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x6

    add-int/2addr v0, v2

    add-int/lit8 v4, v0, -0x2

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->sLoadingText:Ljava/lang/String;

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p1

    sget v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->iLoadingTextWidth:I

    div-int/lit8 v1, v1, 0x2

    sub-int v4, v0, v1

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    add-int/2addr v0, p2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sub-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x8

    sub-int v5, v0, v1

    new-instance v6, Lcom/badlogic/gdx/graphics/Color;

    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_LOGO:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_LOGO:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v7, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_LOGO:Lcom/badlogic/gdx/graphics/Color;

    iget v7, v7, Lcom/badlogic/gdx/graphics/Color;->b:F

    const/high16 v8, 0x3f400000    # 0.75f

    invoke-direct {v6, v0, v1, v7, v8}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3e19999a    # 0.15f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->logo:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p1

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->logo:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    add-int/2addr v2, p2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sub-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0xe

    sub-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->logo:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->logo:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p1

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->logo:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int v3, v0, v2

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    add-int/2addr v0, p2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sub-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0xe

    sub-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->logo:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    sub-int v4, v0, v2

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->logo:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->logo:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p3

    float-to-int v2, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->logo:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    return-void
.end method

.method public static final drawMenusBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZ)V
    .locals 9

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->insideTop:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->insideBot:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    sub-int v6, p4, v0

    const/4 v8, 0x0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v7, p5

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->insideBot:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    add-int/2addr p2, p4

    sget p4, Laoc/kingdoms/lukasz/textures/Images;->insideBot:I

    invoke-static {p4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p4

    invoke-virtual {p4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result p4

    sub-int v4, p2, p4

    sget p2, Laoc/kingdoms/lukasz/textures/Images;->insideBot:I

    invoke-static {p2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p2

    invoke-virtual {p2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    return-void
.end method

.method public static final drawMenusBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZII)V
    .locals 16

    invoke-static/range {p6 .. p6}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-static/range {p7 .. p7}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    sub-int v5, p4, v1

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v6, p5

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    invoke-static/range {p7 .. p7}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v8

    add-int v0, p2, p4

    invoke-static/range {p7 .. p7}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    sub-int v11, v0, v1

    invoke-static/range {p7 .. p7}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v13

    const/4 v15, 0x0

    move-object/from16 v9, p0

    move/from16 v10, p1

    move/from16 v12, p3

    move/from16 v14, p5

    invoke-virtual/range {v8 .. v15}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    return-void
.end method

.method public static final drawMenusBoxTopOnly(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZI)V
    .locals 8

    invoke-static {p6}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    const/4 v7, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    return-void
.end method

.method public static final drawRect(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V
    .locals 12

    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    const/4 v5, 0x1

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v6, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    add-int v0, p2, p4

    add-int/lit8 v9, v0, -0x1

    const/4 v11, 0x1

    move-object v7, p0

    move v8, p1

    move v10, p3

    invoke-virtual/range {v6 .. v11}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    add-int/lit8 v3, p2, 0x1

    const/4 v4, 0x1

    add-int/lit8 v5, p4, -0x2

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    add-int v2, p1, p3

    move v3, p2

    move/from16 v5, p4

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    return-void
.end method

.method public static final drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;FIILcom/badlogic/gdx/graphics/Color;)V
    .locals 0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-static {p3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->setFontScale(F)V

    sget-object p3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p3, p6}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object p3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    int-to-float p3, p4

    neg-int p4, p5

    int-to-float p4, p4

    invoke-virtual {p1, p0, p2, p3, p4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FF)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->resetFontScale()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static final drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V
    .locals 1

    if-eqz p2, :cond_0

    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0, p5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object p5, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {p5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    int-to-float p3, p3

    neg-int p4, p4

    int-to-float p4, p4

    invoke-virtual {p1, p0, p2, p3, p4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FF)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static final drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;FIILcom/badlogic/gdx/graphics/Color;)V
    .locals 7

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;FIILcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public static final drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V
    .locals 6

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public static final declared-synchronized drawTextBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;II)V
    .locals 4

    const-class v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->getTransformMatrix()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/math/Matrix4;->cpy()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p2, :cond_0

    :try_start_1
    new-instance v2, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v2}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    int-to-float p3, p3

    neg-int p4, p4

    int-to-float p4, p4

    const/4 v3, 0x0

    invoke-virtual {v2, p3, p4, v3}, Lcom/badlogic/gdx/math/Matrix4;->setTranslation(FFF)Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setTransformMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    sget-object p3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontBorder:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p1, p0, p2, v3, v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FF)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_2
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setTransformMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    throw p1

    :catch_0
    :cond_0
    :goto_0
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setTransformMatrix(Lcom/badlogic/gdx/math/Matrix4;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static final drawTextRotated(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;F)V
    .locals 5

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->getTransformMatrix()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Matrix4;->cpy()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    :try_start_0
    new-instance v1, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v1}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    new-instance v2, Lcom/badlogic/gdx/math/Vector3;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-direct {v2, v4, v4, v3}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    invoke-virtual {v1, v2, p6}, Lcom/badlogic/gdx/math/Matrix4;->rotate(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Matrix4;

    int-to-float p3, p3

    neg-int p4, p4

    int-to-float p4, p4

    invoke-virtual {v1, p3, p4, v4}, Lcom/badlogic/gdx/math/Matrix4;->setTranslation(FFF)Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setTransformMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    sget-object p3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p3, p5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object p3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p1, p0, p2, v4, v4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FF)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setTransformMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    throw p1

    :catch_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setTransformMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    :cond_0
    return-void
.end method

.method public static final drawTextRotated(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;F)V
    .locals 7

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawTextRotated(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;F)V

    return-void
.end method

.method public static final declared-synchronized drawTextRotatedBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;F)V
    .locals 4

    const-class v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;

    monitor-enter v0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->getTransformMatrix()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/math/Matrix4;->cpy()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v2, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v2}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->textRotatedVector3:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v2, v3, p6}, Lcom/badlogic/gdx/math/Matrix4;->rotate(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Matrix4;

    int-to-float p3, p3

    neg-int p4, p4

    int-to-float p4, p4

    const/4 p6, 0x0

    invoke-virtual {v2, p3, p4, p6}, Lcom/badlogic/gdx/math/Matrix4;->setTranslation(FFF)Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setTransformMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    sget-object p3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontBorder:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p3, p5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object p3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontBorder:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p1, p0, p2, p6, p6}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FF)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :try_start_2
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setTransformMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setTransformMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_0
    :goto_0
    monitor-exit v0

    return-void
.end method

.method public static final declared-synchronized drawTextRotatedBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/math/Matrix4;)V
    .locals 2

    const-class v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;

    monitor-enter v0

    if-eqz p2, :cond_0

    int-to-float p3, p3

    neg-int p4, p4

    int-to-float p4, p4

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p5, p3, p4, v1}, Lcom/badlogic/gdx/math/Matrix4;->setTranslation(FFF)Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {p0, p5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setTransformMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    sget-object p3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontBorder:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p1, p0, p2, v1, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FF)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :catch_0
    :cond_0
    :goto_0
    monitor-exit v0

    return-void
.end method

.method public static final declared-synchronized drawTextRotatedBorder_2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IIF)V
    .locals 3

    const-class v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;

    monitor-enter v0

    if-eqz p2, :cond_0

    :try_start_0
    new-instance v1, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v1}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->textRotatedVector3:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1, v2, p5}, Lcom/badlogic/gdx/math/Matrix4;->rotate(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Matrix4;

    int-to-float p3, p3

    neg-int p4, p4

    int-to-float p4, p4

    const/4 p5, 0x0

    invoke-virtual {v1, p3, p4, p5}, Lcom/badlogic/gdx/math/Matrix4;->setTranslation(FFF)Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setTransformMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    sget-object p3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontBorder:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p1, p0, p2, p5, p5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FF)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :catch_0
    :cond_0
    :goto_0
    monitor-exit v0

    return-void
.end method

.method public static final declared-synchronized drawTextRotatedBorder_2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;F)V
    .locals 3

    const-class v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;

    monitor-enter v0

    if-eqz p2, :cond_0

    :try_start_0
    new-instance v1, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v1}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->textRotatedVector3:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1, v2, p6}, Lcom/badlogic/gdx/math/Matrix4;->rotate(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Matrix4;

    int-to-float p3, p3

    neg-int p4, p4

    int-to-float p4, p4

    const/4 p6, 0x0

    invoke-virtual {v1, p3, p4, p6}, Lcom/badlogic/gdx/math/Matrix4;->setTranslation(FFF)Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setTransformMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    sget-object p3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontBorder:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p3, p5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object p3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontBorder:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p1, p0, p2, p6, p6}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FF)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :catch_0
    :cond_0
    :goto_0
    monitor-exit v0

    return-void
.end method

.method public static final drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V
    .locals 4

    if-eqz p2, :cond_0

    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3f333333    # 0.7f

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v3, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    add-int/lit8 v1, p3, -0x1

    int-to-float v1, v1

    neg-int p4, p4

    add-int/lit8 v2, p4, -0x1

    int-to-float v2, v2

    invoke-virtual {v0, p0, p2, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FF)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0, p5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object p5, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {p5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    int-to-float p3, p3

    int-to-float p4, p4

    invoke-virtual {p1, p0, p2, p3, p4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FF)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static final drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V
    .locals 6

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public static final drawTextWithShadowRotated(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;F)V
    .locals 3

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->getTransformMatrix()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Matrix4;->cpy()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    :try_start_0
    new-instance v1, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v1}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->textRotatedVector3:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1, v2, p6}, Lcom/badlogic/gdx/math/Matrix4;->rotate(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Matrix4;

    int-to-float p3, p3

    neg-int p4, p4

    int-to-float p4, p4

    const/4 p6, 0x0

    invoke-virtual {v1, p3, p4, p6}, Lcom/badlogic/gdx/math/Matrix4;->setTranslation(FFF)Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setTransformMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    sget-object p3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    new-instance p4, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f333333    # 0.7f

    invoke-direct {p4, p6, p6, p6, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p3, p4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object p3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    const/high16 p4, -0x40800000    # -1.0f

    invoke-virtual {p3, p0, p2, p4, p4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FF)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object p3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p3, p5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object p3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p1, p0, p2, p6, p6}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FF)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setTransformMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    throw p1

    :catch_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setTransformMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    :cond_0
    return-void
.end method

.method public static final drawTextWithShadowRotated(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;F)V
    .locals 7

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawTextWithShadowRotated(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;F)V

    return-void
.end method

.method public static final drawTextWithShadowScale(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;F)V
    .locals 3

    if-eqz p2, :cond_0

    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v0

    invoke-virtual {v0, p6}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    sget-object p6, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {p6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f333333    # 0.7f

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p6, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object p6, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {p6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    add-int/lit8 v0, p3, -0x1

    int-to-float v0, v0

    neg-int p4, p4

    add-int/lit8 v1, p4, -0x1

    int-to-float v1, v1

    invoke-virtual {p6, p0, p2, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FF)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object p6, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {p6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p6, p5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object p5, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {p5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    int-to-float p3, p3

    int-to-float p4, p4

    invoke-virtual {p5, p0, p2, p3, p4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FF)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object p0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static final drawText_Cache(ILjava/lang/String;II)V
    .locals 1

    if-eqz p1, :cond_0

    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getCache()Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    move-result-object p0

    int-to-float p2, p2

    neg-int p3, p3

    int-to-float p3, p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->addText(Ljava/lang/CharSequence;FF)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static final drawText_CacheBegin(ILcom/badlogic/gdx/graphics/Color;)V
    .locals 1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getCache()Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->clear()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public static final drawText_CacheEnd(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V
    .locals 1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getCache()Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getCache()Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    move-result-object p0

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->clear()V

    return-void
.end method

.method public static final getColorMixed(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;
    .locals 8

    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    iget v2, p1, Lcom/badlogic/gdx/graphics/Color;->a:F

    sub-float v2, v1, v2

    mul-float/2addr v0, v2

    sub-float v0, v1, v0

    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    iget v3, p1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v4, p1, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v0

    iget v4, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v5, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v4, v5

    iget v5, p1, Lcom/badlogic/gdx/graphics/Color;->a:F

    sub-float v5, v1, v5

    mul-float/2addr v4, v5

    div-float/2addr v4, v0

    add-float/2addr v3, v4

    iget v4, p1, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v5, p1, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v4, v5

    div-float/2addr v4, v0

    iget v5, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v6, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v5, v6

    iget v6, p1, Lcom/badlogic/gdx/graphics/Color;->a:F

    sub-float v6, v1, v6

    mul-float/2addr v5, v6

    div-float/2addr v5, v0

    add-float/2addr v4, v5

    iget v5, p1, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v6, p1, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v5, v6

    div-float/2addr v5, v0

    iget v6, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v7, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v6, v7

    iget p1, p1, Lcom/badlogic/gdx/graphics/Color;->a:F

    sub-float/2addr v1, p1

    mul-float/2addr v6, v1

    div-float/2addr v6, v0

    add-float/2addr v5, v6

    iget p0, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-direct {v2, v3, v4, v5, p0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    return-object v2
.end method

.method public static final getColorStep(IIII)F
    .locals 1

    int-to-float v0, p0

    sub-int/2addr p1, p0

    mul-int/2addr p1, p2

    int-to-float p0, p1

    int-to-float p1, p3

    div-float/2addr p0, p1

    add-float/2addr v0, p0

    const/high16 p0, 0x437f0000    # 255.0f

    div-float/2addr v0, p0

    return v0
.end method

.method public static final getColorStep(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;IIF)Lcom/badlogic/gdx/graphics/Color;
    .locals 6

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    iget v1, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v2, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v3, p1, Lcom/badlogic/gdx/graphics/Color;->r:F

    cmpl-float v2, v2, v3

    iget v2, p1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v3, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    sub-float/2addr v2, v3

    int-to-float v3, p2

    mul-float/2addr v2, v3

    int-to-float v3, p3

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v3, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v4, p1, Lcom/badlogic/gdx/graphics/Color;->g:F

    cmpl-float v3, v3, v4

    iget v3, p1, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v4, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    sub-float/2addr v3, v4

    int-to-float v4, p2

    mul-float/2addr v3, v4

    int-to-float v4, p3

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v4, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v5, p1, Lcom/badlogic/gdx/graphics/Color;->b:F

    cmpl-float v4, v4, v5

    iget p1, p1, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget p0, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    sub-float/2addr p1, p0

    int-to-float p0, p2

    mul-float/2addr p1, p0

    int-to-float p0, p3

    div-float/2addr p1, p0

    add-float/2addr v3, p1

    invoke-direct {v0, v1, v2, v3, p4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    return-object v0
.end method

.method public static final getColorStep_WithAlpha(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;II)Lcom/badlogic/gdx/graphics/Color;
    .locals 7

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    iget v1, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v2, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v3, p1, Lcom/badlogic/gdx/graphics/Color;->r:F

    cmpl-float v2, v2, v3

    iget v2, p1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v3, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    sub-float/2addr v2, v3

    int-to-float v3, p2

    mul-float/2addr v2, v3

    int-to-float v3, p3

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v3, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v4, p1, Lcom/badlogic/gdx/graphics/Color;->g:F

    cmpl-float v3, v3, v4

    iget v3, p1, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v4, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    sub-float/2addr v3, v4

    int-to-float v4, p2

    mul-float/2addr v3, v4

    int-to-float v4, p3

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v4, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v5, p1, Lcom/badlogic/gdx/graphics/Color;->b:F

    cmpl-float v4, v4, v5

    iget v4, p1, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v5, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    sub-float/2addr v4, v5

    int-to-float v5, p2

    mul-float/2addr v4, v5

    int-to-float v5, p3

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    iget v5, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    iget v6, p1, Lcom/badlogic/gdx/graphics/Color;->a:F

    cmpl-float v5, v5, v6

    iget p1, p1, Lcom/badlogic/gdx/graphics/Color;->a:F

    iget p0, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    sub-float/2addr p1, p0

    int-to-float p0, p2

    mul-float/2addr p1, p0

    int-to-float p0, p3

    div-float/2addr p1, p0

    add-float/2addr v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    return-object v0
.end method

.method public static final getDarker(II)I
    .locals 1

    const/4 v0, 0x0

    sub-int/2addr p0, p1

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    int-to-float p0, p0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public static final getDarker(Lcom/badlogic/gdx/graphics/Color;IF)Lcom/badlogic/gdx/graphics/Color;
    .locals 5

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    iget v1, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    int-to-float p1, p1

    sub-float/2addr v1, p1

    const/4 v3, 0x0

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    iget v4, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    mul-float/2addr v4, v2

    sub-float/2addr v4, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    div-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v4, v4

    iget p0, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    mul-float/2addr p0, v2

    sub-float/2addr p0, p1

    invoke-static {v3, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    div-float/2addr p0, v2

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    int-to-float p0, p0

    invoke-direct {v0, v1, v4, p0, p2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    return-object v0
.end method

.method public static final getHover_ExtraPosX()I
    .locals 1

    const/16 v0, 0x19

    return v0
.end method

.method public static final getHover_ExtraPosY()I
    .locals 1

    const/16 v0, 0x1e

    return v0
.end method

.method public static final getTextHeight(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->getTextHeight(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static final declared-synchronized getTextHeight(Ljava/lang/String;I)I
    .locals 3

    const-class v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;

    monitor-enter v0

    :try_start_0
    new-instance v1, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;-><init>()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1, p1, p0}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    iget p0, v1, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->height:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    float-to-int p0, p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static final getTextWidth(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->getTextWidth(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static final declared-synchronized getTextWidth(Ljava/lang/String;I)I
    .locals 3

    const-class v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;

    monitor-enter v0

    :try_start_0
    new-instance v1, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;-><init>()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1, p1, p0}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    iget p0, v1, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    float-to-int p0, p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static final getText_WidthHeight(Ljava/lang/String;)Laoc/kingdoms/lukasz/jakowski/zOther/XY;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->getText_WidthHeight(Ljava/lang/String;I)Laoc/kingdoms/lukasz/jakowski/zOther/XY;

    move-result-object p0

    return-object p0
.end method

.method public static final getText_WidthHeight(Ljava/lang/String;F)Laoc/kingdoms/lukasz/jakowski/zOther/XY;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->getText_WidthHeight(Ljava/lang/String;IF)Laoc/kingdoms/lukasz/jakowski/zOther/XY;

    move-result-object p0

    return-object p0
.end method

.method public static final declared-synchronized getText_WidthHeight(Ljava/lang/String;I)Laoc/kingdoms/lukasz/jakowski/zOther/XY;
    .locals 3

    const-class v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;

    monitor-enter v0

    :try_start_0
    new-instance v1, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;-><init>()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1, p1, p0}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    new-instance p0, Laoc/kingdoms/lukasz/jakowski/zOther/XY;

    iget p1, v1, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int p1, p1

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->height:F

    float-to-int v1, v1

    invoke-direct {p0, p1, v1}, Laoc/kingdoms/lukasz/jakowski/zOther/XY;-><init>(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static final declared-synchronized getText_WidthHeight(Ljava/lang/String;IF)Laoc/kingdoms/lukasz/jakowski/zOther/XY;
    .locals 3

    const-class v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;

    monitor-enter v0

    :try_start_0
    new-instance v1, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;-><init>()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1, p1, p0}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    new-instance p0, Laoc/kingdoms/lukasz/jakowski/zOther/XY;

    iget p1, v1, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    mul-float/2addr p1, p2

    float-to-int p1, p1

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->height:F

    mul-float/2addr v1, p2

    float-to-int p2, v1

    invoke-direct {p0, p1, p2}, Laoc/kingdoms/lukasz/jakowski/zOther/XY;-><init>(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static final loadFont(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    const-string v0, "game/fonts/"

    if-gez p2, :cond_0

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/GameValues;->value:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue;

    iget p2, p2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue;->DEFAULT_FONT_SIZE:I

    int-to-float p2, p2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GUI_SCALE:F

    mul-float/2addr p2, v1

    float-to-int p2, p2

    :cond_0
    :try_start_0
    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;

    const-string p0, "game/fonts/Roboto-Bold.ttf"

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    :goto_0
    new-instance p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;

    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->characters:Ljava/lang/String;

    const/4 p1, 0x6

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->size:I

    sget-object p1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->color:Lcom/badlogic/gdx/graphics/Color;

    sget-object p1, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->minFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object p1, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->magFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->generateFont(Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    sput p0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMainSize:I

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->dispose()V

    return-void
.end method

.method public static final loadFontArmy_GlyphLayout(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    const-string v0, "game/fonts/"

    if-gez p2, :cond_0

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/GameValues;->value:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue;

    iget p2, p2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue;->DEFAULT_FONT_SIZE:I

    int-to-float p2, p2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GUI_SCALE:F

    mul-float/2addr p2, v1

    float-to-int p2, p2

    :cond_0
    :try_start_0
    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;

    const-string p0, "game/fonts/Roboto-Bold.ttf"

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    :goto_0
    new-instance p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;

    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->characters:Ljava/lang/String;

    const/4 p1, 0x6

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->size:I

    sget-object p1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->color:Lcom/badlogic/gdx/graphics/Color;

    sget-object p1, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->minFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object p1, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->magFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->generateFont(Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object p0

    sput-object p0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontArmy_GlyphLayout:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->dispose()V

    return-void
.end method

.method public static final loadFontBorder(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-string v0, "game/fonts/"

    :try_start_0
    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;

    const-string p0, "game/fonts/Roboto-Bold.ttf"

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    :goto_0
    new-instance p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;

    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->characters:Ljava/lang/String;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->FONT_BORDER_SIZE:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->size:I

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->civNamesFontColor_R:F

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->civNamesFontColor_G:F

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->civNamesFontColor_B:F

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->civNamesFontColor_A:F

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->color:Lcom/badlogic/gdx/graphics/Color;

    sget-object v0, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->minFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v0, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->magFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->kerning:Z

    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->civNamesFontColorBorder_R:F

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->civNamesFontColorBorder_G:F

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->civNamesFontColorBorder_B:F

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->civNamesFontColorBorder_A:F

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->borderColor:Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->FONT_BORDER_WIDTH_OF_BORDER:I

    int-to-float v2, v2

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->borderWidth:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontBorder:Ljava/util/List;

    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->generateFont(Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object p0

    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontBorder:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    sput p0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontBorderSize:I

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontBorder:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setFixedWidthGlyphs(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->dispose()V

    return-void
.end method

.method public static final loadFontBorder2(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static final declared-synchronized loadFont_UpdateTextHeight()V
    .locals 4

    const-class v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;

    monitor-enter v0

    :try_start_0
    new-instance v1, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;-><init>()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    const-string v3, "AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890"

    invoke-virtual {v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->height:F

    float-to-int v1, v1

    sput v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->updateArmyHeight()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static final declared-synchronized loadFont_UpdateTextHeightSmall()V
    .locals 4

    const-class v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;

    monitor-enter v0

    :try_start_0
    new-instance v1, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;-><init>()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    const-string v3, "AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890"

    invoke-virtual {v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->height:F

    float-to-int v1, v1

    sput v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT_SMALL:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private final loadShaders()V
    .locals 14

    const-string v0, "game/shader/default_vertex.glsl"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v2, "game/shader/default_fragment.glsl"

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefault:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    new-instance v1, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const/4 v2, 0x0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/AI/Government/nSju/IlLkpaQxs;->nFVJUuYhlg:Ljava/lang/String;

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderBlackWhite:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    new-instance v1, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v2, "game/shader/water_fragment.glsl"

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderWater:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    new-instance v1, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v2, "#ifdef GL_ES\n    precision mediump float;\n#endif\n\nvarying vec4 v_color;\nvarying vec2 v_texCoords;\nuniform sampler2D u_texture;\n\nvoid main() {\nvec4 mask = texture2D(u_texture, v_texCoords);\n    gl_FragColor = vec4(v_color.rgb, v_color.a * mask.a);\n}"

    invoke-direct {v1, v0, v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefaultProvince:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    new-instance v1, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v2, "#ifdef GL_ES\n    precision mediump float;\n#endif\n\nvarying vec4 v_color;\nvarying vec2 v_texCoords;\nuniform sampler2D u_texture;\n\nvoid main() {\n   gl_FragColor = v_color * texture2D(u_texture, v_texCoords);\n   gl_FragColor.rgb *= glFragColor.a;\n}"

    invoke-direct {v1, v0, v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefault_FBO:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    new-instance v1, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v2, "attribute vec4 a_position;\nattribute vec4 a_color;\nattribute vec2 a_texCoord0;\nuniform mat4 u_projTrans;\nvarying vec4 v_color;\nvarying vec2 v_texCoords;\n\nvoid main()\n{\n   v_color = a_color;\n   v_color.a = v_color.a * (255.0/254.0);\n   v_texCoords = a_texCoord0;\n   gl_Position =  u_projTrans * a_position;\n}\n"

    const/4 v3, 0x0

    sget-object v3, Laoc/kingdoms/lukasz/map/technology/Bhs/fiRhHJntP;->myf:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const/4 v1, 0x0

    sput-boolean v1, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->pedantic:Z

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->bind()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v4, "u_texture"

    invoke-virtual {v3, v4, v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformi(Ljava/lang/String;I)V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v5, "u_texture2"

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformi(Ljava/lang/String;I)V

    new-instance v3, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v7, "game/shader/alpha_shader.glsl"

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v7

    invoke-virtual {v7}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v2, v7}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha2:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    sput-boolean v1, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->pedantic:Z

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha2:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->bind()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha2:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v3, v4, v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformi(Ljava/lang/String;I)V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha2:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v3, v5, v6}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformi(Ljava/lang/String;I)V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha2:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v7, "u_useMask"

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v3, v7, v8}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha2:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v9, "u_maskScale"

    const/high16 v10, 0x41a00000    # 20.0f

    invoke-virtual {v3, v9, v10}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha2:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v11, "u_maskOffset"

    const/4 v12, 0x0

    invoke-virtual {v3, v11, v12, v12}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;FF)V

    new-instance v3, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v13, "game/shader/alpha_shader_pattern.glsl"

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v13

    invoke-virtual {v13}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v3, v2, v13}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha_Pattern:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    sput-boolean v1, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->pedantic:Z

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha_Pattern:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->bind()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha_Pattern:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v3, v4, v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformi(Ljava/lang/String;I)V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha_Pattern:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v3, v5, v6}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformi(Ljava/lang/String;I)V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha_Pattern:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v3, v7, v8}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha_Pattern:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v3, v9, v10}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha_Pattern:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v3, v11, v12, v12}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;FF)V

    new-instance v3, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v13, "game/shader/map_overlay_fragment.glsl"

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v13

    invoke-virtual {v13}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v3, v2, v13}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha_Map:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    sput-boolean v1, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->pedantic:Z

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha_Map:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->bind()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha_Map:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v3, v4, v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformi(Ljava/lang/String;I)V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha_Map:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v3, v5, v6}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformi(Ljava/lang/String;I)V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha_Map:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v3, v7, v8}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha_Map:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v3, v9, v10}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha_Map:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v3, v11, v12, v12}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;FF)V

    new-instance v3, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v13, "game/shader/map_overlay_sea_fragment.glsl"

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v13

    invoke-virtual {v13}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v3, v2, v13}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha_MapSea:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    sput-boolean v1, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->pedantic:Z

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha_MapSea:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->bind()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha_MapSea:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v2, v4, v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformi(Ljava/lang/String;I)V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha_MapSea:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v2, v5, v6}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformi(Ljava/lang/String;I)V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha_MapSea:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v2, v7, v8}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha_MapSea:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v2, v9, v10}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha_MapSea:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v2, v11, v12, v12}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;FF)V

    new-instance v2, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v3, "#ifdef GL_ES\n#define LOWP lowp\nprecision mediump float;\n#else\n#define LOWP\n#endif\n\nvarying LOWP vec4 v_color;\nvarying vec2 v_texCoords;\n\n\nuniform sampler2D u_texture;\nuniform float time;\nuniform vec2 resolution;\n\n\nconst float PI = 3.1415;\n// \u901f\u5ea6\nconst float speed = 0.025;\nconst float speed_x = 0.05;\nconst float speed_y = 0.05;\n\n// \u6298\u5c04\u89d2\nconst float emboss = 0.3; \t\t// \u51f9\u51f8\u5f3a\u5ea6\nconst float intensity = 2.4;\t// \u5f3a\u5ea6\nconst int steps = 8;  \t\t\t// \u6ce2\u7eb9\u5bc6\u5ea6\nconst float frequency = 4.0;  \t// \u9891\u7387\nconst float angle = 7.0;\n\nconst float delta = 50.0;  \t\t// \u589e\u5e45\uff08\u8d8a\u5c0f\u8d8a\u6fc0\u70c8\uff09\nconst float intence = 200.0;   \t// \u660e\u6697\u5f3a\u5ea6\n\n// \u9ad8\u5149\nconst float reflectionCutOff = 0.012;\nconst float reflectionIntence = 80000.0;\n\nfloat col(vec2 coord)\n{\n    float delta_theta = 2.0 * PI / angle;\n    float col = 0.0;\n    float theta = 0.0;\n    for (int i = 0; i < steps; i++)\n    {\n        vec2 adjc = coord;\n        theta = delta_theta * float(i);\n        adjc.x += cos(theta)*time*speed + time * speed_x;\n        adjc.y -= sin(theta)*time*speed - time * speed_y;\n        col = col + cos((adjc.x * cos(theta) -\n            adjc.y * sin(theta)) * frequency) * intensity;\n    }\n    return cos(col);\n}\n\n\nvoid main()\n{\n    vec2 p = v_texCoords, c1 = p, c2 = p;\n    float cc1 = col(c1);\n\n    c2.x += resolution.x/delta;\n    float dx = emboss*(cc1-col(c2))/delta;\n\n    c2.x = p.x;\n    c2.y += resolution.y/delta;\n    float dy = emboss*(cc1-col(c2))/delta;\n    c1.x = c1.x +dx;\n    c1.y =  c1.y+dy;\n\n    float alpha = 1.0+dot(dx,dy)*intence;\n\n\n    vec4 col = texture2D(u_texture,c1);\n    col *= alpha;\n    gl_FragColor =  col;\n}"

    invoke-direct {v2, v0, v3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderWater2:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    new-instance v2, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v3, "#ifdef GL_ES\n#define LOWP lowp\nprecision mediump float;\n#else\n#define LOWP\n#endif\n\nvarying LOWP vec4 v_color;\nvarying vec2 v_texCoords;\n\n\nuniform sampler2D u_texture;\nuniform sampler2D u_texture2;\nuniform float time;\nuniform vec2 resolution;\nuniform float u_maskScale;\nuniform float u_maskScaleY;\nuniform float u_useMask;\nuniform vec2 u_maskOffset;\n\n\nconst float PI = 3.1415;\n// \u901f\u5ea6\nconst float speed = 0.03;\nconst float speed_x = 0.06;\nconst float speed_y = 0.06;\n\n// \u6298\u5c04\u89d2\nconst float emboss = 0.3; \t\t// \u51f9\u51f8\u5f3a\u5ea6\nconst float intensity = 2.4;\t// \u5f3a\u5ea6\nconst int steps = 8;  \t\t\t// \u6ce2\u7eb9\u5bc6\u5ea6\nconst float frequency = 4.0;  \t// \u9891\u7387\nconst float angle = 7.0;\n\nconst float delta = 50.0;  \t\t// \u589e\u5e45\uff08\u8d8a\u5c0f\u8d8a\u6fc0\u70c8\uff09\nconst float intence = 200.0;   \t// \u660e\u6697\u5f3a\u5ea6\n\n// \u9ad8\u5149\nconst float reflectionCutOff = 0.012;\nconst float reflectionIntence = 80000.0;\n\nfloat col(vec2 coord)\n{\n    float delta_theta = 2.0 * PI / angle;\n    float col = 0.0;\n    float theta = 0.0;\n    for (int i = 0; i < steps; i++)\n    {\n        vec2 adjc = coord;\n        theta = delta_theta * float(i);\n        adjc.x += cos(theta)*time*speed + time * speed_x;\n        adjc.y -= sin(theta)*time*speed - time * speed_y;\n        col = col + cos((adjc.x * cos(theta) -\n            adjc.y * sin(theta)) * frequency) * intensity;\n    }\n    return cos(col);\n}\n\n\nvoid main()\n{\n    vec2 p = v_texCoords, c1 = p, c2 = p;\n    float cc1 = col(c1);\n\n    c2.x += resolution.x/delta;\n    float dx = emboss*(cc1-col(c2))/delta;\n\n    c2.x = p.x;\n    c2.y += resolution.y/delta;\n    float dy = emboss*(cc1-col(c2))/delta;\n    c1.x = c1.x +dx;\n    c1.y =  c1.y+dy;\n\n    float alpha = 1.0+dot(dx,dy)*intence;\n\n\n    vec4 col = texture2D(u_texture,c1);\n vec2 newCoords = vec2(v_texCoords.x * u_maskScale, v_texCoords.y * u_maskScaleY);\n vec4 mask = vec4(1.0, 1.0, 1.0, 1.0); \n\tmask = texture2D(u_texture2, v_texCoords);\n  gl_FragColor = vec4(col.rgb, mask.a * col.a);\n}"

    invoke-direct {v2, v0, v3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderWater3:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->bind()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderWater3:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v2, v4, v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformi(Ljava/lang/String;I)V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderWater3:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v1, v5, v6}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformi(Ljava/lang/String;I)V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderWater3:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v1, v7, v8}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderWater3:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v1, v9, v10}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderWater3:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v1, v11, v12, v12}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;FF)V

    new-instance v1, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v2, "#ifdef GL_ES\nprecision mediump float;\n#endif\n\nvarying vec4 v_color;\nvarying vec2 v_texCoords;\n\nuniform sampler2D u_texture;\nuniform float outlineSize;\nuniform vec3 outlineColor;\nuniform vec2 textureSize;\n\nconst float PI = 0.01745329252;\n\n\nint getIsStrokeWithAngel(float angel)\n{\n    int stroke = 0;\n    float rad = angel * PI;\n    vec2 unit = 1.0 / textureSize.xy;\n    vec2 offset = vec2(outlineSize * cos(rad) * unit.x, outlineSize * sin(rad) * unit.y);\n    float a = texture2D(u_texture, v_texCoords + offset).a;\n    if (a >= 0.5)\n    {\n        stroke = 1;\n    }\n    return stroke;\n}\n\nvoid main()\n{\n    vec4 myC = texture2D(u_texture, v_texCoords);\n    if (myC.a >= 0.5)\n    {\n        gl_FragColor = v_color * myC;\n        return;\n    }\n\n    int strokeCount = 0;\n    strokeCount += getIsStrokeWithAngel(0.0);\n    strokeCount += getIsStrokeWithAngel(30.0);\n    strokeCount += getIsStrokeWithAngel(60.0);\n    strokeCount += getIsStrokeWithAngel(90.0);\n    strokeCount += getIsStrokeWithAngel(120.0);\n    strokeCount += getIsStrokeWithAngel(150.0);\n    strokeCount += getIsStrokeWithAngel(180.0);\n    strokeCount += getIsStrokeWithAngel(210.0);\n    strokeCount += getIsStrokeWithAngel(240.0);\n    strokeCount += getIsStrokeWithAngel(270.0);\n    strokeCount += getIsStrokeWithAngel(300.0);\n    strokeCount += getIsStrokeWithAngel(330.0);\n\n    if (strokeCount > 0)\n    {\n        myC.rgb = outlineColor;\n        myC.a = 1.0;\n    }\n\n    gl_FragColor = v_color * myC;\n}"

    invoke-direct {v1, v0, v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderOutline:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    new-instance v1, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v2, "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 v_texCoords;\nvarying vec4 v_color;\nuniform float widthStep;\nuniform float heightStep;\nuniform float strength;\nuniform sampler2D u_texture;\nconst float blurRadius = 5.0;\nconst float blurPixels = (blurRadius * 2.0 + 1.0) * (blurRadius * 2.0 + 1.0);\n\nvoid main()\n{\n    vec4 v = texture2D(u_texture, v_texCoords);\n    vec3 sumColor = vec3(0.0, 0.0, 0.0);\n    for(float fy = -blurRadius; fy <= blurRadius; ++fy)\n    {\n        for(float fx = -blurRadius; fx <= blurRadius; ++fx)\n        {\n            vec2 coord = vec2(fx * widthStep, fy * heightStep);\n            sumColor += texture2D(u_texture, v_texCoords + coord).rgb;\n        }\n    }\n    gl_FragColor = vec4(mix(v.rgb, sumColor / blurPixels, strength), v.a*v_color.a);\n}"

    invoke-direct {v1, v0, v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderBlur:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    return-void
.end method

.method private final renderUI()V
    .locals 2

    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->oSB:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_0
    sget v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->numOfScissors:I

    if-lez v0, :cond_0

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->oSB:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->clipView_End(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->oSB:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawKeyboardText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->uFPS:Laoc/kingdoms/lukasz/utilities/FPS;

    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->oSB:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/utilities/FPS;->drawFPS(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    return-void
.end method

.method private final renderer_SetToCurrentScale()V
    .locals 4

    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v1, v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    div-float/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    neg-int v2, v2

    int-to-float v2, v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    div-float/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lcom/badlogic/gdx/graphics/OrthographicCamera;->setToOrtho(ZFF)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v1, v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    div-float/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v2, v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/viewport/Viewport;->setWorldSize(FF)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/viewport/Viewport;->apply()V

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->oSB:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/OrthographicCamera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->oSBBorder:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/OrthographicCamera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->oSB:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private final renderer_SetToCurrentScale2()V
    .locals 4

    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v1, v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    div-float/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    neg-int v2, v2

    int-to-float v2, v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    div-float/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lcom/badlogic/gdx/graphics/OrthographicCamera;->setToOrtho(ZFF)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v1, v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    div-float/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v2, v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/viewport/Viewport;->setWorldSize(FF)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/viewport/Viewport;->apply()V

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->oSB:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/OrthographicCamera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->oSBBorder:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/OrthographicCamera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private final renderer_resetScale()V
    .locals 4

    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v1, v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    neg-int v2, v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lcom/badlogic/gdx/graphics/OrthographicCamera;->setToOrtho(ZFF)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v1, v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/viewport/Viewport;->setWorldSize(FF)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/viewport/Viewport;->apply()V

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->oSB:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/OrthographicCamera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->oSBBorder:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/OrthographicCamera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->oSB:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->oSBBorder:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private final renderer_resetScale2()V
    .locals 4

    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v1, v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    neg-int v2, v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lcom/badlogic/gdx/graphics/OrthographicCamera;->setToOrtho(ZFF)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v1, v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/viewport/Viewport;->setWorldSize(FF)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/viewport/Viewport;->apply()V

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->oSB:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/OrthographicCamera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->oSBBorder:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/OrthographicCamera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static final resetFontScale()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    sget v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMainSize:I

    if-ge v0, v1, :cond_0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final setBlackWhite(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderBlackWhite:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    return-void
.end method

.method public static final setFontScale(F)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMainSize:I

    if-ge v0, v1, :cond_0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final setShaderBlur(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderBlur:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderBlur:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v0, "widthStep"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderBlur:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v0, "heightStep"

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderBlur:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v0, "strength"

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    return-void
.end method

.method public static final setShaderDefault(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefault:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    return-void
.end method

.method public static final setShaderOutline(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 5

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInNewGame()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderOutline:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderOutline:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v1, "outlineColor"

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2, v3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;FFF)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderOutline:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v1, "outlineSize"

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderOutline:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const/4 v1, 0x0

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBG()Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBG()Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const-string v4, "textureSize"

    invoke-virtual {v0, v4, v2, v3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;FF)V

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBG()Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    const/16 v1, 0x96

    invoke-virtual {v0, p0, v1, v1}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefault:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    :cond_0
    return-void
.end method

.method public static final setShaderWater(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 2

    sget v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderTime:F

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getDeltaTime()F

    move-result v1

    add-float/2addr v0, v1

    sput v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderTime:F

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderWater:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderWater:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->bind()V

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderWater:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v0, "u_amount"

    const/high16 v1, 0x41c80000    # 25.0f

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderWater:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v0, "u_speed"

    const v1, 0x3e19999a    # 0.15f

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderWater:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v0, "u_py"

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderWater:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v0, "u_px"

    const v1, 0x3f0ccccd    # 0.55f

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderWater:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v0, "u_time"

    sget v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderTime:F

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    return-void
.end method

.method public static final setShaderWater2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 3

    sget v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderTime2:F

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getDeltaTime()F

    move-result v1

    add-float/2addr v0, v1

    sput v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderTime2:F

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderWater2:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderWater2:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const-string v0, "time"

    sget v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderTime2:F

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderWater2:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->waves:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->waves:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    const-string v1, "resolution"

    invoke-virtual {p0, v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;Lcom/badlogic/gdx/math/Vector2;)V

    return-void
.end method

.method public static final setShaderWater3(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 3

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderWater3:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderWater3:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    const/4 v0, 0x0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/FBO/idYW/HjHDSSkYG;->emncIF:Ljava/lang/String;

    sget v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderTime2:F

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderWater3:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->flagBG:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->flagBG:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    const-string v1, "resolution"

    invoke-virtual {p0, v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;Lcom/badlogic/gdx/math/Vector2;)V

    return-void
.end method

.method private final updateBackgroundColor()V
    .locals 10

    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->updateBackgroundColor:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    sput-boolean v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->updateBackgroundColor:Z

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-nez v1, :cond_0

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/map/Map;->lMaps:Ljava/util/List;

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/map/Map;->getActiveMapID()I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/map/Map_Data;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->BackgroundColor:[F

    aget v0, v5, v0

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/map/Map;->lMaps:Ljava/util/List;

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/map/Map;->getActiveMapID()I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/map/Map_Data;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->BackgroundColor:[F

    aget v4, v5, v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/map/Map;->lMaps:Ljava/util/List;

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/map/Map;->getActiveMapID()I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/map/Map_Data;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->BackgroundColor:[F

    aget v3, v5, v3

    invoke-direct {v1, v0, v4, v3, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->BACKGROUND_COLOR:Lcom/badlogic/gdx/graphics/Color;

    goto/16 :goto_0

    :cond_0
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    sget-object v1, Laoc/kingdoms/lukasz/map/map/MapScale;->defScales:Laoc/kingdoms/lukasz/map/map/MapScale$DefinedScales;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/MapScale$DefinedScales;->definedScales:[F

    aget v1, v1, v4

    sub-float/2addr v1, v2

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v5

    sub-float/2addr v5, v2

    new-instance v6, Lcom/badlogic/gdx/graphics/Color;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/map/Map;->lMaps:Ljava/util/List;

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/map/Map;->getActiveMapID()I

    move-result v8

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/map/Map_Data;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->BackgroundColor:[F

    aget v7, v7, v0

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/map/Map;->lMaps:Ljava/util/List;

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/map/Map;->getActiveMapID()I

    move-result v9

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/map/Map_Data;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->BackgroundColor_ZoomIn:[F

    aget v0, v8, v0

    invoke-static {v7, v0, v5, v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->getColorStep(FFFF)F

    move-result v0

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/map/Map;->lMaps:Ljava/util/List;

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/map/Map;->getActiveMapID()I

    move-result v8

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/map/Map_Data;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->BackgroundColor:[F

    aget v7, v7, v4

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/map/Map;->lMaps:Ljava/util/List;

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/map/Map;->getActiveMapID()I

    move-result v9

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/map/Map_Data;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->BackgroundColor_ZoomIn:[F

    aget v4, v8, v4

    invoke-static {v7, v4, v5, v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->getColorStep(FFFF)F

    move-result v4

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/map/Map;->lMaps:Ljava/util/List;

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/map/Map;->getActiveMapID()I

    move-result v8

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/map/Map_Data;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->BackgroundColor:[F

    aget v7, v7, v3

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/map/Map;->lMaps:Ljava/util/List;

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/map/Map;->getActiveMapID()I

    move-result v9

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/map/Map_Data;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->BackgroundColor_ZoomIn:[F

    aget v3, v8, v3

    invoke-static {v7, v3, v5, v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->getColorStep(FFFF)F

    move-result v1

    invoke-direct {v6, v0, v4, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v6, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->BACKGROUND_COLOR:Lcom/badlogic/gdx/graphics/Color;

    goto/16 :goto_0

    :cond_1
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    sget-object v1, Laoc/kingdoms/lukasz/map/map/MapScale;->defScales:Laoc/kingdoms/lukasz/map/map/MapScale$DefinedScales;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/MapScale$DefinedScales;->definedScales:[F

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapScale;->definedScalesLength:I

    sub-int/2addr v5, v4

    aget v1, v1, v5

    sub-float v1, v2, v1

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v5

    sub-float v5, v2, v5

    new-instance v6, Lcom/badlogic/gdx/graphics/Color;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/map/Map;->lMaps:Ljava/util/List;

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/map/Map;->getActiveMapID()I

    move-result v8

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/map/Map_Data;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->BackgroundColor:[F

    aget v7, v7, v0

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/map/Map;->lMaps:Ljava/util/List;

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/map/Map;->getActiveMapID()I

    move-result v9

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/map/Map_Data;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->BackgroundColor_ZoomOut:[F

    aget v0, v8, v0

    invoke-static {v7, v0, v5, v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->getColorStep(FFFF)F

    move-result v0

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/map/Map;->lMaps:Ljava/util/List;

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/map/Map;->getActiveMapID()I

    move-result v8

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/map/Map_Data;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->BackgroundColor:[F

    aget v7, v7, v4

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/map/Map;->lMaps:Ljava/util/List;

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/map/Map;->getActiveMapID()I

    move-result v9

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/map/Map_Data;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->BackgroundColor_ZoomOut:[F

    aget v4, v8, v4

    invoke-static {v7, v4, v5, v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->getColorStep(FFFF)F

    move-result v4

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/map/Map;->lMaps:Ljava/util/List;

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/map/Map;->getActiveMapID()I

    move-result v8

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/map/Map_Data;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->BackgroundColor:[F

    aget v7, v7, v3

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/map/Map;->lMaps:Ljava/util/List;

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/map/Map;->getActiveMapID()I

    move-result v9

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/map/Map_Data;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->BackgroundColor_ZoomOut:[F

    aget v3, v8, v3

    invoke-static {v7, v3, v5, v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->getColorStep(FFFF)F

    move-result v1

    invoke-direct {v6, v0, v4, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v6, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->BACKGROUND_COLOR:Lcom/badlogic/gdx/graphics/Color;

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method protected final clearScreen()V
    .locals 5

    invoke-direct {p0}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->updateBackgroundColor()V

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->BACKGROUND_COLOR:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->BACKGROUND_COLOR:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->BACKGROUND_COLOR:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->BACKGROUND_COLOR:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/GL20;->glClearColor(FFFF)V

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v1, 0x4100

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glClear(I)V

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->oSB:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public dispose()V
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->oSB:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->dispose()V

    return-void
.end method

.method public final drawKeyboardText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 9

    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardMode:Z

    if-eqz v0, :cond_1

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->info:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Info;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Info;->DESKTOP_KEYBOARD_DRAW_EXTRA_TEXT:Z

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardMessage:Ljava/lang/String;

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->getTextWidth(Ljava/lang/String;I)I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v4, v1, v2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v5, v1, v2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x4

    add-int v6, v0, v1

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x4

    add-int v7, v0, v1

    const/high16 v8, 0x3f800000    # 1.0f

    move-object v3, p1

    invoke-static/range {v3 .. v8}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIF)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardMessage:Ljava/lang/String;

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    :cond_1
    return-void
.end method

.method public final drawLine(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIF)V
    .locals 7

    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v5

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIF)V

    return-void
.end method

.method public final drawLine(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V
    .locals 8

    sub-int v0, p4, p2

    mul-int/2addr v0, v0

    sub-int p5, p3, p5

    mul-int v1, p5, p5

    add-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v6, v0

    int-to-double v0, p5

    neg-int p5, p2

    add-int/2addr p5, p4

    int-to-double p4, p5

    invoke-static {v0, v1, p4, p5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p4

    const-wide v0, 0x4066800000000000L    # 180.0

    mul-double/2addr p4, v0

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    div-double/2addr p4, v0

    double-to-float v7, p4

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawLine(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIF)V

    return-void
.end method

.method public render()V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->update()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->clearScreen()V

    invoke-direct {p0}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->renderer_SetToCurrentScale()V

    :try_start_1
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->oSB:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->oSB:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/Map;->drawMap(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_1
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame;->rendererGame:Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame$RendererGameINT;

    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->oSB:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-interface {v0, v1}, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame$RendererGameINT;->drawCurrentScale_Provinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    invoke-direct {p0}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->renderer_resetScale2()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame;->rendererGame:Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame$RendererGameINT;

    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->oSB:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-interface {v0, v1}, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame$RendererGameINT;->drawWithoutScale_Provinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    invoke-direct {p0}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->renderer_SetToCurrentScale2()V

    :try_start_2
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame;->rendererGame:Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame$RendererGameINT;

    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->oSB:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-interface {v0, v1}, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame$RendererGameINT;->drawCurrentScale(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_2
    :try_start_3
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->oSB:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_3
    invoke-direct {p0}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->renderer_resetScale()V

    :try_start_4
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame;->rendererGame:Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame$RendererGameINT;

    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->oSB:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-interface {v0, v1}, Laoc/kingdoms/lukasz/jakowski/Renderer/RendererGame$RendererGameINT;->drawWithoutScale(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_4
    :try_start_5
    invoke-direct {p0}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->renderUI()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_5
    :try_start_6
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->oSB:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    :catch_6
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_6
    :try_start_7
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->oSBBorder:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_7

    :catch_7
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_7
    return-void
.end method

.method public final resetFontMainScale()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->setFontMainScale(F)V

    return-void
.end method

.method public resize(II)V
    .locals 2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/badlogic/gdx/utils/viewport/Viewport;->update(IIZ)V

    return-void
.end method

.method public final setFontMainScale(F)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->setFontMainScale(FI)V

    return-void
.end method

.method public final setFontMainScale(FI)V
    .locals 1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    return-void
.end method

.method public update()V
    .locals 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->updateSimpleTask()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/Map;->update()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->update()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->uFPS:Laoc/kingdoms/lukasz/utilities/FPS;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/utilities/FPS;->countFPS()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->ambienceManager:Laoc/kingdoms/lukasz/jakowski/AmbienceManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;->update()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->animationManager:Laoc/kingdoms/lukasz/jakowski/AnimationManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/AnimationManager;->update()V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Keyboard;->updateKeyboardVerticalLine()V

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->simpleTasksCivNames:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_0
    if-ltz v1, :cond_0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->simpleTasksCivNames:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;->update()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->simpleTasksCivNames:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    :try_start_1
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->simpleTasks_ArmyWidth:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v0

    const/16 v0, 0x32

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_1
    if-ltz v0, :cond_1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->simpleTasks_ArmyWidth:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer$SimpleTaskArmyText;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer$SimpleTaskArmyText;->update()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->simpleTasks_ArmyWidth:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_1
    :try_start_2
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->updateSteam_runCallbacks()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method
