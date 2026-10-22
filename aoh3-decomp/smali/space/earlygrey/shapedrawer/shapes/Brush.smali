.class public Lspace/earlygrey/shapedrawer/shapes/Brush;
.super Lspace/earlygrey/shapedrawer/shapes/Utensil;
.source "Brush.java"


# direct methods
.method public constructor <init>(Lspace/earlygrey/shapedrawer/ShapeDrawer;)V
    .locals 0

    invoke-direct {p0, p1}, Lspace/earlygrey/shapedrawer/shapes/Utensil;-><init>(Lspace/earlygrey/shapedrawer/ShapeDrawer;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic circle()Lspace/earlygrey/shapedrawer/shapes/Shape$FilledCircle;
    .locals 1

    invoke-super {p0}, Lspace/earlygrey/shapedrawer/shapes/Utensil;->circle()Lspace/earlygrey/shapedrawer/shapes/Shape$FilledCircle;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic ellipse()Lspace/earlygrey/shapedrawer/shapes/Shape$FilledEllipse;
    .locals 1

    invoke-super {p0}, Lspace/earlygrey/shapedrawer/shapes/Utensil;->ellipse()Lspace/earlygrey/shapedrawer/shapes/Shape$FilledEllipse;

    move-result-object v0

    return-object v0
.end method

.method filled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic polygon()Lspace/earlygrey/shapedrawer/shapes/Shape$FilledPolygon;
    .locals 1

    invoke-super {p0}, Lspace/earlygrey/shapedrawer/shapes/Utensil;->polygon()Lspace/earlygrey/shapedrawer/shapes/Shape$FilledPolygon;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic rectangle()Lspace/earlygrey/shapedrawer/shapes/Shape$FilledRectangle;
    .locals 1

    invoke-super {p0}, Lspace/earlygrey/shapedrawer/shapes/Utensil;->rectangle()Lspace/earlygrey/shapedrawer/shapes/Shape$FilledRectangle;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic regularPolygon()Lspace/earlygrey/shapedrawer/shapes/Shape$FilledRegularPolygon;
    .locals 1

    invoke-super {p0}, Lspace/earlygrey/shapedrawer/shapes/Utensil;->regularPolygon()Lspace/earlygrey/shapedrawer/shapes/Shape$FilledRegularPolygon;

    move-result-object v0

    return-object v0
.end method

.method public sector()Lspace/earlygrey/shapedrawer/shapes/Shape$Sector;
    .locals 2

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/shapes/Brush;->ARC:Lspace/earlygrey/shapedrawer/shapes/BasicArc;

    invoke-virtual {p0}, Lspace/earlygrey/shapedrawer/shapes/Brush;->filled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lspace/earlygrey/shapedrawer/shapes/BasicArc;->reset(Z)V

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/shapes/Brush;->ARC:Lspace/earlygrey/shapedrawer/shapes/BasicArc;

    return-object v0
.end method

.method public bridge synthetic triangle()Lspace/earlygrey/shapedrawer/shapes/Shape$FilledTriangle;
    .locals 1

    invoke-super {p0}, Lspace/earlygrey/shapedrawer/shapes/Utensil;->triangle()Lspace/earlygrey/shapedrawer/shapes/Shape$FilledTriangle;

    move-result-object v0

    return-object v0
.end method
