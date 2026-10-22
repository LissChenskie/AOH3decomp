.class Laoc/kingdoms/lukasz/map/province/ProvinceBorder$27;
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
    .locals 7
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

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    invoke-virtual {p1, p4}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->setColor(Lcom/badlogic/gdx/graphics/Color;)F

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    sget v2, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->pathProvinceBorderExtraWidth2:F

    const/4 v4, 0x1

    move-object v1, p6

    move-object v3, p2

    move v5, p7

    move v6, p8

    invoke-virtual/range {v0 .. v6}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->path2(Ljava/lang/Iterable;FLspace/earlygrey/shapedrawer/JoinType;ZFF)V

    return-void
.end method
