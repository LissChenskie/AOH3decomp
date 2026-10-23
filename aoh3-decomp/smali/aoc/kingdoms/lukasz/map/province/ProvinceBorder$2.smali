.class Laoc/kingdoms/lukasz/map/province/ProvinceBorder$2;
.super Ljava/lang/Object;
.source "ProvinceBorder.java"

# interfaces
.implements Laoc/kingdoms/lukasz/map/province/ProvinceBorder$DrawProvinceBorder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->updateDrawProvinceBorder(I)V
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

    iput-object p1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$2;->this$0:Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILspace/earlygrey/shapedrawer/JoinType;F)V
    .locals 0

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$2;->this$0:Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    invoke-virtual {p1, p2, p3, p4}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->drawStraightBorder_Shape(ILspace/earlygrey/shapedrawer/JoinType;F)V

    return-void
.end method
