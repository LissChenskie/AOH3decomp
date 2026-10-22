.class public Laoc/kingdoms/lukasz/units/UnitType_Templar;
.super Laoc/kingdoms/lukasz/units/UnitType;
.source "UnitType_Templar.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Laoc/kingdoms/lukasz/units/UnitType;-><init>()V

    return-void
.end method


# virtual methods
.method public initUnit()V
    .locals 12

    iget-object v0, p0, Laoc/kingdoms/lukasz/units/UnitType_Templar;->animations_Idle:Ljava/util/List;

    new-instance v7, Laoc/kingdoms/lukasz/units/Animation_Unit;

    const/4 v2, 0x0

    sget-object v2, Laoc/kingdoms/lukasz/map/civilization/stats/LQy/lJxd;->ricvfbTKYvBZgk:Ljava/lang/String;

    const/16 v3, 0x2a

    const/16 v4, 0x2a

    new-instance v5, Laoc/kingdoms/lukasz/units/Hitbox;

    const/4 v8, 0x7

    const/4 v9, 0x3

    const/16 v10, 0x1c

    const/16 v11, 0x24

    invoke-direct {v5, v8, v9, v10, v11}, Laoc/kingdoms/lukasz/units/Hitbox;-><init>(IIII)V

    const/16 v6, 0x40

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Laoc/kingdoms/lukasz/units/Animation_Unit;-><init>(Ljava/lang/String;IILaoc/kingdoms/lukasz/units/Hitbox;I)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Laoc/kingdoms/lukasz/units/UnitType_Templar;->animations_Idle:Ljava/util/List;

    new-instance v7, Laoc/kingdoms/lukasz/units/Animation_Unit;

    const-string v2, "gfx/units/Templar/idle1.png"

    new-instance v5, Laoc/kingdoms/lukasz/units/Hitbox;

    invoke-direct {v5, v8, v9, v10, v11}, Laoc/kingdoms/lukasz/units/Hitbox;-><init>(IIII)V

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Laoc/kingdoms/lukasz/units/Animation_Unit;-><init>(Ljava/lang/String;IILaoc/kingdoms/lukasz/units/Hitbox;I)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Laoc/kingdoms/lukasz/units/UnitType_Templar;->animations_Idle:Ljava/util/List;

    new-instance v7, Laoc/kingdoms/lukasz/units/Animation_Unit;

    const-string v2, "gfx/units/Templar/idle2.png"

    new-instance v5, Laoc/kingdoms/lukasz/units/Hitbox;

    invoke-direct {v5, v8, v9, v10, v11}, Laoc/kingdoms/lukasz/units/Hitbox;-><init>(IIII)V

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Laoc/kingdoms/lukasz/units/Animation_Unit;-><init>(Ljava/lang/String;IILaoc/kingdoms/lukasz/units/Hitbox;I)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Laoc/kingdoms/lukasz/units/UnitType_Templar;->animations_Walk:Ljava/util/List;

    new-instance v7, Laoc/kingdoms/lukasz/units/Animation_Unit;

    const-string v2, "gfx/units/Templar/walk.png"

    const/16 v3, 0x2c

    const/16 v4, 0x2c

    new-instance v5, Laoc/kingdoms/lukasz/units/Hitbox;

    const/16 v1, 0x8

    const/4 v6, 0x4

    invoke-direct {v5, v1, v6, v10, v11}, Laoc/kingdoms/lukasz/units/Hitbox;-><init>(IIII)V

    const/16 v6, 0x30

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Laoc/kingdoms/lukasz/units/Animation_Unit;-><init>(Ljava/lang/String;IILaoc/kingdoms/lukasz/units/Hitbox;I)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v0, 0x3f91eb85    # 1.14f

    iput v0, p0, Laoc/kingdoms/lukasz/units/UnitType_Templar;->unitSpeed:F

    const/16 v0, 0x64

    iput v0, p0, Laoc/kingdoms/lukasz/units/UnitType_Templar;->maxHP:I

    return-void
.end method
