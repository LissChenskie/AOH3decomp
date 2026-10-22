.class public Laoc/kingdoms/lukasz/menu_element/button/ButtonCurrentSituation_Value;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonCurrentSituation;
.source "ButtonCurrentSituation_Value.java"


# instance fields
.field public id:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIIIIZI)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Laoc/kingdoms/lukasz/menu_element/button/ButtonCurrentSituation;-><init>(Ljava/lang/String;IIIIIIZ)V

    iput p9, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonCurrentSituation_Value;->id:I

    return-void
.end method


# virtual methods
.method public getCurrent()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonCurrentSituation_Value;->id:I

    return v0
.end method
