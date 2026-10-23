.class Laoc/kingdoms/lukasz/map/province/ProvinceDraw$38;
.super Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;
.source "ProvinceDraw.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->addDiplomacyLines(IILcom/badlogic/gdx/graphics/Color;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(IIILcom/badlogic/gdx/graphics/Color;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities_Diplomacy;-><init>(IIILcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method


# virtual methods
.method public canBeUsedInPath(IIZI)Z
    .locals 0

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/Province;->getWasteland()I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public isFriendlyProvince(II)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
