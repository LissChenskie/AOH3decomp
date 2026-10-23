.class public final synthetic Lspace/earlygrey/shapedrawer/shapes/BasicPolyline$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lspace/earlygrey/shapedrawer/shapes/BasicPolyline;

.field public final synthetic f$1:Lcom/badlogic/gdx/utils/ShortArray;


# direct methods
.method public synthetic constructor <init>(Lspace/earlygrey/shapedrawer/shapes/BasicPolyline;Lcom/badlogic/gdx/utils/ShortArray;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lspace/earlygrey/shapedrawer/shapes/BasicPolyline$$ExternalSyntheticLambda1;->f$0:Lspace/earlygrey/shapedrawer/shapes/BasicPolyline;

    iput-object p2, p0, Lspace/earlygrey/shapedrawer/shapes/BasicPolyline$$ExternalSyntheticLambda1;->f$1:Lcom/badlogic/gdx/utils/ShortArray;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/shapes/BasicPolyline$$ExternalSyntheticLambda1;->f$0:Lspace/earlygrey/shapedrawer/shapes/BasicPolyline;

    iget-object v1, p0, Lspace/earlygrey/shapedrawer/shapes/BasicPolyline$$ExternalSyntheticLambda1;->f$1:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v0, v1}, Lspace/earlygrey/shapedrawer/shapes/BasicPolyline;->lambda$draw$1$space-earlygrey-shapedrawer-shapes-BasicPolyline(Lcom/badlogic/gdx/utils/ShortArray;)V

    return-void
.end method
