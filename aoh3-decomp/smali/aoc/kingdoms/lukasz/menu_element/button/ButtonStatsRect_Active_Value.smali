.class public Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRect_Active_Value;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRect_Active;
.source "ButtonStatsRect_Active_Value.java"


# instance fields
.field public id:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIII)V
    .locals 9

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v0, 0x2

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v8}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRect_Active;-><init>(Ljava/lang/String;IIIIII)V

    iput p6, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRect_Active_Value;->id:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIIII)V
    .locals 8

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    move-object v0, p0

    move-object v1, p1

    move v2, p7

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRect_Active;-><init>(Ljava/lang/String;IIIIII)V

    iput p6, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRect_Active_Value;->id:I

    return-void
.end method


# virtual methods
.method public getCurrent()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRect_Active_Value;->id:I

    return v0
.end method
