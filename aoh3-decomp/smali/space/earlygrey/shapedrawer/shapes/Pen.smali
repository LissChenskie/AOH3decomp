.class public Lspace/earlygrey/shapedrawer/shapes/Pen;
.super Lspace/earlygrey/shapedrawer/shapes/Utensil;
.source "Pen.java"


# instance fields
.field final LINE:Lspace/earlygrey/shapedrawer/shapes/BasicLine;


# direct methods
.method public constructor <init>(Lspace/earlygrey/shapedrawer/ShapeDrawer;)V
    .locals 1

    invoke-direct {p0, p1}, Lspace/earlygrey/shapedrawer/shapes/Utensil;-><init>(Lspace/earlygrey/shapedrawer/ShapeDrawer;)V

    new-instance v0, Lspace/earlygrey/shapedrawer/shapes/BasicLine;

    invoke-direct {v0, p1}, Lspace/earlygrey/shapedrawer/shapes/BasicLine;-><init>(Lspace/earlygrey/shapedrawer/ShapeDrawer;)V

    iput-object v0, p0, Lspace/earlygrey/shapedrawer/shapes/Pen;->LINE:Lspace/earlygrey/shapedrawer/shapes/BasicLine;

    return-void
.end method


# virtual methods
.method public arc()Lspace/earlygrey/shapedrawer/shapes/Shape$Arc;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lspace/earlygrey/shapedrawer/shapes/Shape$Arc<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/shapes/Pen;->ARC:Lspace/earlygrey/shapedrawer/shapes/BasicArc;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lspace/earlygrey/shapedrawer/shapes/BasicArc;->reset(Z)V

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/shapes/Pen;->ARC:Lspace/earlygrey/shapedrawer/shapes/BasicArc;

    return-object v0
.end method

.method public bridge synthetic circle()Lspace/earlygrey/shapedrawer/shapes/Shape$FilledCircle;
    .locals 1

    invoke-virtual {p0}, Lspace/earlygrey/shapedrawer/shapes/Pen;->circle()Lspace/earlygrey/shapedrawer/shapes/Shape$OutlinedCircle;

    move-result-object v0

    return-object v0
.end method

.method public circle()Lspace/earlygrey/shapedrawer/shapes/Shape$OutlinedCircle;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lspace/earlygrey/shapedrawer/shapes/Shape$OutlinedCircle<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/shapes/Pen;->CIRCLE:Lspace/earlygrey/shapedrawer/shapes/BasicCircle;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lspace/earlygrey/shapedrawer/shapes/BasicCircle;->reset(Z)V

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/shapes/Pen;->CIRCLE:Lspace/earlygrey/shapedrawer/shapes/BasicCircle;

    return-object v0
.end method

.method public bridge synthetic ellipse()Lspace/earlygrey/shapedrawer/shapes/Shape$FilledEllipse;
    .locals 1

    invoke-virtual {p0}, Lspace/earlygrey/shapedrawer/shapes/Pen;->ellipse()Lspace/earlygrey/shapedrawer/shapes/Shape$OutlinedEllipse;

    move-result-object v0

    return-object v0
.end method

.method public ellipse()Lspace/earlygrey/shapedrawer/shapes/Shape$OutlinedEllipse;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lspace/earlygrey/shapedrawer/shapes/Shape$OutlinedEllipse<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/shapes/Pen;->ELLIPSE:Lspace/earlygrey/shapedrawer/shapes/BasicEllipse;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lspace/earlygrey/shapedrawer/shapes/BasicEllipse;->reset(Z)V

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/shapes/Pen;->ELLIPSE:Lspace/earlygrey/shapedrawer/shapes/BasicEllipse;

    return-object v0
.end method

.method filled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public line()Lspace/earlygrey/shapedrawer/shapes/Shape$Line;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lspace/earlygrey/shapedrawer/shapes/Shape$Line<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/shapes/Pen;->LINE:Lspace/earlygrey/shapedrawer/shapes/BasicLine;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lspace/earlygrey/shapedrawer/shapes/BasicLine;->reset(Z)V

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/shapes/Pen;->LINE:Lspace/earlygrey/shapedrawer/shapes/BasicLine;

    return-object v0
.end method

.method public polyLine()Lspace/earlygrey/shapedrawer/shapes/Shape$PolyLine;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lspace/earlygrey/shapedrawer/shapes/Shape$PolyLine<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/shapes/Pen;->POLYLINE:Lspace/earlygrey/shapedrawer/shapes/BasicPolyline;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lspace/earlygrey/shapedrawer/shapes/BasicPolyline;->reset(Z)V

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/shapes/Pen;->POLYLINE:Lspace/earlygrey/shapedrawer/shapes/BasicPolyline;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lspace/earlygrey/shapedrawer/shapes/BasicPolyline;->setOpen(Z)Lspace/earlygrey/shapedrawer/shapes/BasicPolyline;

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/shapes/Pen;->POLYLINE:Lspace/earlygrey/shapedrawer/shapes/BasicPolyline;

    return-object v0
.end method

.method public bridge synthetic polygon()Lspace/earlygrey/shapedrawer/shapes/Shape$FilledPolygon;
    .locals 1

    invoke-virtual {p0}, Lspace/earlygrey/shapedrawer/shapes/Pen;->polygon()Lspace/earlygrey/shapedrawer/shapes/Shape$OutlinedPolygon;

    move-result-object v0

    return-object v0
.end method

.method public polygon()Lspace/earlygrey/shapedrawer/shapes/Shape$OutlinedPolygon;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lspace/earlygrey/shapedrawer/shapes/Shape$OutlinedPolygon<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/shapes/Pen;->POLYLINE:Lspace/earlygrey/shapedrawer/shapes/BasicPolyline;

    invoke-virtual {p0}, Lspace/earlygrey/shapedrawer/shapes/Pen;->filled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lspace/earlygrey/shapedrawer/shapes/BasicPolyline;->reset(Z)V

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/shapes/Pen;->POLYLINE:Lspace/earlygrey/shapedrawer/shapes/BasicPolyline;

    return-object v0
.end method

.method public bridge synthetic rectangle()Lspace/earlygrey/shapedrawer/shapes/Shape$FilledRectangle;
    .locals 1

    invoke-virtual {p0}, Lspace/earlygrey/shapedrawer/shapes/Pen;->rectangle()Lspace/earlygrey/shapedrawer/shapes/Shape$OutlinedRectangle;

    move-result-object v0

    return-object v0
.end method

.method public rectangle()Lspace/earlygrey/shapedrawer/shapes/Shape$OutlinedRectangle;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lspace/earlygrey/shapedrawer/shapes/Shape$OutlinedRectangle<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/shapes/Pen;->RECTANGLE:Lspace/earlygrey/shapedrawer/shapes/BasicRectangle;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lspace/earlygrey/shapedrawer/shapes/BasicRectangle;->reset(Z)V

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/shapes/Pen;->RECTANGLE:Lspace/earlygrey/shapedrawer/shapes/BasicRectangle;

    return-object v0
.end method

.method public bridge synthetic regularPolygon()Lspace/earlygrey/shapedrawer/shapes/Shape$FilledRegularPolygon;
    .locals 1

    invoke-virtual {p0}, Lspace/earlygrey/shapedrawer/shapes/Pen;->regularPolygon()Lspace/earlygrey/shapedrawer/shapes/Shape$OutlinedRegularPolygon;

    move-result-object v0

    return-object v0
.end method

.method public regularPolygon()Lspace/earlygrey/shapedrawer/shapes/Shape$OutlinedRegularPolygon;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lspace/earlygrey/shapedrawer/shapes/Shape$OutlinedRegularPolygon<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/shapes/Pen;->REGULAR_POLYGON:Lspace/earlygrey/shapedrawer/shapes/BasicRegularPolygon;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lspace/earlygrey/shapedrawer/shapes/BasicRegularPolygon;->reset(Z)V

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/shapes/Pen;->REGULAR_POLYGON:Lspace/earlygrey/shapedrawer/shapes/BasicRegularPolygon;

    return-object v0
.end method

.method public bridge synthetic triangle()Lspace/earlygrey/shapedrawer/shapes/Shape$FilledTriangle;
    .locals 1

    invoke-virtual {p0}, Lspace/earlygrey/shapedrawer/shapes/Pen;->triangle()Lspace/earlygrey/shapedrawer/shapes/Shape$OutlinedTriangle;

    move-result-object v0

    return-object v0
.end method

.method public triangle()Lspace/earlygrey/shapedrawer/shapes/Shape$OutlinedTriangle;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lspace/earlygrey/shapedrawer/shapes/Shape$OutlinedTriangle<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/shapes/Pen;->TRIANGLE:Lspace/earlygrey/shapedrawer/shapes/BasicTriangle;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lspace/earlygrey/shapedrawer/shapes/BasicTriangle;->reset(Z)V

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/shapes/Pen;->TRIANGLE:Lspace/earlygrey/shapedrawer/shapes/BasicTriangle;

    return-object v0
.end method
