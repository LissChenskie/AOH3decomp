.class public Laoc/kingdoms/lukasz/units/UnitsManager;
.super Ljava/lang/Object;
.source "UnitsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/units/UnitsManager$MoveUnitInDirection;
    }
.end annotation


# instance fields
.field private moveUnit:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/units/UnitsManager$MoveUnitInDirection;",
            ">;"
        }
    .end annotation
.end field

.field public templar:Laoc/kingdoms/lukasz/units/UnitType;

.field public unitSheep:Laoc/kingdoms/lukasz/units/UnitType;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/units/UnitsManager;->moveUnit:Ljava/util/List;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/units/UnitsManager;->initMoveUnit()V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/units/UnitsManager;->loadUnits()V

    return-void
.end method


# virtual methods
.method public final initMoveUnit()V
    .locals 0

    return-void
.end method

.method public final initTestUnits()V
    .locals 0

    return-void
.end method

.method public final loadUnits()V
    .locals 1

    new-instance v0, Laoc/kingdoms/lukasz/units/UnitType_Templar;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/units/UnitType_Templar;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/units/UnitsManager;->templar:Laoc/kingdoms/lukasz/units/UnitType;

    new-instance v0, Laoc/kingdoms/lukasz/units/UnitType_Sheep;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/units/UnitType_Sheep;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/units/UnitsManager;->unitSheep:Laoc/kingdoms/lukasz/units/UnitType;

    return-void
.end method

.method public final tempDrawUnits(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 0

    return-void
.end method

.method public final tempUpdateUnits()V
    .locals 0

    return-void
.end method
