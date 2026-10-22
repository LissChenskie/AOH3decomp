.class public Laoc/kingdoms/lukasz/map/plague/Plague;
.super Ljava/lang/Object;
.source "Plague.java"


# instance fields
.field public EXPANSION_MODIFIER:F

.field public EXPANSION_SCORE:F

.field public fB:F

.field public fDeathRate:F

.field public fDevastation:F

.field public fG:F

.field public fR:F

.field public iDeaths:I

.field public iDurationTurnsLeft:I

.field public iDurationTurnsLeft_BEGINNING:I

.field public iImageID:I

.field public iPlagueID_InGame:I

.field public iProvincesSize:I

.field public lProvinces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public lProvinces_Active:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public nS:Z

.field public sName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->iPlagueID_InGame:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->lProvinces:Ljava/util/List;

    iput v0, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->iProvincesSize:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->lProvinces_Active:Ljava/util/List;

    const/4 v1, 0x0

    iput v1, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->fDeathRate:F

    iput v0, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->iDurationTurnsLeft:I

    iput v1, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->fDevastation:F

    iput v0, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->iDeaths:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->iImageID:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->iDurationTurnsLeft_BEGINNING:I

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->nS:Z

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;FFFIFIFIF)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->iPlagueID_InGame:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->lProvinces:Ljava/util/List;

    iput v0, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->iProvincesSize:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->lProvinces_Active:Ljava/util/List;

    const/4 v1, 0x0

    iput v1, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->fDeathRate:F

    iput v0, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->iDurationTurnsLeft:I

    iput v1, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->fDevastation:F

    iput v0, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->iDeaths:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->iImageID:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->iDurationTurnsLeft_BEGINNING:I

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->nS:Z

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v0, p2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->sName:Ljava/lang/String;

    iput p6, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->iPlagueID_InGame:I

    iput p3, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->fR:F

    iput p4, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->fG:F

    iput p5, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->fB:F

    iput p10, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->iImageID:I

    iput p11, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->fDevastation:F

    iput p7, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->fDeathRate:F

    iput p8, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->iDurationTurnsLeft:I

    iput p8, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->iDurationTurnsLeft_BEGINNING:I

    iput p9, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->EXPANSION_MODIFIER:F

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/plague/Plague;->addProvince(I)V

    return-void
.end method


# virtual methods
.method protected final addProvince(I)V
    .locals 11

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->iProvincesSize:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->lProvinces:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData10(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData10;

    move-result-object v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    iput v2, v1, Laoc/kingdoms/lukasz/map/province/data/ProvinceData10;->t:I

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/province/Province;->provincePlague:Laoc/kingdoms/lukasz/map/plague/ProvincePlague;

    if-eqz v1, :cond_2

    return-void

    :cond_2
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    new-instance v2, Laoc/kingdoms/lukasz/map/plague/ProvincePlague;

    iget v3, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->iPlagueID_InGame:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    iget v5, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->iDurationTurnsLeft:I

    int-to-float v5, v5

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    const/16 v7, 0x1770

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    int-to-float v6, v6

    const v7, 0x461c4000    # 10000.0f

    div-float/2addr v6, v7

    const/high16 v7, 0x3f200000    # 0.625f

    add-float/2addr v6, v7

    mul-float/2addr v5, v6

    invoke-direct {v2, v3, v4, v5, v0}, Laoc/kingdoms/lukasz/map/plague/ProvincePlague;-><init>(IIFI)V

    iput-object v2, v1, Laoc/kingdoms/lukasz/map/province/Province;->provincePlague:Laoc/kingdoms/lukasz/map/plague/ProvincePlague;

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->nS:Z

    const/4 v1, 0x1

    if-nez v0, :cond_3

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v0, v2, :cond_3

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-lez v0, :cond_3

    iput-boolean v1, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->nS:Z

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->plagues:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Plagues;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Plagues;->SEND_NOTIFICATION_CHANCE:I

    if-ge v0, v2, :cond_3

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    new-instance v10, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;->DISEASE:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->sName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ": "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "Disease"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->disease:I

    sget v6, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;->RED:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;

    iget-object v8, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->sName:Ljava/lang/String;

    move-object v2, v10

    move v9, p1

    invoke-direct/range {v2 .. v9}, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;-><init>(Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;Ljava/lang/String;IILaoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;Ljava/lang/String;I)V

    invoke-virtual {v0, v10}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->addNotification(Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;)V

    :cond_3
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData10(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData10;

    move-result-object v0

    iget v2, v0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData10;->n:I

    add-int/2addr v2, v1

    iput v2, v0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData10;->n:I

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->lProvinces:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->lProvinces_Active:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->lProvinces:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->iProvincesSize:I

    return-void
.end method

.method protected final getDeaths()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->iDeaths:I

    return v0
.end method

.method protected final getDurationPercLEFT()F
    .locals 2

    iget v0, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->iDurationTurnsLeft:I

    int-to-float v0, v0

    iget v1, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->iDurationTurnsLeft_BEGINNING:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method protected final getDurationPercLEFT(I)F
    .locals 1

    int-to-float p1, p1

    iget v0, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->iDurationTurnsLeft_BEGINNING:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    return p1
.end method

.method protected final getNumOfProvinces_Active()I
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->lProvinces_Active:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected final getNumOfProvinces_Total()I
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->lProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected final getOutbreakProvinceID()I
    .locals 2

    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->lProvinces:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, -0x1

    return v0
.end method

.method protected final getPlagueID_InGame()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->iPlagueID_InGame:I

    return v0
.end method

.method protected final getPlagueName()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->sName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "Plague"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final getSpreadScore(I)I
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ge v1, v3, :cond_2

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->provincePlague:Laoc/kingdoms/lukasz/map/plague/ProvincePlague;

    if-nez v3, :cond_1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v3

    if-eqz v3, :cond_0

    move v4, v5

    :cond_0
    add-int/2addr v2, v4

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvincesSize()I

    move-result v1

    if-ge v0, v1, :cond_5

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvinces(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/province/Province;->provincePlague:Laoc/kingdoms/lukasz/map/plague/ProvincePlague;

    if-nez v1, :cond_4

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvinces(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v5

    goto :goto_2

    :cond_3
    move v1, v4

    :goto_2
    add-int/2addr v2, v1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    return v2
.end method

.method protected final runDisease()V
    .locals 12

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->lProvinces_Active:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->lProvinces_Active:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/province/Province;->provincePlague:Laoc/kingdoms/lukasz/map/plague/ProvincePlague;

    if-eqz v1, :cond_2

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->lProvinces_Active:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/province/Province;->provincePlague:Laoc/kingdoms/lukasz/map/plague/ProvincePlague;

    iget v1, v1, Laoc/kingdoms/lukasz/map/plague/ProvincePlague;->id:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/plague/Plague;->getPlagueID_InGame()I

    move-result v2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->lProvinces_Active:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationTotal()I

    move-result v1

    int-to-float v2, v1

    iget v3, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->fDeathRate:F

    const v4, 0x3ea66666    # 0.325f

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/plague/Plague;->getDurationPercLEFT()F

    move-result v5

    mul-float/2addr v5, v4

    const v4, 0x3e666666    # 0.225f

    add-float/2addr v5, v4

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    const/16 v6, 0x64

    invoke-virtual {v4, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    int-to-float v4, v4

    const v6, 0x3f0ccccd    # 0.55f

    mul-float/2addr v4, v6

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v4, v6

    add-float/2addr v5, v4

    mul-float/2addr v3, v5

    mul-float/2addr v3, v2

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->plagues:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Plagues;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Plagues;->DISEASE_MAX_DEATH_RATE_REDUCTION:F

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->lProvinces_Active:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v5, v5, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->DiseaseDeathRate:F

    iget-object v7, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->lProvinces_Active:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v7, v7, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->DiseaseDeathRate:F

    add-float/2addr v5, v7

    iget-object v7, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->lProvinces_Active:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getInfrastructure()I

    move-result v7

    int-to-float v7, v7

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/GameValues;->infrastructure:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;->INFRASTRUCTURE_DISEASE_DEATH_RATE_PER_LVL:F

    mul-float/2addr v7, v8

    add-float/2addr v5, v7

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    add-float/2addr v4, v5

    mul-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    if-lez v3, :cond_1

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->lProvinces_Active:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationSize()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_1
    if-ltz v4, :cond_0

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->lProvinces_Active:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    iget-object v7, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->lProvinces_Active:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationCivID(I)I

    move-result v7

    iget-object v8, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->lProvinces_Active:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationID(I)I

    move-result v8

    int-to-double v8, v8

    int-to-float v10, v3

    iget-object v11, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->lProvinces_Active:Ljava/util/List;

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    invoke-virtual {v11, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationID(I)I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v11, v2

    mul-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    sub-double/2addr v8, v10

    double-to-int v8, v8

    invoke-virtual {v5, v7, v8}, Laoc/kingdoms/lukasz/map/province/Province;->setPopulationOfCivID(II)Z

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_0
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->lProvinces_Active:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationTotal()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->lProvinces_Active:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->provincePlague:Laoc/kingdoms/lukasz/map/plague/ProvincePlague;

    iget v3, v2, Laoc/kingdoms/lukasz/map/plague/ProvincePlague;->deaths:I

    add-int/2addr v3, v1

    iput v3, v2, Laoc/kingdoms/lukasz/map/plague/ProvincePlague;->deaths:I

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->lProvinces_Active:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData10(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData10;

    move-result-object v2

    iget v3, v2, Laoc/kingdoms/lukasz/map/province/data/ProvinceData10;->d:I

    add-int/2addr v3, v1

    iput v3, v2, Laoc/kingdoms/lukasz/map/province/data/ProvinceData10;->d:I

    iget v2, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->iDeaths:I

    add-int/2addr v2, v1

    iput v2, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->iDeaths:I

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->lProvinces_Active:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->lProvinces_Active:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getDevastation()F

    move-result v2

    iget v3, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->fDevastation:F

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    const/16 v5, 0x4b

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v6

    const/high16 v5, 0x3f400000    # 0.75f

    add-float/2addr v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/province/Province;->setDevastation(F)V

    :cond_1
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->lProvinces_Active:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/province/Province;->provincePlague:Laoc/kingdoms/lukasz/map/plague/ProvincePlague;

    iget v2, v1, Laoc/kingdoms/lukasz/map/plague/ProvincePlague;->turnsLeft:F

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->lProvinces_Active:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getGrowthRateWithBonuses()F

    move-result v3

    div-float/2addr v3, v6

    const v4, 0x3d851eb8    # 0.065f

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f600000    # 0.875f

    sub-float/2addr v4, v3

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->plagues:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Plagues;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Plagues;->DISEASE_DAYS_LEFT_RANDOM:I

    invoke-virtual {v3, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    int-to-float v3, v3

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float/2addr v3, v5

    add-float/2addr v4, v3

    sub-float/2addr v2, v4

    iput v2, v1, Laoc/kingdoms/lukasz/map/plague/ProvincePlague;->turnsLeft:F

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->lProvinces_Active:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/province/Province;->provincePlague:Laoc/kingdoms/lukasz/map/plague/ProvincePlague;

    iget v1, v1, Laoc/kingdoms/lukasz/map/plague/ProvincePlague;->turnsLeft:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_2

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->lProvinces_Active:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData10(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData10;

    move-result-object v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    iput v2, v1, Laoc/kingdoms/lukasz/map/province/data/ProvinceData10;->t:I

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->lProvinces_Active:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    const/4 v2, 0x0

    iput-object v2, v1, Laoc/kingdoms/lukasz/map/province/Province;->provincePlague:Laoc/kingdoms/lukasz/map/plague/ProvincePlague;

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->lProvinces_Active:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    :cond_3
    iget v0, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->fDeathRate:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->plagues:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Plagues;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Plagues;->DISEASE_DEATH_RATE_CHANGE_PER_DAY:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->plagues:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Plagues;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Plagues;->DISEASE_DEATH_RATE_CHANGE_PER_DAY_RANDOM:I

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    const v3, 0x461c4000    # 10000.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->fDeathRate:F

    return-void
.end method

.method protected final setPlagueID_InGame(I)V
    .locals 0

    iput p1, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->iPlagueID_InGame:I

    return-void
.end method

.method protected final spreadDisease()V
    .locals 4

    iget v0, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->iDurationTurnsLeft:I

    if-lez v0, :cond_1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->lProvinces_Active:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->lProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const v1, 0x3eb33333    # 0.35f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->EXPANSION_SCORE:F

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->lProvinces_Active:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3ed9999a    # 0.425f

    mul-float/2addr v1, v2

    iget v2, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->EXPANSION_MODIFIER:F

    mul-float/2addr v1, v2

    const v2, 0x3f666666    # 0.9f

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/plague/Plague;->getDurationPercLEFT()F

    move-result v3

    mul-float/2addr v3, v2

    const v2, 0x3dcccccd    # 0.1f

    add-float/2addr v3, v2

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->EXPANSION_SCORE:F

    iget v0, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->EXPANSION_MODIFIER:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    const/16 v2, 0x45ba

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x47c35000    # 100000.0f

    div-float/2addr v1, v2

    const v2, 0x3f6ccccd    # 0.925f

    sub-float/2addr v2, v1

    mul-float/2addr v0, v2

    iput v0, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->EXPANSION_MODIFIER:F

    iget v0, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->EXPANSION_SCORE:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    iget v1, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->EXPANSION_SCORE:F

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    if-lez v0, :cond_1

    iget v1, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->EXPANSION_SCORE:F

    int-to-float v2, v0

    sub-float/2addr v1, v2

    iput v1, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->EXPANSION_SCORE:F

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/plague/Plague;->spreadDisease(I)V

    :cond_1
    return-void
.end method

.method protected final spreadDisease(I)V
    .locals 8

    int-to-float p1, p1

    :try_start_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3c6978d5    # 0.01425f

    mul-float/2addr v0, v1

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    float-to-int p1, p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget-object v4, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->lProvinces_Active:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_7

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->lProvinces_Active:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v2

    :goto_1
    iget-object v5, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->lProvinces_Active:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v5

    if-ge v4, v5, :cond_6

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->lProvinces_Active:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/province/Province;->provincePlague:Laoc/kingdoms/lukasz/map/plague/ProvincePlague;

    if-nez v5, :cond_0

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->lProvinces_Active:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData10(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData10;

    move-result-object v6

    iget v6, v6, Laoc/kingdoms/lukasz/map/province/data/ProvinceData10;->t:I

    sub-int/2addr v5, v6

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/GameValues;->plagues:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Plagues;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Plagues;->PLAGUE_PAUSE_FOR_X_DAYS:I

    if-le v5, v6, :cond_0

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->lProvinces_Active:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_2
    iget-object v5, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->lProvinces_Active:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v5

    if-ge v4, v5, :cond_3

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->lProvinces_Active:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getWasteland()I

    move-result v5

    if-gez v5, :cond_2

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->lProvinces_Active:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/province/Province;->provincePlague:Laoc/kingdoms/lukasz/map/plague/ProvincePlague;

    if-nez v5, :cond_2

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->lProvinces_Active:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData10(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData10;

    move-result-object v6

    iget v6, v6, Laoc/kingdoms/lukasz/map/province/data/ProvinceData10;->t:I

    sub-int/2addr v5, v6

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/GameValues;->plagues:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Plagues;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Plagues;->PLAGUE_PAUSE_FOR_X_DAYS:I

    if-le v5, v6, :cond_2

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->lProvinces_Active:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    :cond_3
    iget-object v4, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->lProvinces_Active:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getLevelOfPort()I

    move-result v4

    if-gtz v4, :cond_4

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->lProvinces_Active:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_6

    :cond_4
    move v4, v2

    :goto_3
    iget-object v5, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->lProvinces_Active:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvincesSize()I

    move-result v5

    if-ge v4, v5, :cond_6

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->lProvinces_Active:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvinces(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getWasteland()I

    move-result v5

    if-gez v5, :cond_5

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->lProvinces_Active:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvinces(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/province/Province;->provincePlague:Laoc/kingdoms/lukasz/map/plague/ProvincePlague;

    if-nez v5, :cond_5

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->lProvinces_Active:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvinces(I)I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData10(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData10;

    move-result-object v6

    iget v6, v6, Laoc/kingdoms/lukasz/map/province/data/ProvinceData10;->t:I

    sub-int/2addr v5, v6

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/GameValues;->plagues:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Plagues;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Plagues;->PLAGUE_PAUSE_FOR_X_DAYS:I

    if-le v5, v6, :cond_5

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->lProvinces_Active:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvinces(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_c

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move v4, v2

    :goto_4
    if-ltz v3, :cond_8

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, v5}, Laoc/kingdoms/lukasz/map/plague/Plague;->getSpreadScore(I)I

    move-result v5

    mul-int/lit8 v5, v5, 0x3

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    :cond_8
    if-lez v4, :cond_c

    :cond_9
    :goto_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_b

    if-lez p1, :cond_b

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    move v5, v2

    move v6, v5

    :goto_6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_9

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/2addr v6, v7

    if-le v6, v3, :cond_a

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Laoc/kingdoms/lukasz/map/plague/Plague;->addProvince(I)V

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int/2addr v4, v3

    invoke-interface {v1, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-interface {v0, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 p1, p1, -0x1

    goto :goto_5

    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_b
    if-lez p1, :cond_c

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/plague/Plague;->spreadDisease(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_c
    :goto_7
    return-void
.end method
