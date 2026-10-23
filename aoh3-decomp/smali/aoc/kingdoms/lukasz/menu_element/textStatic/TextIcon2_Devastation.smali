.class public Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Devastation;
.super Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2;
.source "TextIcon2_Devastation.java"


# instance fields
.field public iProvinceID:I

.field public lastValue:F


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2;-><init>(Ljava/lang/String;IIIII)V

    const p1, -0x368c6e9b

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Devastation;->lastValue:F

    iput p7, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Devastation;->iProvinceID:I

    return-void
.end method


# virtual methods
.method public getCurrent()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Devastation;->iProvinceID:I

    return v0
.end method

.method public getTextToDraw()Ljava/lang/String;
    .locals 3

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Devastation;->lastValue:F

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Devastation;->iProvinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getDevastation()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Devastation;->iProvinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getDevastation()F

    move-result v1

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    const/16 v2, 0xa

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Devastation;->setText(Ljava/lang/String;)V

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Devastation;->iProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getDevastation()F

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Devastation;->lastValue:F

    :cond_0
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2;->getTextToDraw()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
