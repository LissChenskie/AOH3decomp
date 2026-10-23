.class public final synthetic Lspace/earlygrey/shapedrawer/shapes/BasicPolyline$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lspace/earlygrey/shapedrawer/shapes/BasicPolyline;


# direct methods
.method public synthetic constructor <init>(Lspace/earlygrey/shapedrawer/shapes/BasicPolyline;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lspace/earlygrey/shapedrawer/shapes/BasicPolyline$$ExternalSyntheticLambda0;->f$0:Lspace/earlygrey/shapedrawer/shapes/BasicPolyline;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/shapes/BasicPolyline$$ExternalSyntheticLambda0;->f$0:Lspace/earlygrey/shapedrawer/shapes/BasicPolyline;

    check-cast p1, Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, p1}, Lspace/earlygrey/shapedrawer/shapes/BasicPolyline;->lambda$vertices$0$space-earlygrey-shapedrawer-shapes-BasicPolyline(Lcom/badlogic/gdx/math/Vector2;)V

    return-void
.end method
