.class Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioArmies_List$2;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonUnit_02;
.source "ScenarioArmies_List.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioArmies_List;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioArmies_List;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioArmies_List;IIIIIZ)V
    .locals 7

    iput-object p1, p0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioArmies_List$2;->this$0:Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioArmies_List;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Laoc/kingdoms/lukasz/menu_element/button/ButtonUnit_02;-><init>(IIIIIZ)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .locals 7

    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/AA_KeyManager;->CTRL_HOLD:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/AA_KeyManager;->SHIFT_HOLD:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioArmies_List$2;->getValue1()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioArmies_List$2;->getValue2()I

    move-result v3

    invoke-direct {v1, v2, v3}, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    new-instance v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-direct {v2, v3, v4, v0}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;-><init>(IILjava/util/List;)V

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/province/Province;->addArmy(Laoc/kingdoms/lukasz/map/army/ArmyDivision;)Ljava/lang/String;

    goto/16 :goto_3

    :cond_1
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v0

    new-instance v1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioArmies_List$2;->getValue1()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioArmies_List$2;->getValue2()I

    move-result v3

    invoke-direct {v1, v2, v3}, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;-><init>(II)V

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->addRegiment(Laoc/kingdoms/lukasz/map/army/ArmyRegiment;)V

    goto :goto_3

    :cond_2
    :goto_0
    move v0, v1

    :goto_1
    const/4 v2, 0x5

    if-ge v0, v2, :cond_4

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioArmies_List$2;->getValue1()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioArmies_List$2;->getValue2()I

    move-result v5

    invoke-direct {v3, v4, v5}, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    new-instance v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-direct {v4, v5, v6, v2}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;-><init>(IILjava/util/List;)V

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/province/Province;->addArmy(Laoc/kingdoms/lukasz/map/army/ArmyDivision;)Ljava/lang/String;

    goto :goto_2

    :cond_3
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    new-instance v3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioArmies_List$2;->getValue1()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioArmies_List$2;->getValue2()I

    move-result v5

    invoke-direct {v3, v4, v5}, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;-><init>(II)V

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->addRegiment(Laoc/kingdoms/lukasz/map/army/ArmyRegiment;)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    :goto_3
    sget-object v0, Laoc/kingdoms/lukasz/menusScenarioEditor/Diplomacy/ScenarioDiplomacy;->goBackTo:Laoc/kingdoms/lukasz/menu/View;

    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->IN_GAME:Laoc/kingdoms/lukasz/menu/View;

    if-ne v0, v1, :cond_5

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    if-lez v0, :cond_5

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateArmyMaintenance(I)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateTotalIncomePerMonth(I)V

    :cond_5
    return-void
.end method

.method public actionElementPPM()V
    .locals 5

    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/AA_KeyManager;->CTRL_HOLD:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/AA_KeyManager;->SHIFT_HOLD:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v0

    if-lez v0, :cond_3

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioArmies_List$2;->getValue1()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioArmies_List$2;->getValue2()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->removeRegiment_ScenarioEditor(II)V

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    if-nez v0, :cond_3

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->removeArmy(I)V

    goto :goto_2

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    const/4 v2, 0x5

    if-ge v0, v2, :cond_3

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v2

    if-lez v2, :cond_2

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioArmies_List$2;->getValue1()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioArmies_List$2;->getValue2()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->removeRegiment_ScenarioEditor(II)V

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    if-nez v2, :cond_2

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/province/Province;->removeArmy(I)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    sget-object v0, Laoc/kingdoms/lukasz/menusScenarioEditor/Diplomacy/ScenarioDiplomacy;->goBackTo:Laoc/kingdoms/lukasz/menu/View;

    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->IN_GAME:Laoc/kingdoms/lukasz/menu/View;

    if-ne v0, v1, :cond_4

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    if-lez v0, :cond_4

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateArmyMaintenance(I)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateTotalIncomePerMonth(I)V

    :cond_4
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .locals 10

    const-string v8, ""

    invoke-super/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu_element/button/ButtonUnit_02;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V

    :try_start_0
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_2

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    add-int/lit8 v1, v1, -0x1

    move v3, v2

    :goto_0
    if-ltz v1, :cond_1

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioArmies_List$2;->getValue1()I

    move-result v5

    if-ne v4, v5, :cond_0

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioArmies_List$2;->getValue2()I

    move-result v5

    if-ne v4, v5, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    move v9, v3

    goto :goto_1

    :cond_2
    move v9, v2

    :goto_1
    if-lez v9, :cond_3

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int v1, v1

    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v5, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->b:F

    const/high16 v6, 0x3f400000    # 0.75f

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->statsRectBG:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioArmies_List$2;->getPosX()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    add-int/2addr v3, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioArmies_List$2;->getPosY()I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v5

    add-int/2addr v4, p3

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x4

    add-int/2addr v5, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v1

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/textures/Image;IIIIF)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioArmies_List$2;->getPosX()I

    move-result v1

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x3

    add-int/2addr v1, v4

    add-int v4, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioArmies_List$2;->getPosY()I

    move-result v1

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v1, v5

    add-int v5, v1, p3

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    return-void
.end method
