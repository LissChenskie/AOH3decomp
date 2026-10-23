.class public Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;
.super Ljava/lang/Object;
.source "InGame_ReleaseAVassal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReleaseVassalData"
.end annotation


# instance fields
.field public changeGovernment:Z

.field public changeReligion:Z

.field public iCivID:I

.field public iLordID:I

.field public lProvinces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public liberateVassal:Z

.field public playAsVassal:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;->lProvinces:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;->playAsVassal:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;->changeGovernment:Z

    iput-boolean v1, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;->changeReligion:Z

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;->liberateVassal:Z

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;->lProvinces:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;->playAsVassal:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;->changeGovernment:Z

    iput-boolean v1, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;->changeReligion:Z

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;->liberateVassal:Z

    iput p1, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;->iLordID:I

    iput p2, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;->iCivID:I

    return-void
.end method
