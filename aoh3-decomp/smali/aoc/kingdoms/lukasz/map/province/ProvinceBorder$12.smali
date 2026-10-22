.class Laoc/kingdoms/lukasz/map/province/ProvinceBorder$12;
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

    iput-object p1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$12;->this$0:Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILspace/earlygrey/shapedrawer/JoinType;F)V
    .locals 2

    sget-wide p3, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$12;->this$0:Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    iget-wide v0, v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->animationTime:J

    sub-long/2addr p3, v0

    long-to-float p3, p3

    const p4, 0x43d48000    # 425.0f

    div-float/2addr p3, p4

    const/high16 p4, 0x3f800000    # 1.0f

    cmpl-float p4, p3, p4

    if-ltz p4, :cond_0

    sget-object p3, Laoc/kingdoms/lukasz/jakowski/CFG;->COLOR_PROVINCE_SEABYSEA:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object p3, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$12;->this$0:Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    invoke-virtual {p3, p1, p2}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->drawStraightBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$12;->this$0:Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    new-instance p2, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$12$1;

    invoke-direct {p2, p0}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$12$1;-><init>(Laoc/kingdoms/lukasz/map/province/ProvinceBorder$12;)V

    iput-object p2, p1, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->drawProvinceBorder:Laoc/kingdoms/lukasz/map/province/ProvinceBorder$DrawProvinceBorder;

    goto :goto_0

    :cond_0
    sget-object p4, Laoc/kingdoms/lukasz/jakowski/CFG;->COLOR_PROVINCE_SEABYSEA:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object p4, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$12;->this$0:Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    invoke-virtual {p4, p1, p2, p3}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->drawStraightBorder_Percentage(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IF)V

    :goto_0
    return-void
.end method
