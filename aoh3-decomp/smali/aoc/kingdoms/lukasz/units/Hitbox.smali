.class public Laoc/kingdoms/lukasz/units/Hitbox;
.super Ljava/lang/Object;
.source "Hitbox.java"


# instance fields
.field private iHeight:I

.field private iPosX:I

.field private iPosY:I

.field private iWidth:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Laoc/kingdoms/lukasz/units/Hitbox;->iPosX:I

    iput p2, p0, Laoc/kingdoms/lukasz/units/Hitbox;->iPosY:I

    iput p3, p0, Laoc/kingdoms/lukasz/units/Hitbox;->iWidth:I

    iput p4, p0, Laoc/kingdoms/lukasz/units/Hitbox;->iHeight:I

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/units/Hitbox;->iHeight:I

    return v0
.end method

.method public getPosX()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/units/Hitbox;->iPosX:I

    return v0
.end method

.method public getPosY()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/units/Hitbox;->iPosY:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/units/Hitbox;->iWidth:I

    return v0
.end method

.method public setHeight(I)V
    .locals 0

    iput p1, p0, Laoc/kingdoms/lukasz/units/Hitbox;->iHeight:I

    return-void
.end method

.method public setPosX(I)V
    .locals 0

    iput p1, p0, Laoc/kingdoms/lukasz/units/Hitbox;->iPosX:I

    return-void
.end method

.method public setPosY(I)V
    .locals 0

    iput p1, p0, Laoc/kingdoms/lukasz/units/Hitbox;->iPosY:I

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Laoc/kingdoms/lukasz/units/Hitbox;->iWidth:I

    return-void
.end method
