.class public Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop_Diplomacy;
.super Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;
.source "TextTop_Diplomacy.java"


# instance fields
.field public lastValuePerMonth:F


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;II)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;-><init>(ILjava/lang/String;Ljava/lang/String;II)V

    const p1, -0x368c6e9b

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop_Diplomacy;->lastValuePerMonth:F

    return-void
.end method


# virtual methods
.method public getIsActiveButton()Z
    .locals 1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Civ()Z

    move-result v0

    return v0
.end method

.method public getTextToDraw()Ljava/lang/String;
    .locals 8

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop_Diplomacy;->lastValue:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fDiplomacy:F

    cmpl-float v0, v0, v1

    const/high16 v1, 0x41200000    # 10.0f

    const/4 v2, 0x1

    const-string v3, ""

    const/high16 v4, 0x42c80000    # 100.0f

    const/16 v5, 0xa

    if-eqz v0, :cond_2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fDiplomacy:F

    const v6, 0x461c4000    # 10000.0f

    cmpl-float v0, v0, v6

    if-ltz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    iget v6, v6, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fDiplomacy:F

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v6, v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/CFG;->getShortNumber(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop_Diplomacy;->setText(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fDiplomacy:F

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    iget v6, v6, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fDiplomacy:F

    cmpg-float v6, v6, v4

    if-gez v6, :cond_1

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    iget v6, v6, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fDiplomacy:F

    move v6, v5

    goto :goto_0

    :cond_1
    move v6, v2

    :goto_0
    invoke-static {v0, v6}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop_Diplomacy;->setText(Ljava/lang/String;)V

    :goto_1
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fDiplomacy:F

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop_Diplomacy;->lastValue:F

    :cond_2
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop_Diplomacy;->lastValuePerMonth:F

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getDiplomacyPerMonth()F

    move-result v6

    cmpl-float v0, v0, v6

    if-eqz v0, :cond_6

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getDiplomacyPerMonth()F

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop_Diplomacy;->lastValuePerMonth:F

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop_Diplomacy;->lastValuePerMonth:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_3

    const-string v3, "+"

    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop_Diplomacy;->lastValuePerMonth:F

    cmpg-float v4, v3, v4

    if-gez v4, :cond_5

    cmpg-float v1, v3, v1

    if-gez v1, :cond_4

    const/16 v2, 0x64

    goto :goto_2

    :cond_4
    move v2, v5

    :cond_5
    :goto_2
    invoke-static {v3, v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop_Diplomacy;->setText2(Ljava/lang/String;)V

    :cond_6
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->getTextToDraw()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
