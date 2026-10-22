.class public Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits_Player;
.super Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;
.source "MoveUnits_Player.java"


# direct methods
.method public constructor <init>(IIILjava/lang/String;II)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;-><init>(IIILjava/lang/String;II)V

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;IZZ)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;-><init>(IIILjava/lang/String;IZZ)V

    return-void
.end method


# virtual methods
.method public getWas(I)Z
    .locals 0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p1

    iget-boolean p1, p1, Laoc/kingdoms/lukasz/map/province/Province;->wasPlayer:Z

    return p1
.end method

.method public setWas(IZ)V
    .locals 0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p1

    iput-boolean p2, p1, Laoc/kingdoms/lukasz/map/province/Province;->wasPlayer:Z

    return-void
.end method
