.class public Laoc/kingdoms/lukasz/menusScenarioEditor/Wasteland/ScenarioWasteland;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "ScenarioWasteland.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/menusScenarioEditor/Wasteland/ScenarioWasteland$Undo;
    }
.end annotation


# static fields
.field public static bSetWasteland_AvailableProvinces:Z = true

.field public static lUndo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/menusScenarioEditor/Wasteland/ScenarioWasteland$Undo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/menusScenarioEditor/Wasteland/ScenarioWasteland;->lUndo:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 11

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Laoc/kingdoms/lukasz/menusScenarioEditor/Wasteland/ScenarioWasteland$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Laoc/kingdoms/lukasz/menusScenarioEditor/Wasteland/ScenarioWasteland$1;-><init>(Laoc/kingdoms/lukasz/menusScenarioEditor/Wasteland/ScenarioWasteland;II)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Laoc/kingdoms/lukasz/menusScenarioEditor/Wasteland/ScenarioWasteland$2;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "CustomizeWasteland"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x3

    add-int/2addr v3, v4

    invoke-direct {v0, p0, v1, v2, v3}, Laoc/kingdoms/lukasz/menusScenarioEditor/Wasteland/ScenarioWasteland$2;-><init>(Laoc/kingdoms/lukasz/menusScenarioEditor/Wasteland/ScenarioWasteland;Ljava/lang/String;II)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v10, Laoc/kingdoms/lukasz/menusScenarioEditor/Wasteland/ScenarioWasteland$3;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, -0x1

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v7, v0, 0x2

    const/4 v8, 0x1

    move-object v0, v10

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusScenarioEditor/Wasteland/ScenarioWasteland$3;-><init>(Laoc/kingdoms/lukasz/menusScenarioEditor/Wasteland/ScenarioWasteland;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v10, Laoc/kingdoms/lukasz/menusScenarioEditor/Wasteland/ScenarioWasteland$4;

    const-string v2, ""

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v1, v1, 0x2

    add-int v5, v0, v1

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    move-object v0, v10

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusScenarioEditor/Wasteland/ScenarioWasteland$4;-><init>(Laoc/kingdoms/lukasz/menusScenarioEditor/Wasteland/ScenarioWasteland;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v10, Laoc/kingdoms/lukasz/menusScenarioEditor/Wasteland/ScenarioWasteland$5;

    const/4 v2, 0x0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v5, v0, v1

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v7, v0, 0x2

    move-object v0, v10

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusScenarioEditor/Wasteland/ScenarioWasteland$5;-><init>(Laoc/kingdoms/lukasz/menusScenarioEditor/Wasteland/ScenarioWasteland;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    const/4 v7, 0x1

    move-object v0, p0

    move-object v6, v9

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/menusScenarioEditor/Wasteland/ScenarioWasteland;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;Z)V

    return-void
.end method

.method public static actionUpdateData(Z)V
    .locals 2

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    if-ltz v0, :cond_4

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v0

    if-nez v0, :cond_4

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/map/province/Province;->isCapital:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Laoc/kingdoms/lukasz/menusScenarioEditor/Wasteland/ScenarioWasteland;->bSetWasteland_AvailableProvinces:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p0, :cond_1

    sget p0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/Wasteland/ScenarioWasteland;->addUndo(I)V

    :cond_1
    sget-boolean p0, Laoc/kingdoms/lukasz/menusScenarioEditor/Wasteland/ScenarioWasteland;->bSetWasteland_AvailableProvinces:Z

    if-eqz p0, :cond_2

    sget p0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result p0

    if-lez p0, :cond_2

    sget p0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result p0

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->removeProvince(I)V

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->setCivID_Just(I)V

    invoke-static {p0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->buildCivilizationsRegion(I)V

    :cond_2
    sget p0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p0

    sget-boolean v0, Laoc/kingdoms/lukasz/menusScenarioEditor/Wasteland/ScenarioWasteland;->bSetWasteland_AvailableProvinces:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->setWasteland(I)V

    sput-boolean v1, Laoc/kingdoms/lukasz/jakowski/Game;->updateProvincesInView:Z

    sput-boolean v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->updateRegionsInView:Z

    :cond_4
    return-void
.end method

.method private static final addUndo(I)V
    .locals 3

    if-gez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getWasteland()I

    move-result v0

    const/4 v1, 0x0

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    sget-boolean v2, Laoc/kingdoms/lukasz/menusScenarioEditor/Wasteland/ScenarioWasteland;->bSetWasteland_AvailableProvinces:Z

    if-eq v0, v2, :cond_3

    sget-object v0, Laoc/kingdoms/lukasz/menusScenarioEditor/Wasteland/ScenarioWasteland;->lUndo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v2, 0x32

    if-le v0, v2, :cond_2

    sget-object v0, Laoc/kingdoms/lukasz/menusScenarioEditor/Wasteland/ScenarioWasteland;->lUndo:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_2
    sget-object v0, Laoc/kingdoms/lukasz/menusScenarioEditor/Wasteland/ScenarioWasteland;->lUndo:Ljava/util/List;

    new-instance v1, Laoc/kingdoms/lukasz/menusScenarioEditor/Wasteland/ScenarioWasteland$Undo;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getWasteland()I

    move-result v2

    invoke-direct {v1, p0, v2}, Laoc/kingdoms/lukasz/menusScenarioEditor/Wasteland/ScenarioWasteland$Undo;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method protected static popUndo()V
    .locals 3

    sget-object v0, Laoc/kingdoms/lukasz/menusScenarioEditor/Wasteland/ScenarioWasteland;->lUndo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    sget-object v0, Laoc/kingdoms/lukasz/menusScenarioEditor/Wasteland/ScenarioWasteland;->lUndo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menusScenarioEditor/Wasteland/ScenarioWasteland$Undo;

    iget v0, v0, Laoc/kingdoms/lukasz/menusScenarioEditor/Wasteland/ScenarioWasteland$Undo;->iProvinceID:I

    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    sget-object v0, Laoc/kingdoms/lukasz/menusScenarioEditor/Wasteland/ScenarioWasteland;->lUndo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menusScenarioEditor/Wasteland/ScenarioWasteland$Undo;

    iget v0, v0, Laoc/kingdoms/lukasz/menusScenarioEditor/Wasteland/ScenarioWasteland$Undo;->iState:I

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    sput-boolean v0, Laoc/kingdoms/lukasz/menusScenarioEditor/Wasteland/ScenarioWasteland;->bSetWasteland_AvailableProvinces:Z

    invoke-static {v1}, Laoc/kingdoms/lukasz/menusScenarioEditor/Wasteland/ScenarioWasteland;->actionUpdateData(Z)V

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getDrawProvince()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->centerToProvinceID(I)V

    :cond_1
    sget-object v0, Laoc/kingdoms/lukasz/menusScenarioEditor/Wasteland/ScenarioWasteland;->lUndo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_2
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .locals 9

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxBIG:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v0, v0, 0x3

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x3

    add-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int v5, v0, v2

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int v6, v0, v2

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxBIG:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int/2addr v0, v2

    add-int v3, v0, p2

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v0, v0, 0x2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int v5, v0, v2

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int v6, v0, v2

    const/4 v7, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    invoke-super/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    return-void
.end method
