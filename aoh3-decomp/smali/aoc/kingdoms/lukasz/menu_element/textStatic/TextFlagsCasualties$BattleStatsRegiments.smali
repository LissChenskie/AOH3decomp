.class public Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties$BattleStatsRegiments;
.super Ljava/lang/Object;
.source "TextFlagsCasualties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BattleStatsRegiments"
.end annotation


# instance fields
.field public armyID:I

.field public numOfUnits:I

.field public unitTypeID:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties$BattleStatsRegiments;->unitTypeID:I

    iput p2, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties$BattleStatsRegiments;->armyID:I

    iput p3, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties$BattleStatsRegiments;->numOfUnits:I

    return-void
.end method
