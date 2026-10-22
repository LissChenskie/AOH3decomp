.class public final synthetic Lspace/earlygrey/shapedrawer/ShapeDrawer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lspace/earlygrey/shapedrawer/ShapeUtils$LineWidthFunction;


# instance fields
.field public final synthetic f$0:F


# direct methods
.method public synthetic constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lspace/earlygrey/shapedrawer/ShapeDrawer$$ExternalSyntheticLambda0;->f$0:F

    return-void
.end method


# virtual methods
.method public final getWidth(IF)F
    .locals 1

    iget v0, p0, Lspace/earlygrey/shapedrawer/ShapeDrawer$$ExternalSyntheticLambda0;->f$0:F

    invoke-static {v0, p1, p2}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->lambda$path$0(FIF)F

    move-result p1

    return p1
.end method
