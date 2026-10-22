.class Laoc/kingdoms/lukasz/map/province/ProvinceBorder$17;
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

    iput-object p1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$17;->this$0:Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILspace/earlygrey/shapedrawer/JoinType;F)V
    .locals 2

    sget-object p3, Laoc/kingdoms/lukasz/jakowski/CFG;->COLOR_PROVINCE_DASHED:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-wide p3, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$17;->this$0:Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    iget-wide v0, v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->animationTime:J

    sub-long/2addr p3, v0

    long-to-float p3, p3

    const p4, 0x43d48000    # 425.0f

    div-float/2addr p3, p4

    const/high16 p4, 0x3f800000    # 1.0f

    cmpl-float v0, p3, p4

    if-ltz v0, :cond_0

    iget-object p3, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$17;->this$0:Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    const/4 p4, 0x0

    invoke-virtual {p3, p1, p2, p4}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->drawDashedBorder_Percentage(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IF)V

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$17;->this$0:Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    new-instance p2, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$17$1;

    invoke-direct {p2, p0}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$17$1;-><init>(Laoc/kingdoms/lukasz/map/province/ProvinceBorder$17;)V

    iput-object p2, p1, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->drawProvinceBorder:Laoc/kingdoms/lukasz/map/province/ProvinceBorder$DrawProvinceBorder;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$17;->this$0:Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    sub-float/2addr p4, p3

    invoke-virtual {v0, p1, p2, p4}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->drawDashedBorder_Percentage(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IF)V

    :goto_0
    return-void
.end method
