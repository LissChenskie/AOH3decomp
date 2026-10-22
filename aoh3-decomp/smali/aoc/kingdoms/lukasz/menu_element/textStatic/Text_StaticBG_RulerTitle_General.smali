.class public Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_RulerTitle_General;
.super Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_RulerTitle;
.source "Text_StaticBG_RulerTitle_General.java"


# instance fields
.field public iCivID:I

.field public iProvinceID:I

.field public key:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_RulerTitle;-><init>(Ljava/lang/String;IIII)V

    iput p6, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_RulerTitle_General;->iProvinceID:I

    iput p7, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_RulerTitle_General;->iCivID:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIILjava/lang/String;II)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_RulerTitle;-><init>(Ljava/lang/String;IIII)V

    iput-object p6, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_RulerTitle_General;->key:Ljava/lang/String;

    iput p7, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_RulerTitle_General;->iProvinceID:I

    iput p8, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_RulerTitle_General;->iCivID:I

    return-void
.end method
