.class abstract Lspace/earlygrey/shapedrawer/shapes/Utensil;
.super Ljava/lang/Object;
.source "Utensil.java"


# instance fields
.field final ARC:Lspace/earlygrey/shapedrawer/shapes/BasicArc;

.field final CIRCLE:Lspace/earlygrey/shapedrawer/shapes/BasicCircle;

.field final ELLIPSE:Lspace/earlygrey/shapedrawer/shapes/BasicEllipse;

.field final POLYLINE:Lspace/earlygrey/shapedrawer/shapes/BasicPolyline;

.field final RECTANGLE:Lspace/earlygrey/shapedrawer/shapes/BasicRectangle;

.field final REGULAR_POLYGON:Lspace/earlygrey/shapedrawer/shapes/BasicRegularPolygon;

.field final TRIANGLE:Lspace/earlygrey/shapedrawer/shapes/BasicTriangle;

.field drawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;


# direct methods
.method constructor <init>(Lspace/earlygrey/shapedrawer/ShapeDrawer;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lspace/earlygrey/shapedrawer/shapes/Utensil;->drawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    new-instance v0, Lspace/earlygrey/shapedrawer/shapes/BasicPolyline;

    invoke-direct {v0, p1}, Lspace/earlygrey/shapedrawer/shapes/BasicPolyline;-><init>(Lspace/earlygrey/shapedrawer/ShapeDrawer;)V

    iput-object v0, p0, Lspace/earlygrey/shapedrawer/shapes/Utensil;->POLYLINE:Lspace/earlygrey/shapedrawer/shapes/BasicPolyline;

    new-instance v0, Lspace/earlygrey/shapedrawer/shapes/BasicRegularPolygon;

    invoke-direct {v0, p1}, Lspace/earlygrey/shapedrawer/shapes/BasicRegularPolygon;-><init>(Lspace/earlygrey/shapedrawer/ShapeDrawer;)V

    iput-object v0, p0, Lspace/earlygrey/shapedrawer/shapes/Utensil;->REGULAR_POLYGON:Lspace/earlygrey/shapedrawer/shapes/BasicRegularPolygon;

    new-instance v0, Lspace/earlygrey/shapedrawer/shapes/BasicCircle;

    invoke-direct {v0, p1}, Lspace/earlygrey/shapedrawer/shapes/BasicCircle;-><init>(Lspace/earlygrey/shapedrawer/ShapeDrawer;)V

    iput-object v0, p0, Lspace/earlygrey/shapedrawer/shapes/Utensil;->CIRCLE:Lspace/earlygrey/shapedrawer/shapes/BasicCircle;

    new-instance v0, Lspace/earlygrey/shapedrawer/shapes/BasicEllipse;

    invoke-direct {v0, p1}, Lspace/earlygrey/shapedrawer/shapes/BasicEllipse;-><init>(Lspace/earlygrey/shapedrawer/ShapeDrawer;)V

    iput-object v0, p0, Lspace/earlygrey/shapedrawer/shapes/Utensil;->ELLIPSE:Lspace/earlygrey/shapedrawer/shapes/BasicEllipse;

    new-instance v0, Lspace/earlygrey/shapedrawer/shapes/BasicRectangle;

    invoke-direct {v0, p1}, Lspace/earlygrey/shapedrawer/shapes/BasicRectangle;-><init>(Lspace/earlygrey/shapedrawer/ShapeDrawer;)V

    iput-object v0, p0, Lspace/earlygrey/shapedrawer/shapes/Utensil;->RECTANGLE:Lspace/earlygrey/shapedrawer/shapes/BasicRectangle;

    new-instance v0, Lspace/earlygrey/shapedrawer/shapes/BasicArc;

    invoke-direct {v0, p1}, Lspace/earlygrey/shapedrawer/shapes/BasicArc;-><init>(Lspace/earlygrey/shapedrawer/ShapeDrawer;)V

    iput-object v0, p0, Lspace/earlygrey/shapedrawer/shapes/Utensil;->ARC:Lspace/earlygrey/shapedrawer/shapes/BasicArc;

    new-instance v0, Lspace/earlygrey/shapedrawer/shapes/BasicTriangle;

    invoke-direct {v0, p1}, Lspace/earlygrey/shapedrawer/shapes/BasicTriangle;-><init>(Lspace/earlygrey/shapedrawer/ShapeDrawer;)V

    iput-object v0, p0, Lspace/earlygrey/shapedrawer/shapes/Utensil;->TRIANGLE:Lspace/earlygrey/shapedrawer/shapes/BasicTriangle;

    return-void
.end method


# virtual methods
.method public circle()Lspace/earlygrey/shapedrawer/shapes/Shape$FilledCircle;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lspace/earlygrey/shapedrawer/shapes/Shape$FilledCircle<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/shapes/Utensil;->CIRCLE:Lspace/earlygrey/shapedrawer/shapes/BasicCircle;

    invoke-virtual {p0}, Lspace/earlygrey/shapedrawer/shapes/Utensil;->filled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lspace/earlygrey/shapedrawer/shapes/BasicCircle;->reset(Z)V

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/shapes/Utensil;->CIRCLE:Lspace/earlygrey/shapedrawer/shapes/BasicCircle;

    return-object v0
.end method

.method public ellipse()Lspace/earlygrey/shapedrawer/shapes/Shape$FilledEllipse;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lspace/earlygrey/shapedrawer/shapes/Shape$FilledEllipse<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/shapes/Utensil;->ELLIPSE:Lspace/earlygrey/shapedrawer/shapes/BasicEllipse;

    invoke-virtual {p0}, Lspace/earlygrey/shapedrawer/shapes/Utensil;->filled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lspace/earlygrey/shapedrawer/shapes/BasicEllipse;->reset(Z)V

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/shapes/Utensil;->ELLIPSE:Lspace/earlygrey/shapedrawer/shapes/BasicEllipse;

    return-object v0
.end method

.method abstract filled()Z
.end method

.method public polygon()Lspace/earlygrey/shapedrawer/shapes/Shape$FilledPolygon;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lspace/earlygrey/shapedrawer/shapes/Shape$FilledPolygon<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/shapes/Utensil;->POLYLINE:Lspace/earlygrey/shapedrawer/shapes/BasicPolyline;

    invoke-virtual {p0}, Lspace/earlygrey/shapedrawer/shapes/Utensil;->filled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lspace/earlygrey/shapedrawer/shapes/BasicPolyline;->reset(Z)V

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/shapes/Utensil;->POLYLINE:Lspace/earlygrey/shapedrawer/shapes/BasicPolyline;

    return-object v0
.end method

.method public rectangle()Lspace/earlygrey/shapedrawer/shapes/Shape$FilledRectangle;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lspace/earlygrey/shapedrawer/shapes/Shape$FilledRectangle<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/shapes/Utensil;->RECTANGLE:Lspace/earlygrey/shapedrawer/shapes/BasicRectangle;

    invoke-virtual {p0}, Lspace/earlygrey/shapedrawer/shapes/Utensil;->filled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lspace/earlygrey/shapedrawer/shapes/BasicRectangle;->reset(Z)V

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/shapes/Utensil;->RECTANGLE:Lspace/earlygrey/shapedrawer/shapes/BasicRectangle;

    return-object v0
.end method

.method public regularPolygon()Lspace/earlygrey/shapedrawer/shapes/Shape$FilledRegularPolygon;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lspace/earlygrey/shapedrawer/shapes/Shape$FilledRegularPolygon<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/shapes/Utensil;->REGULAR_POLYGON:Lspace/earlygrey/shapedrawer/shapes/BasicRegularPolygon;

    invoke-virtual {p0}, Lspace/earlygrey/shapedrawer/shapes/Utensil;->filled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lspace/earlygrey/shapedrawer/shapes/BasicRegularPolygon;->reset(Z)V

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/shapes/Utensil;->REGULAR_POLYGON:Lspace/earlygrey/shapedrawer/shapes/BasicRegularPolygon;

    return-object v0
.end method

.method public triangle()Lspace/earlygrey/shapedrawer/shapes/Shape$FilledTriangle;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lspace/earlygrey/shapedrawer/shapes/Shape$FilledTriangle<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/shapes/Utensil;->TRIANGLE:Lspace/earlygrey/shapedrawer/shapes/BasicTriangle;

    invoke-virtual {p0}, Lspace/earlygrey/shapedrawer/shapes/Utensil;->filled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lspace/earlygrey/shapedrawer/shapes/BasicTriangle;->reset(Z)V

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/shapes/Utensil;->TRIANGLE:Lspace/earlygrey/shapedrawer/shapes/BasicTriangle;

    return-object v0
.end method
