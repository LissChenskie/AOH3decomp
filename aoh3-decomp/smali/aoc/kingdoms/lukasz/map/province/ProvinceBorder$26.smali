.class Laoc/kingdoms/lukasz/map/province/ProvinceBorder$26;
.super Ljava/lang/Object;
.source "ProvinceBorder.java"

# interfaces
.implements Laoc/kingdoms/lukasz/map/province/ProvinceBorder$DrawCivBorder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->updateDrawCivBorder()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drawCivBorder(ILspace/earlygrey/shapedrawer/JoinType;FLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/utils/Array;FF)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lspace/earlygrey/shapedrawer/JoinType;",
            "F",
            "Lcom/badlogic/gdx/graphics/Color;",
            "Lcom/badlogic/gdx/graphics/Color;",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/math/Vector2;",
            ">;FF)V"
        }
    .end annotation

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    const/4 v4, 0x1

    move v1, p1

    int-to-float v5, v1

    sget v1, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->mapCordsPosY:I

    int-to-float v6, v1

    sget-object v7, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->joinType_Shadow:Lspace/earlygrey/shapedrawer/JoinType;

    sget v8, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->pathProvinceBorderExtraWidth:F

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/CFG;->COLOR_PROVINCE_STRAIGHT_WAR_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/CFG;->COLOR_PROVINCE_STRAIGHT2_WAR:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v1, p6

    move v2, p3

    move-object v3, p2

    invoke-virtual/range {v0 .. v10}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->path2_Double(Ljava/lang/Iterable;FLspace/earlygrey/shapedrawer/JoinType;ZFFLspace/earlygrey/shapedrawer/JoinType;FLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method
