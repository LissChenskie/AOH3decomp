.class public Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;
.super Ljava/lang/Object;
.source "PieChart_Value.java"


# instance fields
.field private fPercentage:F

.field private fValue:D

.field private iDataID:I


# direct methods
.method public constructor <init>(IF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;->iDataID:I

    float-to-double p1, p2

    iput-wide p1, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;->fValue:D

    return-void
.end method


# virtual methods
.method public final getDataID()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;->iDataID:I

    return v0
.end method

.method public final getPercentage()F
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;->fPercentage:F

    return v0
.end method

.method public final getValue()D
    .locals 2

    iget-wide v0, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;->fValue:D

    return-wide v0
.end method

.method public final setPercentage(F)V
    .locals 0

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;->fPercentage:F

    return-void
.end method
