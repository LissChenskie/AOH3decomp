.class Lspace/earlygrey/shapedrawer/Joiner;
.super Ljava/lang/Object;
.source "Joiner.java"


# static fields
.field static final AB:Lcom/badlogic/gdx/math/Vector2;

.field static final BC:Lcom/badlogic/gdx/math/Vector2;

.field static final v:Lcom/badlogic/gdx/math/Vector2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lspace/earlygrey/shapedrawer/Joiner;->AB:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lspace/earlygrey/shapedrawer/Joiner;->BC:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lspace/earlygrey/shapedrawer/Joiner;->v:Lcom/badlogic/gdx/math/Vector2;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static prepareFlatEndpoint(FFFFLcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;F)V
    .locals 2

    sget-object v0, Lspace/earlygrey/shapedrawer/Joiner;->v:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, p2, p3}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcom/badlogic/gdx/math/Vector2;->sub(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p0

    invoke-virtual {p0, p6}, Lcom/badlogic/gdx/math/Vector2;->setLength(F)Lcom/badlogic/gdx/math/Vector2;

    iget p0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget p1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    neg-float p1, p1

    invoke-virtual {p4, p0, p1}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Lcom/badlogic/gdx/math/Vector2;->add(FF)Lcom/badlogic/gdx/math/Vector2;

    iget p0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    neg-float p0, p0

    iget p1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {p5, p0, p1}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Lcom/badlogic/gdx/math/Vector2;->add(FF)Lcom/badlogic/gdx/math/Vector2;

    return-void
.end method

.method static prepareFlatEndpoint(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;F)V
    .locals 7

    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lspace/earlygrey/shapedrawer/Joiner;->prepareFlatEndpoint(FFFFLcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;F)V

    return-void
.end method

.method static preparePointyJoin(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;F)F
    .locals 6

    sget-object v0, Lspace/earlygrey/shapedrawer/Joiner;->AB:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/math/Vector2;->sub(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    sget-object p0, Lspace/earlygrey/shapedrawer/Joiner;->BC:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/math/Vector2;->sub(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    invoke-static {v0, p0}, Lspace/earlygrey/shapedrawer/ShapeUtils;->angleRad(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)F

    move-result p2

    const/4 v1, 0x0

    invoke-static {p2, v1}, Lspace/earlygrey/shapedrawer/ShapeUtils;->epsilonEquals(FF)Z

    move-result v2

    if-nez v2, :cond_4

    const v2, 0x40c90fdb

    invoke-static {p2, v2}, Lspace/earlygrey/shapedrawer/ShapeUtils;->epsilonEquals(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    :cond_0
    float-to-double v2, p5

    float-to-double v4, p2

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    div-double/2addr v2, v4

    double-to-float p5, v2

    cmpg-float v1, p2, v1

    if-gez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, p5}, Lcom/badlogic/gdx/math/Vector2;->setLength(F)Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0, p5}, Lcom/badlogic/gdx/math/Vector2;->setLength(F)Lcom/badlogic/gdx/math/Vector2;

    if-eqz v1, :cond_2

    move-object p5, p3

    goto :goto_1

    :cond_2
    move-object p5, p4

    :goto_1
    if-eqz v1, :cond_3

    move-object p3, p4

    :cond_3
    invoke-interface {p5, p1}, Lcom/badlogic/gdx/math/Vector;->set(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object p4

    invoke-interface {p4, v0}, Lcom/badlogic/gdx/math/Vector;->sub(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object p4

    invoke-interface {p4, p0}, Lcom/badlogic/gdx/math/Vector;->add(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    invoke-interface {p3, p1}, Lcom/badlogic/gdx/math/Vector;->set(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/badlogic/gdx/math/Vector;->add(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/badlogic/gdx/math/Vector;->sub(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    return p2

    :cond_4
    :goto_2
    invoke-static {p1, p3, p4, p5}, Lspace/earlygrey/shapedrawer/Joiner;->prepareStraightJoin(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;F)V

    return p2
.end method

.method static prepareRadialEndpoint(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;F)V
    .locals 2

    sget-object v0, Lspace/earlygrey/shapedrawer/Joiner;->v:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/badlogic/gdx/math/Vector2;->setLength(F)Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p1, p0}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/math/Vector2;->sub(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p2, p0}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Vector2;->add(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    return-void
.end method

.method static prepareSmoothJoin(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;FZ)Z
    .locals 8

    sget-object v0, Lspace/earlygrey/shapedrawer/Joiner;->AB:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/math/Vector2;->sub(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    sget-object p0, Lspace/earlygrey/shapedrawer/Joiner;->BC:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/math/Vector2;->sub(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    invoke-static {v0, p0}, Lspace/earlygrey/shapedrawer/ShapeUtils;->angleRad(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)F

    move-result p2

    const/4 v1, 0x0

    invoke-static {p2, v1}, Lspace/earlygrey/shapedrawer/ShapeUtils;->epsilonEquals(FF)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_6

    const v2, 0x40c90fdb

    invoke-static {p2, v2}, Lspace/earlygrey/shapedrawer/ShapeUtils;->epsilonEquals(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_3

    :cond_0
    float-to-double v4, p5

    float-to-double v6, p2

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    div-double/2addr v4, v6

    double-to-float v2, v4

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/math/Vector2;->setLength(F)Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/math/Vector2;->setLength(F)Lcom/badlogic/gdx/math/Vector2;

    cmpg-float p2, p2, v1

    if-gez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_2

    move-object p2, p3

    goto :goto_1

    :cond_2
    move-object p2, p4

    :goto_1
    if-eqz v3, :cond_3

    move-object p3, p4

    :cond_3
    invoke-interface {p2, p1}, Lcom/badlogic/gdx/math/Vector;->set(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object p2

    invoke-interface {p2, v0}, Lcom/badlogic/gdx/math/Vector;->sub(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object p2

    invoke-interface {p2, p0}, Lcom/badlogic/gdx/math/Vector;->add(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    if-eqz p6, :cond_4

    move-object v0, p0

    :cond_4
    if-eqz v3, :cond_5

    sget-object p0, Lspace/earlygrey/shapedrawer/Joiner;->v:Lcom/badlogic/gdx/math/Vector2;

    iget p2, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget p4, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    neg-float p4, p4

    invoke-virtual {p0, p2, p4}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    goto :goto_2

    :cond_5
    sget-object p0, Lspace/earlygrey/shapedrawer/Joiner;->v:Lcom/badlogic/gdx/math/Vector2;

    iget p2, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    neg-float p2, p2

    iget p4, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {p0, p2, p4}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    :goto_2
    sget-object p0, Lspace/earlygrey/shapedrawer/Joiner;->v:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0, p5}, Lcom/badlogic/gdx/math/Vector2;->setLength(F)Lcom/badlogic/gdx/math/Vector2;

    invoke-interface {p3, p1}, Lcom/badlogic/gdx/math/Vector;->set(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/badlogic/gdx/math/Vector;->add(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    return v3

    :cond_6
    :goto_3
    invoke-static {p1, p3, p4, p5}, Lspace/earlygrey/shapedrawer/Joiner;->prepareStraightJoin(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;F)V

    return v3
.end method

.method static prepareStraightJoin(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;F)V
    .locals 2

    sget-object v0, Lspace/earlygrey/shapedrawer/Joiner;->AB:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/math/Vector2;->setLength(F)Lcom/badlogic/gdx/math/Vector2;

    iget p3, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    neg-float p3, p3

    iget v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {p1, p3, v1}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/badlogic/gdx/math/Vector2;->add(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    iget p1, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget p3, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    neg-float p3, p3

    invoke-virtual {p2, p1, p3}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/badlogic/gdx/math/Vector2;->add(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    return-void
.end method
