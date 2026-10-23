.class public Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ;
.super Ljava/lang/Object;
.source "AI_Civ.java"


# instance fields
.field public armies_FirstLine_Perc:F

.field public armies_FlankLine_Perc:F

.field public armies_SiegeWeaponPerSupportUnits:I

.field public armies_SiegeWeapon_Max:I

.field public army_First:F

.field public army_Fourth:F

.field public army_Second:F

.field public army_Third:F

.field public regimentsLimit_UseMax_Perc:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3f8ccccd    # 1.1f

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ;->army_First:F

    const v0, 0x3f666666    # 0.9f

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ;->army_Second:F

    const/high16 v0, 0x3f400000    # 0.75f

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ;->army_Third:F

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ;->army_Fourth:F

    const/high16 v0, 0x3fa00000    # 1.25f

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ;->regimentsLimit_UseMax_Perc:F

    const v0, 0x3f4ccccd    # 0.8f

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ;->armies_FirstLine_Perc:F

    const v0, 0x3e4ccccd    # 0.2f

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ;->armies_FlankLine_Perc:F

    const/16 v0, 0xa

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ;->armies_SiegeWeaponPerSupportUnits:I

    const/4 v0, 0x1

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ;->armies_SiegeWeapon_Max:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ;->buildPersonality()V

    return-void
.end method


# virtual methods
.method public final buildPersonality()V
    .locals 0

    return-void
.end method
