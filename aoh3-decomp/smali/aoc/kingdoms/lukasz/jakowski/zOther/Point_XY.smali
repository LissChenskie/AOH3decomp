.class public Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;
.super Ljava/lang/Object;
.source "Point_XY.java"


# instance fields
.field private iPosX:I

.field private iPosY:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->iPosX:I

    iput p2, p0, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->iPosY:I

    return-void
.end method


# virtual methods
.method public final getPosX()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->iPosX:I

    return v0
.end method

.method public final getPosY()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->iPosY:I

    return v0
.end method

.method public final setPosX(I)V
    .locals 0

    iput p1, p0, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->iPosX:I

    return-void
.end method

.method public final setPosY(I)V
    .locals 0

    iput p1, p0, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->iPosY:I

    return-void
.end method
