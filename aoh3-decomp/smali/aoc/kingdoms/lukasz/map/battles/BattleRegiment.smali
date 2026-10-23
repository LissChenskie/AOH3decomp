.class public Laoc/kingdoms/lukasz/map/battles/BattleRegiment;
.super Ljava/lang/Object;
.source "BattleRegiment.java"


# instance fields
.field public aK:Ljava/lang/String;

.field public aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

.field public c:I

.field public cL:I

.field public ca:I

.field public d:I

.field public f:B

.field public l:B

.field public rL:I

.field public re:I

.field public rn:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->cL:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->rL:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->d:I

    iput-byte v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->f:B

    iput-byte v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->l:B

    return-void
.end method

.method public constructor <init>(ILaoc/kingdoms/lukasz/map/army/ArmyRegiment;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->cL:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->rL:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->d:I

    iput-byte v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->f:B

    iput-byte v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->l:B

    iput p1, p0, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->c:I

    iput-object p2, p0, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iput-object p3, p0, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aK:Ljava/lang/String;

    return-void
.end method
