.class public Laoc/kingdoms/lukasz/map/civilization/CivilizationRanking$SortedElements;
.super Ljava/lang/Object;
.source "CivilizationRanking.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/map/civilization/CivilizationRanking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SortedElements"
.end annotation


# instance fields
.field public hoverElement:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

.field public value:F


# direct methods
.method public constructor <init>(Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRanking$SortedElements;->hoverElement:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    iput p2, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRanking$SortedElements;->value:F

    return-void
.end method
