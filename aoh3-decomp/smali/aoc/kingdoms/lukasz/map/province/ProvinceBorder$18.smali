.class Laoc/kingdoms/lukasz/map/province/ProvinceBorder$18;
.super Ljava/lang/Object;
.source "ProvinceBorder.java"

# interfaces
.implements Laoc/kingdoms/lukasz/map/province/ProvinceBorder$DrawProvinceBorder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->updateDrawProvinceBorder_ActiveProvince()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/map/province/ProvinceBorder;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/map/province/ProvinceBorder;)V
    .locals 0

    iput-object p1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$18;->this$0:Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILspace/earlygrey/shapedrawer/JoinType;F)V
    .locals 4

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->DRAW_INNER_BORDERS:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$18;->this$0:Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->getIsCivilizationBorder()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$18;->this$0:Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->getIsWastelandBorder()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$18;->this$0:Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    invoke-virtual {v0, p2, p3, p4}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->drawStraightBorder_Shape(ILspace/earlygrey/shapedrawer/JoinType;F)V

    sget-object p3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->oSBBorder:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {p3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    sget-object p3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->oSBBorder:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {p3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    :cond_1
    new-instance p3, Lcom/badlogic/gdx/graphics/Color;

    sget-object p4, Laoc/kingdoms/lukasz/jakowski/CFG;->COLOR_PROVINCE_ACTIVE_PROVINCE_BORDER:Lcom/badlogic/gdx/graphics/Color;

    iget p4, p4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/CFG;->COLOR_PROVINCE_ACTIVE_PROVINCE_BORDER:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/CFG;->COLOR_PROVINCE_ACTIVE_PROVINCE_BORDER:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->b:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->activeProvince_Animation_Data:Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->getBorderAlpha()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v2, v3

    invoke-direct {p3, p4, v0, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, p3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object p3, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$18;->this$0:Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    sget p4, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->iLineOffset:I

    invoke-virtual {p3, p1, p4, p2}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->drawDashedBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$18;->this$0:Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->getIsCivilizationBorder()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$18;->this$0:Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->getIsWastelandBorder()Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_3
    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result p1

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->DRAW_INNER_BORDERS:F

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_4

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$18;->this$0:Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    invoke-virtual {p1, p2, p3, p4}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->drawStraightBorder_Shape(ILspace/earlygrey/shapedrawer/JoinType;F)V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$18;->this$0:Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    invoke-virtual {p1, p2, p3, p4}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->drawStraightBorder_Shape2(ILspace/earlygrey/shapedrawer/JoinType;F)V

    :cond_5
    :goto_0
    return-void
.end method
