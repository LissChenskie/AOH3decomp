.class public Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;
.super Laoc/kingdoms/lukasz/menu_element/button/Button;
.source "ButtonTechnology.java"


# static fields
.field public static techIconHeight:I

.field public static techIconWidth:I


# instance fields
.field public advantages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public btnIMG:I

.field public iCivID:I

.field public iCostHeight:I

.field public iCostWidth:I

.field public iImageID:I

.field public iQueueHeight:I

.field public iQueueWidth:I

.field public iTechnologyID:I

.field public ideologies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public inTechTree:Z

.field public sCost:Ljava/lang/String;

.field public sQueue:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIIIZI)V
    .locals 1

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->sQueue:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->ideologies:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->advantages:Ljava/util/List;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iCivID:I

    invoke-virtual/range {p0 .. p6}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->init(IIIIZI)V

    return-void
.end method

.method public constructor <init>(IIIIZII)V
    .locals 1

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->sQueue:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->ideologies:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->advantages:Ljava/util/List;

    iput p7, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iCivID:I

    invoke-virtual/range {p0 .. p6}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->init(IIIIZI)V

    return-void
.end method

.method private final getImageScale(I)F
    .locals 1

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v0, v0

    invoke-static {p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v0, p1

    return v0
.end method


# virtual methods
.method public actionElement()V
    .locals 6

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->btnIMG:I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->techAvailable:I

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v0, v1, :cond_2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->techQueue:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerTechQueue;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerTechQueue;->lTechQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iTechnologyID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setActiveTechResearch(I)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_TechnologyTree()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, v5, v4}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_TechnologyTree(ZZ)V

    sput-wide v2, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->lTime:J

    :cond_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_TechnologyChoose()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyChoose;->IN_TECHNOLOGY_CHOOSE:Z

    if-eqz v0, :cond_1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, v5, v4}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_TechnologyChoose(ZZ)V

    sput-wide v2, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyChoose;->lTime:J

    :cond_1
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->currSituation:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->updateCurrentSituation()V

    goto/16 :goto_0

    :cond_2
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->btnIMG:I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->techBlue:I

    if-ne v0, v1, :cond_4

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->techQueue:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerTechQueue;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerTechQueue;->lTechQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_TechnologyTree()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, v5, v4}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_TechnologyTree(ZZ)V

    sput-wide v2, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->lTime:J

    :cond_3
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_TechnologyChoose()Z

    move-result v0

    if-eqz v0, :cond_8

    sget-boolean v0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyChoose;->IN_TECHNOLOGY_CHOOSE:Z

    if-eqz v0, :cond_8

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, v5, v4}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_TechnologyChoose(ZZ)V

    sput-wide v2, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyChoose;->lTime:J

    goto :goto_0

    :cond_4
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->btnIMG:I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->techGray:I

    if-ne v0, v1, :cond_8

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->techQueue:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerTechQueue;

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iTechnologyID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerTechQueue;->buildTechQueue(I)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->techQueue:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerTechQueue;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerTechQueue;->getTechQueue()I

    move-result v0

    if-ltz v0, :cond_5

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setActiveTechResearch(I)V

    :cond_5
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_TechnologyTree()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, v5, v4}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_TechnologyTree(ZZ)V

    sput-wide v2, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->lTime:J

    :cond_6
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_TechnologyChoose()Z

    move-result v0

    if-eqz v0, :cond_7

    sget-boolean v0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyChoose;->IN_TECHNOLOGY_CHOOSE:Z

    if-eqz v0, :cond_7

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, v5, v4}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_TechnologyChoose(ZZ)V

    sput-wide v2, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyChoose;->lTime:J

    :cond_7
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->currSituation:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->updateCurrentSituation()V

    :cond_8
    :goto_0
    return-void
.end method

.method public buildElementHover()V
    .locals 15

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Title;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_TECHNOLOGY:I

    const-string v4, ""

    sget-object v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    iget v5, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iTechnologyID:I

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget-object v5, v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->Name:Ljava/lang/String;

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "Unlocks"

    invoke-virtual {v2, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    sget-object v9, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Title;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;Ljava/lang/String;Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    sget-object v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iTechnologyID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v2, v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->RequiredTech:I

    const-string v3, "RequiredTechnology"

    const/4 v4, 0x1

    const-string v5, ": "

    const/4 v6, 0x0

    if-ltz v2, :cond_0

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    sget-object v7, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    iget v8, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iTechnologyID:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v7, v7, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->RequiredTech:I

    invoke-virtual {v2, v7}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getTechResearched(I)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v8, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v2, v7, v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    sget-object v7, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    sget-object v8, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    iget v9, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iTechnologyID:I

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v8, v8, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->RequiredTech:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->Name:Ljava/lang/String;

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v9, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v7, v8, v9}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    sget v7, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_TECHNOLOGY:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    invoke-direct {v2, v7, v8, v6}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v6

    :goto_0
    sget-object v7, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    iget v8, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iTechnologyID:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v7, v7, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->RequiredTech2:I

    if-ltz v7, :cond_1

    iget v7, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iCivID:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    sget-object v8, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    iget v9, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iTechnologyID:I

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v8, v8, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->RequiredTech2:I

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getTechResearched(I)Z

    move-result v7

    if-nez v7, :cond_1

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v8, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v2, v3, v7}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    sget-object v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    sget-object v7, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    iget v8, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iTechnologyID:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v7, v7, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->RequiredTech2:I

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->Name:Ljava/lang/String;

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v8, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v3, v7, v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_TECHNOLOGY:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    invoke-direct {v2, v3, v7, v6}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    if-eqz v4, :cond_2

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Line;

    invoke-direct {v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Line;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_2
    sget-object v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iTechnologyID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->UnlocksNukes:Z

    if-eqz v2, :cond_3

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "NuclearWeapons"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->nuke:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v2, v3, v4, v7}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_3
    sget-object v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iTechnologyID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->UnlocksAccessToTheSea:Z

    if-eqz v2, :cond_4

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "AllowsYourArmyGoToTheSea"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->ship:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v2, v3, v4, v7}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_4
    sget-object v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iTechnologyID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->UnlocksColonization:Z

    if-eqz v2, :cond_5

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "Colonization"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->population:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v2, v3, v4, v7}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_5
    move v2, v6

    :goto_2
    sget v3, Laoc/kingdoms/lukasz/map/LawsManager;->iLawsSize:I

    if-ge v2, v3, :cond_8

    move v3, v6

    :goto_3
    sget-object v4, Laoc/kingdoms/lukasz/map/LawsManager;->laws:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/LawsManager$Law;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/LawsManager$Law;->RequiredTechID:[I

    array-length v4, v4

    if-ge v3, v4, :cond_7

    sget-object v4, Laoc/kingdoms/lukasz/map/LawsManager;->laws:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/LawsManager$Law;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/LawsManager$Law;->RequiredTechID:[I

    aget v4, v4, v3

    iget v7, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iTechnologyID:I

    if-ne v4, v7, :cond_6

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    sget-object v8, Laoc/kingdoms/lukasz/map/LawsManager;->laws:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/LawsManager$Law;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/LawsManager$Law;->Law:[Ljava/lang/String;

    aget-object v8, v8, v3

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->law:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v4, v7, v8, v9}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v4, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_8
    sget-object v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechUnlocksBuildings:Ljava/util/List;

    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iTechnologyID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_9

    move v2, v6

    :goto_4
    sget-object v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechUnlocksBuildings:Ljava/util/List;

    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iTechnologyID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_9

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button;

    sget-object v4, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    sget-object v7, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechUnlocksBuildings:Ljava/util/List;

    iget v8, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iTechnologyID:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Building;

    iget v7, v7, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Building;->building:I

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->Name:[Ljava/lang/String;

    sget-object v7, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechUnlocksBuildings:Ljava/util/List;

    iget v8, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iTechnologyID:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Building;

    iget v7, v7, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Building;->buildingID:I

    aget-object v4, v4, v7

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->build:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v3, v4, v7, v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_9
    move v2, v6

    :goto_5
    sget v3, Laoc/kingdoms/lukasz/map/army/ArmyManager;->iUnitsTypesSize:I

    const-string v4, ""

    if-ge v2, v3, :cond_c

    move v3, v6

    :goto_6
    sget-object v7, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmySize:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ge v3, v7, :cond_b

    sget-object v7, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget v7, v7, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->RequiredTechID:I

    iget v8, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iTechnologyID:I

    if-ne v7, v8, :cond_a

    new-instance v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_Unit;

    sget-object v8, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget-object v10, v8, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->Name:Ljava/lang/String;

    sget v11, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER:I

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v9, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget v13, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iCivID:I

    invoke-virtual {v9, v13}, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->getAttack(I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v9, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget v14, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iCivID:I

    invoke-virtual {v9, v14}, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->getDefense(I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object v9, v7

    invoke-direct/range {v9 .. v14}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_Unit;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v7, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_6

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_5

    :cond_c
    sget-object v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iTechnologyID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v2, v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->BattleWidth:I

    const-string v3, "+"

    if-eqz v2, :cond_e

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v9, "BattleWidth"

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    iget v10, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iTechnologyID:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v9, v9, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->BattleWidth:I

    if-lez v9, :cond_d

    move-object v9, v3

    goto :goto_7

    :cond_d
    move-object v9, v4

    :goto_7
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v9, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    iget v10, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iTechnologyID:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v9, v9, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->BattleWidth:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->battleWidth:I

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_e
    sget-object v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    iget v7, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iTechnologyID:I

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v2, v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->UnitsAttack:I

    if-eqz v2, :cond_10

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v9, "UnitsAttack"

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    iget v10, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iTechnologyID:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v9, v9, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->UnitsAttack:I

    if-lez v9, :cond_f

    move-object v9, v3

    goto :goto_8

    :cond_f
    move-object v9, v4

    :goto_8
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v9, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    iget v10, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iTechnologyID:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v9, v9, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->UnitsAttack:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->attack:I

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_10
    sget-object v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    iget v7, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iTechnologyID:I

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v2, v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->UnitsDefense:I

    if-eqz v2, :cond_12

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v9, "UnitsDefense"

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    iget v10, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iTechnologyID:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v9, v9, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->UnitsDefense:I

    if-lez v9, :cond_11

    move-object v9, v3

    goto :goto_9

    :cond_11
    move-object v9, v4

    :goto_9
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v9, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    iget v10, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iTechnologyID:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v9, v9, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->UnitsDefense:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->defense:I

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_12
    sget-object v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    iget v7, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iTechnologyID:I

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v2, v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->GeneralAttack:I

    if-eqz v2, :cond_14

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v9, "GeneralsAttack"

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    iget v10, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iTechnologyID:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v9, v9, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->GeneralAttack:I

    if-lez v9, :cond_13

    move-object v9, v3

    goto :goto_a

    :cond_13
    move-object v9, v4

    :goto_a
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v9, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    iget v10, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iTechnologyID:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v9, v9, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->GeneralAttack:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->attack:I

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_14
    sget-object v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    iget v7, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iTechnologyID:I

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v2, v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->GeneralDefense:I

    if-eqz v2, :cond_16

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v9, "GeneralsDefense"

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    iget v10, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iTechnologyID:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v9, v9, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->GeneralDefense:I

    if-lez v9, :cond_15

    move-object v9, v3

    goto :goto_b

    :cond_15
    move-object v9, v4

    :goto_b
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v9, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    iget v10, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iTechnologyID:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v9, v9, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->GeneralDefense:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->defense:I

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_16
    sget-object v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    iget v7, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iTechnologyID:I

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v2, v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->MaxMorale:I

    if-eqz v2, :cond_18

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v9, "MaxMorale"

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    iget v10, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iTechnologyID:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v9, v9, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->MaxMorale:I

    if-lez v9, :cond_17

    move-object v9, v3

    goto :goto_c

    :cond_17
    move-object v9, v4

    :goto_c
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v9, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    iget v10, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iTechnologyID:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v9, v9, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->MaxMorale:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->morale:I

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_18
    sget-object v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    iget v7, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iTechnologyID:I

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v2, v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->Discipline:I

    if-eqz v2, :cond_1a

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v9, "Discipline"

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    iget v10, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iTechnologyID:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v9, v9, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->Discipline:I

    if-lez v9, :cond_19

    move-object v9, v3

    goto :goto_d

    :cond_19
    move-object v9, v4

    :goto_d
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v9, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    iget v10, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iTechnologyID:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v9, v9, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->Discipline:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->discipline:I

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_1a
    sget-object v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    iget v7, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iTechnologyID:I

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v2, v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->MaximumLevelOfCapitalCity:I

    if-eqz v2, :cond_1c

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v9, "MaximumLevelOfCapitalCity"

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    iget v10, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iTechnologyID:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v9, v9, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->MaximumLevelOfCapitalCity:I

    if-lez v9, :cond_1b

    move-object v9, v3

    goto :goto_e

    :cond_1b
    move-object v9, v4

    :goto_e
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v9, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    iget v10, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iTechnologyID:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v9, v9, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->MaximumLevelOfCapitalCity:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->capital:I

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_1c
    sget-object v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    iget v7, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iTechnologyID:I

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v2, v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->MaximumLevelOfTheMilitaryAcademy:I

    if-eqz v2, :cond_1e

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v9, "MaximumLevelOfTheMilitaryAcademy"

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    iget v10, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iTechnologyID:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v9, v9, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->MaximumLevelOfTheMilitaryAcademy:I

    if-lez v9, :cond_1d

    move-object v9, v3

    goto :goto_f

    :cond_1d
    move-object v9, v4

    :goto_f
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v9, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    iget v10, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iTechnologyID:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v9, v9, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->MaximumLevelOfTheMilitaryAcademy:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER:I

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_1e
    sget-object v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    iget v7, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iTechnologyID:I

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v2, v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->MaximumLevelOfTheMilitaryAcademyForGenerals:I

    if-eqz v2, :cond_20

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v9, "MaximumLevelOfTheMilitaryAcademyForGenerals"

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    iget v10, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iTechnologyID:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v9, v9, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->MaximumLevelOfTheMilitaryAcademyForGenerals:I

    if-lez v9, :cond_1f

    move-object v9, v3

    goto :goto_10

    :cond_1f
    move-object v9, v4

    :goto_10
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v9, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    iget v10, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iTechnologyID:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v9, v9, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->MaximumLevelOfTheMilitaryAcademyForGenerals:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->general:I

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_20
    sget-object v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    iget v7, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iTechnologyID:I

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v2, v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->Legacy:I

    if-eqz v2, :cond_22

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const/4 v9, 0x0

    sget-object v9, Lcom/badlogic/gdx/graphics/g3d/model/ia/uNBYrZVGzy;->zWdHa:Ljava/lang/String;

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    iget v10, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iTechnologyID:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v9, v9, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->Legacy:I

    if-lez v9, :cond_21

    move-object v9, v3

    goto :goto_11

    :cond_21
    move-object v9, v4

    :goto_11
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v9, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    iget v10, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iTechnologyID:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v9, v9, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->Legacy:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->legacy:I

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_22
    sget-object v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    iget v7, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iTechnologyID:I

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v2, v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->Gold:I

    if-eqz v2, :cond_24

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v9, "Gold"

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    iget v10, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iTechnologyID:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v9, v9, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->Gold:I

    if-lez v9, :cond_23

    goto :goto_12

    :cond_23
    move-object v3, v4

    :goto_12
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v7, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    iget v9, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iTechnologyID:I

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v7, v7, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->Gold:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_24
    move v2, v6

    :goto_13
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getIdeologiesSize()I

    move-result v3

    if-ge v2, v3, :cond_26

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getIdeology(I)Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;->REQUIRED_TECHNOLOGY:I

    iget v7, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iTechnologyID:I

    if-ne v3, v7, :cond_25

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonusIdeology;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v9, "Government"

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    invoke-virtual {v7, v2}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getIdeology(I)Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;

    move-result-object v7

    iget-object v9, v7, Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;->Name:Ljava/lang/String;

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    move-object v7, v3

    move v10, v2

    invoke-direct/range {v7 .. v12}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonusIdeology;-><init>(Ljava/lang/String;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_26
    :goto_14
    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->advantages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v6, v2, :cond_27

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->advantages:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/map/AdvantagesManager;->getAdvantageName(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->advantages:I

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    add-int/lit8 v6, v6, 0x1

    goto :goto_14

    :cond_27
    sget-boolean v2, Laoc/kingdoms/lukasz/jakowski/CFG;->debugMode:Z

    if-eqz v2, :cond_28

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    const-string v6, "ID: "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iTechnologyID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget v8, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_TECHNOLOGY:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v10, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_28
    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iCivID:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v2, v3, :cond_29

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iTechnologyID:I

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getTechResearched(I)Z

    move-result v2

    if-nez v2, :cond_29

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Line;

    invoke-direct {v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Line;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "ClickToStartResearching"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v5, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v3, v4, v5}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_29
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    invoke-direct {v1, v0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    return-void
.end method

.method protected drawButtonBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 15

    move-object v0, p0

    move-object/from16 v9, p1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getIsHovered()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p4, :cond_1

    :cond_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosX()I

    move-result v1

    add-int v1, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosY()I

    move-result v2

    add-int v2, v2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getHeight()I

    move-result v4

    invoke-static {v9, v1, v2, v3, v4}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    :cond_1
    iget v1, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->btnIMG:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosX()I

    move-result v2

    add-int v2, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosY()I

    move-result v3

    add-int v3, v3, p3

    invoke-virtual {v1, v9, v2, v3}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    iget v1, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->btnIMG:I

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->techBlue:I

    const/4 v7, 0x0

    if-eq v1, v2, :cond_2

    iget v1, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->btnIMG:I

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->techAvailable:I

    if-ne v1, v2, :cond_3

    :cond_2
    iget v1, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget v2, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iTechnologyID:I

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getResearchProgress(I)F

    move-result v1

    cmpl-float v2, v1, v7

    if-lez v2, :cond_3

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->techResearched:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosX()I

    move-result v3

    add-int v3, v3, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosY()I

    move-result v4

    add-int v4, v4, p3

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->techResearched:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v1

    float-to-int v5, v5

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->techResearched:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    move-object v1, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    :cond_3
    sget-object v1, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->technologyImages:Ljava/util/List;

    iget v2, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iImageID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosX()I

    move-result v2

    add-int v2, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosY()I

    move-result v3

    add-int v3, v3, p3

    invoke-virtual {v1, v9, v2, v3}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getIsHovered()Z

    move-result v1

    const/high16 v10, 0x3f800000    # 1.0f

    if-eqz v1, :cond_4

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3d4ccccd    # 0.05f

    invoke-direct {v1, v10, v10, v10, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gradientFull2:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosX()I

    move-result v2

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosY()I

    move-result v2

    add-int v4, v2, p3

    iget v2, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->btnIMG:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v5

    iget v2, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->btnIMG:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosX()I

    move-result v2

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosY()I

    move-result v2

    add-int v4, v2, p3

    iget v2, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->btnIMG:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v5

    iget v2, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->btnIMG:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :cond_4
    iget v1, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->btnIMG:I

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->techResearched:I

    const v11, 0x3eb33333    # 0.35f

    const/high16 v12, 0x3e800000    # 0.25f

    const v13, 0x3f4ccccd    # 0.8f

    if-ne v1, v2, :cond_5

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->TECH_RESEARCHED:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->TECH_RESEARCHED:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->TECH_RESEARCHED:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v1, v2, v3, v4, v13}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->techCorner:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosX()I

    move-result v2

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosY()I

    move-result v2

    add-int v4, v2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getWidth()I

    move-result v2

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->techCorner:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v5

    sub-int v5, v2, v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->titleH()I

    move-result v6

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->techCorner:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->techCorner:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosY()I

    move-result v2

    add-int v4, v2, p3

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->techCorner:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->titleH()I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->TECH_RESEARCHED:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->TECH_RESEARCHED:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->TECH_RESEARCHED:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v1, v2, v3, v4, v12}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v1, v2, v3, v4, v11}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosX()I

    move-result v2

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosY()I

    move-result v2

    add-int v4, v2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->titleH()I

    move-result v6

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->TECH_RESEARCHED2:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->TECH_RESEARCHED2:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->TECH_RESEARCHED2:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v1, v2, v3, v4, v10}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosX()I

    move-result v2

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosY()I

    move-result v2

    add-int v4, v2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->titleH()I

    move-result v6

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->TECH_RESEARCHED3:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->TECH_RESEARCHED3:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->TECH_RESEARCHED3:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v1, v2, v3, v4, v13}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosX()I

    move-result v2

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->titleH()I

    move-result v4

    add-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getWidth()I

    move-result v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->TECH_RESEARCHED:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->TECH_RESEARCHED:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->TECH_RESEARCHED:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v1, v2, v3, v4, v10}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosX()I

    move-result v2

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->titleH()I

    move-result v4

    add-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getWidth()I

    move-result v5

    const/4 v6, 0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    goto/16 :goto_0

    :cond_5
    iget v1, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->btnIMG:I

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->techGray:I

    if-ne v1, v2, :cond_6

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->TECH_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->TECH_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->TECH_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v1, v2, v3, v4, v13}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->techCorner:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosX()I

    move-result v2

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosY()I

    move-result v2

    add-int v4, v2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getWidth()I

    move-result v2

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->techCorner:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v5

    sub-int v5, v2, v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->titleH()I

    move-result v6

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->techCorner:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->techCorner:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosY()I

    move-result v2

    add-int v4, v2, p3

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->techCorner:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->titleH()I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->TECH_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->TECH_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->TECH_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v1, v2, v3, v4, v12}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v1, v2, v3, v4, v11}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosX()I

    move-result v2

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosY()I

    move-result v2

    add-int v4, v2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->titleH()I

    move-result v6

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->TECH_GRAY2:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->TECH_GRAY2:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->TECH_GRAY2:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v1, v2, v3, v4, v10}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosX()I

    move-result v2

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosY()I

    move-result v2

    add-int v4, v2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->titleH()I

    move-result v6

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->TECH_GRAY3:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->TECH_GRAY3:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->TECH_GRAY3:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v1, v2, v3, v4, v13}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosX()I

    move-result v2

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->titleH()I

    move-result v4

    add-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getWidth()I

    move-result v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->TECH_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->TECH_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->TECH_GRAY:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v1, v2, v3, v4, v10}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosX()I

    move-result v2

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->titleH()I

    move-result v4

    add-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getWidth()I

    move-result v5

    const/4 v6, 0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    goto/16 :goto_0

    :cond_6
    iget v1, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->btnIMG:I

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->techBlue:I

    if-ne v1, v2, :cond_8

    iget v1, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget v2, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iTechnologyID:I

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getResearchProgress(I)F

    move-result v1

    cmpl-float v2, v1, v7

    if-ltz v2, :cond_7

    const v2, 0x3c23d70a    # 0.01f

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v14

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v14

    float-to-int v2, v2

    add-int/2addr v1, v2

    add-int v1, v1, p2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosY()I

    move-result v3

    add-int v3, v3, p3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v14

    sub-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getHeight()I

    move-result v4

    neg-int v4, v4

    invoke-static {v9, v1, v2, v3, v4}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->clipView_Start(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)Z

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->TECH_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->TECH_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->TECH_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v1, v2, v3, v4, v13}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->techCorner:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosX()I

    move-result v2

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosY()I

    move-result v2

    add-int v4, v2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getWidth()I

    move-result v2

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->techCorner:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v5

    sub-int v5, v2, v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->titleH()I

    move-result v6

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->techCorner:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->techCorner:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosY()I

    move-result v2

    add-int v4, v2, p3

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->techCorner:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->titleH()I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->TECH_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->TECH_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->TECH_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v1, v2, v3, v4, v12}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v1, v2, v3, v4, v11}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosX()I

    move-result v2

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosY()I

    move-result v2

    add-int v4, v2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->titleH()I

    move-result v6

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->TECH_BLUE2:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->TECH_BLUE2:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->TECH_BLUE2:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v1, v2, v3, v4, v10}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosX()I

    move-result v2

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosY()I

    move-result v2

    add-int v4, v2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->titleH()I

    move-result v6

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->TECH_BLUE3:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->TECH_BLUE3:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->TECH_BLUE3:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v1, v2, v3, v4, v13}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosX()I

    move-result v2

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->titleH()I

    move-result v4

    add-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getWidth()I

    move-result v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->TECH_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->TECH_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->TECH_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v1, v2, v3, v4, v10}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosX()I

    move-result v2

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->titleH()I

    move-result v4

    add-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getWidth()I

    move-result v5

    const/4 v6, 0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->clipView_End(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosX()I

    move-result v1

    add-int v1, v1, p2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosY()I

    move-result v3

    add-int v3, v3, p3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v14

    float-to-int v3, v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getHeight()I

    move-result v4

    neg-int v4, v4

    invoke-static {v9, v1, v2, v3, v4}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->clipView_Start(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)Z

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->TECH_RESEARCHED:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->TECH_RESEARCHED:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->TECH_RESEARCHED:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v1, v2, v3, v4, v13}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->techCorner:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosX()I

    move-result v2

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosY()I

    move-result v2

    add-int v4, v2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getWidth()I

    move-result v2

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->techCorner:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v5

    sub-int v5, v2, v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->titleH()I

    move-result v6

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->techCorner:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->techCorner:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosY()I

    move-result v2

    add-int v4, v2, p3

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->techCorner:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->titleH()I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->TECH_RESEARCHED:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->TECH_RESEARCHED:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->TECH_RESEARCHED:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v1, v2, v3, v4, v12}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v1, v2, v3, v4, v11}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosX()I

    move-result v2

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosY()I

    move-result v2

    add-int v4, v2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->titleH()I

    move-result v6

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->TECH_RESEARCHED2:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->TECH_RESEARCHED2:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->TECH_RESEARCHED2:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v1, v2, v3, v4, v10}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosX()I

    move-result v2

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosY()I

    move-result v2

    add-int v4, v2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->titleH()I

    move-result v6

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->TECH_RESEARCHED3:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->TECH_RESEARCHED3:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->TECH_RESEARCHED3:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v1, v2, v3, v4, v13}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosX()I

    move-result v2

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->titleH()I

    move-result v4

    add-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getWidth()I

    move-result v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->TECH_RESEARCHED:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->TECH_RESEARCHED:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->TECH_RESEARCHED:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v1, v2, v3, v4, v10}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosX()I

    move-result v2

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->titleH()I

    move-result v4

    add-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getWidth()I

    move-result v5

    const/4 v6, 0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->clipView_End(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    goto/16 :goto_0

    :cond_7
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->TECH_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->TECH_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->TECH_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v1, v2, v3, v4, v13}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->techCorner:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosX()I

    move-result v2

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosY()I

    move-result v2

    add-int v4, v2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getWidth()I

    move-result v2

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->techCorner:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v5

    sub-int v5, v2, v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->titleH()I

    move-result v6

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->techCorner:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->techCorner:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosY()I

    move-result v2

    add-int v4, v2, p3

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->techCorner:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->titleH()I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->TECH_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->TECH_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->TECH_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v1, v2, v3, v4, v12}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v1, v2, v3, v4, v11}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosX()I

    move-result v2

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosY()I

    move-result v2

    add-int v4, v2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->titleH()I

    move-result v6

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->TECH_BLUE2:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->TECH_BLUE2:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->TECH_BLUE2:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v1, v2, v3, v4, v10}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosX()I

    move-result v2

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosY()I

    move-result v2

    add-int v4, v2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->titleH()I

    move-result v6

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->TECH_BLUE3:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->TECH_BLUE3:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->TECH_BLUE3:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v1, v2, v3, v4, v13}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosX()I

    move-result v2

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->titleH()I

    move-result v4

    add-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getWidth()I

    move-result v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->TECH_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->TECH_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->TECH_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v1, v2, v3, v4, v10}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosX()I

    move-result v2

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->titleH()I

    move-result v4

    add-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getWidth()I

    move-result v5

    const/4 v6, 0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    goto/16 :goto_0

    :cond_8
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v1, v2, v3, v4, v13}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->techCorner:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosX()I

    move-result v2

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosY()I

    move-result v2

    add-int v4, v2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getWidth()I

    move-result v2

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->techCorner:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v5

    sub-int v5, v2, v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->titleH()I

    move-result v6

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->techCorner:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->techCorner:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosY()I

    move-result v2

    add-int v4, v2, p3

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->techCorner:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->titleH()I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v1, v2, v3, v4, v12}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v1, v2, v3, v4, v11}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosX()I

    move-result v2

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosY()I

    move-result v2

    add-int v4, v2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->titleH()I

    move-result v6

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosX()I

    move-result v2

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosY()I

    move-result v2

    add-int v4, v2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->titleH()I

    move-result v6

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v1, v2, v3, v4, v10}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosX()I

    move-result v2

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->titleH()I

    move-result v4

    add-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getWidth()I

    move-result v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v1, v2, v3, v4, v10}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosX()I

    move-result v2

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->titleH()I

    move-result v4

    add-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getWidth()I

    move-result v5

    const/4 v6, 0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    :goto_0
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method protected drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 13

    move-object v0, p0

    move-object v8, p1

    move/from16 v9, p4

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    sget-object v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    iget v3, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iTechnologyID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->UnlocksNukes:Z

    const v3, 0x84c0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->techMask:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    add-int/2addr v2, v1

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getWidth()I

    move-result v5

    if-gt v2, v5, :cond_0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->techNuke:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/graphics/GL20;->glActiveTexture(I)V

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->techMaskSquare:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosX()I

    move-result v5

    add-int/2addr v5, v1

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->techOver:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v6

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->techMask:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    add-int/2addr v5, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosY()I

    move-result v6

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->titleH()I

    move-result v7

    add-int/2addr v6, v7

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v6, v7

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->techOver:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v7

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->techMask:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v10

    sub-int/2addr v7, v10

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    add-int v6, v6, p3

    invoke-virtual {v2, p1, v5, v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefault:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->techOver:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosX()I

    move-result v5

    add-int/2addr v5, v1

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->techOver:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v6

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->techMask:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    add-int/2addr v5, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosY()I

    move-result v6

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->titleH()I

    move-result v7

    add-int/2addr v6, v7

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v6, v7

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->techOver:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v7

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->techMask:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v10

    sub-int/2addr v7, v10

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    add-int v6, v6, p3

    invoke-virtual {v2, p1, v5, v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->techMask:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v5

    add-int/2addr v1, v2

    :cond_0
    sget-object v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    iget v5, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iTechnologyID:I

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->UnlocksAccessToTheSea:Z

    if-eqz v2, :cond_1

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->techMask:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    add-int/2addr v2, v1

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getWidth()I

    move-result v5

    if-gt v2, v5, :cond_1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->techSea:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/graphics/GL20;->glActiveTexture(I)V

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->techMaskSquare:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosX()I

    move-result v5

    add-int/2addr v5, v1

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->techOver:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v6

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->techMask:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    add-int/2addr v5, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosY()I

    move-result v6

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->titleH()I

    move-result v7

    add-int/2addr v6, v7

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v6, v7

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->techOver:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v7

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->techMask:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v10

    sub-int/2addr v7, v10

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    add-int v6, v6, p3

    invoke-virtual {v2, p1, v5, v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefault:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->techOver:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosX()I

    move-result v5

    add-int/2addr v5, v1

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->techOver:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v6

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->techMask:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    add-int/2addr v5, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosY()I

    move-result v6

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->titleH()I

    move-result v7

    add-int/2addr v6, v7

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v6, v7

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->techOver:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v7

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->techMask:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v10

    sub-int/2addr v7, v10

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    add-int v6, v6, p3

    invoke-virtual {v2, p1, v5, v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->techMask:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v5

    add-int/2addr v1, v2

    :cond_1
    sget-object v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechUnlocksBuildings:Ljava/util/List;

    iget v5, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iTechnologyID:I

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v5, 0x0

    if-lez v2, :cond_3

    move v2, v5

    :goto_0
    sget-object v6, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechUnlocksBuildings:Ljava/util/List;

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iTechnologyID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_3

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, v6}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    sget-object v6, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildingImages:Ljava/util/List;

    sget-object v7, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    sget-object v10, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechUnlocksBuildings:Ljava/util/List;

    iget v11, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iTechnologyID:I

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Building;

    iget v10, v10, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Building;->building:I

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ImageID:[I

    sget-object v10, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechUnlocksBuildings:Ljava/util/List;

    iget v11, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iTechnologyID:I

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Building;

    iget v10, v10, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Building;->buildingID:I

    aget v7, v7, v10

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    sget-object v6, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v6, v3}, Lcom/badlogic/gdx/graphics/GL20;->glActiveTexture(I)V

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->techMask:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v6

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosX()I

    move-result v7

    add-int/2addr v7, v1

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->techMask:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->techMask:I

    invoke-static {v11}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v11

    sub-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v7, v10

    add-int/2addr v7, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosY()I

    move-result v10

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->titleH()I

    move-result v11

    add-int/2addr v10, v11

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v10, v11

    add-int v10, v10, p3

    invoke-virtual {v6, p1, v7, v10}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefault:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, v6}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->techOver:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v6

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosX()I

    move-result v7

    add-int/2addr v7, v1

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->techOver:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->techMask:I

    invoke-static {v11}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v11

    sub-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v7, v10

    add-int/2addr v7, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosY()I

    move-result v10

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->titleH()I

    move-result v11

    add-int/2addr v10, v11

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v10, v11

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->techOver:I

    invoke-static {v11}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v11

    sget v12, Laoc/kingdoms/lukasz/textures/Images;->techMask:I

    invoke-static {v12}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v12

    sub-int/2addr v11, v12

    div-int/lit8 v11, v11, 0x2

    sub-int/2addr v10, v11

    add-int v10, v10, p3

    invoke-virtual {v6, p1, v7, v10}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->techMask:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v6, v7

    add-int/2addr v1, v6

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->techMask:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    add-int/2addr v6, v1

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v6, v7

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getWidth()I

    move-result v7

    if-lt v6, v7, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_3
    :goto_1
    sget-object v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechUnlocksUnits:Ljava/util/List;

    iget v6, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iTechnologyID:I

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->techMask:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    add-int/2addr v2, v1

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v6

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getWidth()I

    move-result v6

    if-gt v2, v6, :cond_5

    move v2, v5

    :goto_2
    sget-object v6, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechUnlocksUnits:Ljava/util/List;

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iTechnologyID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_5

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, v6}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    sget-object v6, Laoc/kingdoms/lukasz/map/army/ArmyManager;->armyImages:Ljava/util/List;

    sget-object v7, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    sget-object v10, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechUnlocksUnits:Ljava/util/List;

    iget v11, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iTechnologyID:I

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v10, v10, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->unitID:I

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    sget-object v10, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechUnlocksUnits:Ljava/util/List;

    iget v11, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iTechnologyID:I

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v10, v10, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->armyID:I

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget v7, v7, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->ImageID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    sget-object v6, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v6, v3}, Lcom/badlogic/gdx/graphics/GL20;->glActiveTexture(I)V

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->techMask:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v6

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosX()I

    move-result v7

    add-int/2addr v7, v1

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->techMask:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->techMask:I

    invoke-static {v11}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v11

    sub-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v7, v10

    add-int/2addr v7, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosY()I

    move-result v10

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->titleH()I

    move-result v11

    add-int/2addr v10, v11

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v10, v11

    add-int v10, v10, p3

    invoke-virtual {v6, p1, v7, v10}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefault:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, v6}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->techOver:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v6

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosX()I

    move-result v7

    add-int/2addr v7, v1

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->techOver:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->techMask:I

    invoke-static {v11}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v11

    sub-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v7, v10

    add-int/2addr v7, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosY()I

    move-result v10

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->titleH()I

    move-result v11

    add-int/2addr v10, v11

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v10, v11

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->techOver:I

    invoke-static {v11}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v11

    sget v12, Laoc/kingdoms/lukasz/textures/Images;->techMask:I

    invoke-static {v12}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v12

    sub-int/2addr v11, v12

    div-int/lit8 v11, v11, 0x2

    sub-int/2addr v10, v11

    add-int v10, v10, p3

    invoke-virtual {v6, p1, v7, v10}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->techMask:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v6, v7

    add-int/2addr v1, v6

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->techMask:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    add-int/2addr v6, v1

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v6, v7

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getWidth()I

    move-result v7

    if-lt v6, v7, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    :cond_5
    :goto_3
    sget-object v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechUnlocksLaws:Ljava/util/List;

    iget v6, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iTechnologyID:I

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_7

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->techMask:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    add-int/2addr v2, v1

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v6

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getWidth()I

    move-result v6

    if-gt v2, v6, :cond_7

    move v2, v5

    :goto_4
    sget-object v6, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechUnlocksLaws:Ljava/util/List;

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iTechnologyID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_7

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, v6}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    sget-object v6, Laoc/kingdoms/lukasz/map/LawsManager;->lawsImages:Ljava/util/List;

    sget-object v7, Laoc/kingdoms/lukasz/map/LawsManager;->laws:Ljava/util/List;

    sget-object v10, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechUnlocksLaws:Ljava/util/List;

    iget v11, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iTechnologyID:I

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$LawTech;

    iget v10, v10, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$LawTech;->law:I

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/LawsManager$Law;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/LawsManager$Law;->ImageID:[I

    sget-object v10, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechUnlocksLaws:Ljava/util/List;

    iget v11, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iTechnologyID:I

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$LawTech;

    iget v10, v10, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$LawTech;->lawID:I

    aget v7, v7, v10

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    sget-object v6, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v6, v3}, Lcom/badlogic/gdx/graphics/GL20;->glActiveTexture(I)V

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->techMaskSquare:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v6

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosX()I

    move-result v7

    add-int/2addr v7, v1

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->techOver:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->techMask:I

    invoke-static {v11}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v11

    sub-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v7, v10

    add-int/2addr v7, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosY()I

    move-result v10

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->titleH()I

    move-result v11

    add-int/2addr v10, v11

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v10, v11

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->techOver:I

    invoke-static {v11}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v11

    sget v12, Laoc/kingdoms/lukasz/textures/Images;->techMask:I

    invoke-static {v12}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v12

    sub-int/2addr v11, v12

    div-int/lit8 v11, v11, 0x2

    sub-int/2addr v10, v11

    add-int v10, v10, p3

    invoke-virtual {v6, p1, v7, v10}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefault:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, v6}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->techOver:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v6

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosX()I

    move-result v7

    add-int/2addr v7, v1

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->techOver:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->techMask:I

    invoke-static {v11}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v11

    sub-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v7, v10

    add-int/2addr v7, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosY()I

    move-result v10

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->titleH()I

    move-result v11

    add-int/2addr v10, v11

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v10, v11

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->techOver:I

    invoke-static {v11}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v11

    sget v12, Laoc/kingdoms/lukasz/textures/Images;->techMask:I

    invoke-static {v12}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v12

    sub-int/2addr v11, v12

    div-int/lit8 v11, v11, 0x2

    sub-int/2addr v10, v11

    add-int v10, v10, p3

    invoke-virtual {v6, p1, v7, v10}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->techMask:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v6, v7

    add-int/2addr v1, v6

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->techMask:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    add-int/2addr v6, v1

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v6, v7

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getWidth()I

    move-result v7

    if-lt v6, v7, :cond_6

    goto :goto_5

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_4

    :cond_7
    :goto_5
    iget-object v2, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->ideologies:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_9

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->techMask:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    add-int/2addr v2, v1

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v6

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getWidth()I

    move-result v6

    if-gt v2, v6, :cond_9

    move v2, v5

    :goto_6
    iget-object v6, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->ideologies:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_9

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->techMask:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    add-int/2addr v6, v1

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v6, v7

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getWidth()I

    move-result v7

    if-gt v6, v7, :cond_8

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, v6}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->techEmpty:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    sget-object v6, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v6, v3}, Lcom/badlogic/gdx/graphics/GL20;->glActiveTexture(I)V

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->techMaskSquare:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v6

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosX()I

    move-result v7

    add-int/2addr v7, v1

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->techOver:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->techMask:I

    invoke-static {v11}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v11

    sub-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v7, v10

    add-int/2addr v7, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosY()I

    move-result v10

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->titleH()I

    move-result v11

    add-int/2addr v10, v11

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v10, v11

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->techOver:I

    invoke-static {v11}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v11

    sget v12, Laoc/kingdoms/lukasz/textures/Images;->techMask:I

    invoke-static {v12}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v12

    sub-int/2addr v11, v12

    div-int/lit8 v11, v11, 0x2

    sub-int/2addr v10, v11

    add-int v10, v10, p3

    invoke-virtual {v6, p1, v7, v10}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefault:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, v6}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/IdeologiesManager;->ideologiesImages:Ljava/util/List;

    iget-object v7, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->ideologies:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosX()I

    move-result v7

    add-int/2addr v7, v1

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->techOver:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->techMask:I

    invoke-static {v11}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v11

    sub-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v7, v10

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->techOver:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v7, v10

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/IdeologiesManager;->ideologiesImages:Ljava/util/List;

    iget-object v11, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->ideologies:Ljava/util/List;

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v7, v10

    add-int/2addr v7, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosY()I

    move-result v10

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->titleH()I

    move-result v11

    add-int/2addr v10, v11

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v10, v11

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->techOver:I

    invoke-static {v11}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v11

    sget v12, Laoc/kingdoms/lukasz/textures/Images;->techMask:I

    invoke-static {v12}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v12

    sub-int/2addr v11, v12

    div-int/lit8 v11, v11, 0x2

    sub-int/2addr v10, v11

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->techOver:I

    invoke-static {v11}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/IdeologiesManager;->ideologiesImages:Ljava/util/List;

    iget-object v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->ideologies:Ljava/util/List;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    sub-int/2addr v10, v11

    add-int v10, v10, p3

    invoke-virtual {v6, p1, v7, v10}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->techOver:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v6

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosX()I

    move-result v7

    add-int/2addr v7, v1

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->techOver:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->techMask:I

    invoke-static {v11}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v11

    sub-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v7, v10

    add-int/2addr v7, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosY()I

    move-result v10

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->titleH()I

    move-result v11

    add-int/2addr v10, v11

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v10, v11

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->techOver:I

    invoke-static {v11}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v11

    sget v12, Laoc/kingdoms/lukasz/textures/Images;->techMask:I

    invoke-static {v12}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v12

    sub-int/2addr v11, v12

    div-int/lit8 v11, v11, 0x2

    sub-int/2addr v10, v11

    add-int v10, v10, p3

    invoke-virtual {v6, p1, v7, v10}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->techMask:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v6, v7

    add-int/2addr v1, v6

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_6

    :cond_9
    sget-object v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    iget v6, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iTechnologyID:I

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v2, v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->MaximumLevelOfCapitalCity:I

    if-lez v2, :cond_a

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->techMask:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    add-int/2addr v2, v1

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v6

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getWidth()I

    move-result v6

    if-gt v2, v6, :cond_a

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->buildingCapital:Ljava/util/List;

    iget v6, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iCivID:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalLevel()I

    move-result v6

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/GameValues;->capital:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Capital;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Capital;->CAPITAL_IMAGES:I

    sub-int/2addr v7, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/graphics/GL20;->glActiveTexture(I)V

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->techMaskSquare:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosX()I

    move-result v6

    add-int/2addr v6, v1

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->techOver:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v7

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->techMask:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v10

    sub-int/2addr v7, v10

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    add-int/2addr v6, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosY()I

    move-result v7

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->titleH()I

    move-result v10

    add-int/2addr v7, v10

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v7, v10

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->techOver:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->techMask:I

    invoke-static {v11}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v11

    sub-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v7, v10

    add-int v7, v7, p3

    invoke-virtual {v2, p1, v6, v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefault:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->techOver:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosX()I

    move-result v6

    add-int/2addr v6, v1

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->techOver:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v7

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->techMask:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v10

    sub-int/2addr v7, v10

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    add-int/2addr v6, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosY()I

    move-result v7

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->titleH()I

    move-result v10

    add-int/2addr v7, v10

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v7, v10

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->techOver:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->techMask:I

    invoke-static {v11}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v11

    sub-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v7, v10

    add-int v7, v7, p3

    invoke-virtual {v2, p1, v6, v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->techMask:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v6

    add-int/2addr v1, v2

    :cond_a
    sget-object v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    iget v6, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iTechnologyID:I

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v2, v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->MaximumLevelOfTheMilitaryAcademy:I

    if-lez v2, :cond_b

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->techMask:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    add-int/2addr v2, v1

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v6

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getWidth()I

    move-result v6

    if-gt v2, v6, :cond_b

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->armyMilitaryAcademy:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/graphics/GL20;->glActiveTexture(I)V

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->techMaskSquare:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosX()I

    move-result v6

    add-int/2addr v6, v1

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->techOver:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v7

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->techMask:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v10

    sub-int/2addr v7, v10

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    add-int/2addr v6, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosY()I

    move-result v7

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->titleH()I

    move-result v10

    add-int/2addr v7, v10

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v7, v10

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->techOver:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->techMask:I

    invoke-static {v11}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v11

    sub-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v7, v10

    add-int v7, v7, p3

    invoke-virtual {v2, p1, v6, v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefault:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->techOver:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosX()I

    move-result v6

    add-int/2addr v6, v1

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->techOver:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v7

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->techMask:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v10

    sub-int/2addr v7, v10

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    add-int/2addr v6, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosY()I

    move-result v7

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->titleH()I

    move-result v10

    add-int/2addr v7, v10

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v7, v10

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->techOver:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->techMask:I

    invoke-static {v11}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v11

    sub-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v7, v10

    add-int v7, v7, p3

    invoke-virtual {v2, p1, v6, v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->techMask:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v6

    add-int/2addr v1, v2

    :cond_b
    sget-object v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    iget v6, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iTechnologyID:I

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v2, v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->MaximumLevelOfTheMilitaryAcademyForGenerals:I

    if-lez v2, :cond_c

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->techMask:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    add-int/2addr v2, v1

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v6

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getWidth()I

    move-result v6

    if-gt v2, v6, :cond_c

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->armyGeneralAcademy:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/graphics/GL20;->glActiveTexture(I)V

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->techMaskSquare:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosX()I

    move-result v6

    add-int/2addr v6, v1

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->techOver:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v7

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->techMask:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v10

    sub-int/2addr v7, v10

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    add-int/2addr v6, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosY()I

    move-result v7

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->titleH()I

    move-result v10

    add-int/2addr v7, v10

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v7, v10

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->techOver:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->techMask:I

    invoke-static {v11}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v11

    sub-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v7, v10

    add-int v7, v7, p3

    invoke-virtual {v2, p1, v6, v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefault:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->techOver:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosX()I

    move-result v6

    add-int/2addr v6, v1

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->techOver:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v7

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->techMask:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v10

    sub-int/2addr v7, v10

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    add-int/2addr v6, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosY()I

    move-result v7

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->titleH()I

    move-result v10

    add-int/2addr v7, v10

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v7, v10

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->techOver:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->techMask:I

    invoke-static {v11}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v11

    sub-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v7, v10

    add-int v7, v7, p3

    invoke-virtual {v2, p1, v6, v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->techMask:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v6

    add-int/2addr v1, v2

    :cond_c
    sget-object v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    iget v6, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iTechnologyID:I

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v2, v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->BattleWidth:I

    if-lez v2, :cond_d

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->techMask:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    add-int/2addr v2, v1

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v6

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getWidth()I

    move-result v6

    if-gt v2, v6, :cond_d

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->techBattleWidth:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/graphics/GL20;->glActiveTexture(I)V

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->techMaskSquare:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosX()I

    move-result v6

    add-int/2addr v6, v1

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->techOver:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v7

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->techMask:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v10

    sub-int/2addr v7, v10

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    add-int/2addr v6, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosY()I

    move-result v7

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->titleH()I

    move-result v10

    add-int/2addr v7, v10

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v7, v10

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->techOver:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->techMask:I

    invoke-static {v11}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v11

    sub-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v7, v10

    add-int v7, v7, p3

    invoke-virtual {v2, p1, v6, v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefault:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->techOver:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosX()I

    move-result v6

    add-int/2addr v6, v1

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->techOver:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v7

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->techMask:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v10

    sub-int/2addr v7, v10

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    add-int/2addr v6, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosY()I

    move-result v7

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->titleH()I

    move-result v10

    add-int/2addr v7, v10

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v7, v10

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->techOver:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->techMask:I

    invoke-static {v11}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v11

    sub-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v7, v10

    add-int v7, v7, p3

    invoke-virtual {v2, p1, v6, v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->techMask:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v6

    add-int/2addr v1, v2

    :cond_d
    sget-object v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    iget v6, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iTechnologyID:I

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v2, v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->GeneralAttack:I

    if-lez v2, :cond_e

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->techMask:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    add-int/2addr v2, v1

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v6

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getWidth()I

    move-result v6

    if-gt v2, v6, :cond_e

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->techGeneral:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/graphics/GL20;->glActiveTexture(I)V

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->techMaskSquare:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosX()I

    move-result v6

    add-int/2addr v6, v1

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->techOver:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v7

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->techMask:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v10

    sub-int/2addr v7, v10

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    add-int/2addr v6, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosY()I

    move-result v7

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->titleH()I

    move-result v10

    add-int/2addr v7, v10

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v7, v10

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->techOver:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->techMask:I

    invoke-static {v11}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v11

    sub-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v7, v10

    add-int v7, v7, p3

    invoke-virtual {v2, p1, v6, v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefault:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->techOver:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosX()I

    move-result v6

    add-int/2addr v6, v1

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->techOver:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v7

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->techMask:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v10

    sub-int/2addr v7, v10

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    add-int/2addr v6, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosY()I

    move-result v7

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->titleH()I

    move-result v10

    add-int/2addr v7, v10

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v7, v10

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->techOver:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->techMask:I

    invoke-static {v11}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v11

    sub-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v7, v10

    add-int v7, v7, p3

    invoke-virtual {v2, p1, v6, v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->techMask:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v6

    add-int/2addr v1, v2

    :cond_e
    sget-object v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    iget v6, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iTechnologyID:I

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v2, v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->GeneralDefense:I

    if-lez v2, :cond_f

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->techMask:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    add-int/2addr v2, v1

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v6

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getWidth()I

    move-result v6

    if-gt v2, v6, :cond_f

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->techGeneral:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/graphics/GL20;->glActiveTexture(I)V

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->techMaskSquare:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosX()I

    move-result v6

    add-int/2addr v6, v1

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->techOver:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v7

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->techMask:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v10

    sub-int/2addr v7, v10

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    add-int/2addr v6, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosY()I

    move-result v7

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->titleH()I

    move-result v10

    add-int/2addr v7, v10

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v7, v10

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->techOver:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->techMask:I

    invoke-static {v11}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v11

    sub-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v7, v10

    add-int v7, v7, p3

    invoke-virtual {v2, p1, v6, v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefault:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->techOver:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosX()I

    move-result v6

    add-int/2addr v6, v1

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->techOver:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v7

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->techMask:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v10

    sub-int/2addr v7, v10

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    add-int/2addr v6, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosY()I

    move-result v7

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->titleH()I

    move-result v10

    add-int/2addr v7, v10

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v7, v10

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->techOver:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->techMask:I

    invoke-static {v11}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v11

    sub-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v7, v10

    add-int v7, v7, p3

    invoke-virtual {v2, p1, v6, v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->techMask:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v6

    add-int/2addr v1, v2

    :cond_f
    sget-object v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    iget v6, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iTechnologyID:I

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v2, v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->MaxMorale:I

    if-lez v2, :cond_10

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->techMask:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    add-int/2addr v2, v1

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v6

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getWidth()I

    move-result v6

    if-gt v2, v6, :cond_10

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->techMorale:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/graphics/GL20;->glActiveTexture(I)V

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->techMaskSquare:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosX()I

    move-result v6

    add-int/2addr v6, v1

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->techOver:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v7

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->techMask:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v10

    sub-int/2addr v7, v10

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    add-int/2addr v6, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosY()I

    move-result v7

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->titleH()I

    move-result v10

    add-int/2addr v7, v10

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v7, v10

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->techOver:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->techMask:I

    invoke-static {v11}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v11

    sub-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v7, v10

    add-int v7, v7, p3

    invoke-virtual {v2, p1, v6, v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefault:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->techOver:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosX()I

    move-result v6

    add-int/2addr v6, v1

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->techOver:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v7

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->techMask:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v10

    sub-int/2addr v7, v10

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    add-int/2addr v6, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosY()I

    move-result v7

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->titleH()I

    move-result v10

    add-int/2addr v7, v10

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v7, v10

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->techOver:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->techMask:I

    invoke-static {v11}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v11

    sub-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v7, v10

    add-int v7, v7, p3

    invoke-virtual {v2, p1, v6, v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->techMask:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v6

    add-int/2addr v1, v2

    :cond_10
    sget-object v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    iget v6, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iTechnologyID:I

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v2, v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->Discipline:I

    if-lez v2, :cond_11

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->techMask:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    add-int/2addr v2, v1

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v6

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getWidth()I

    move-result v6

    if-gt v2, v6, :cond_11

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->techDiscipline:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/graphics/GL20;->glActiveTexture(I)V

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->techMaskSquare:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosX()I

    move-result v6

    add-int/2addr v6, v1

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->techOver:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v7

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->techMask:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v10

    sub-int/2addr v7, v10

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    add-int/2addr v6, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosY()I

    move-result v7

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->titleH()I

    move-result v10

    add-int/2addr v7, v10

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v7, v10

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->techOver:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->techMask:I

    invoke-static {v11}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v11

    sub-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v7, v10

    add-int v7, v7, p3

    invoke-virtual {v2, p1, v6, v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefault:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->techOver:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosX()I

    move-result v6

    add-int/2addr v6, v1

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->techOver:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v7

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->techMask:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v10

    sub-int/2addr v7, v10

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    add-int/2addr v6, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosY()I

    move-result v7

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->titleH()I

    move-result v10

    add-int/2addr v7, v10

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v7, v10

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->techOver:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->techMask:I

    invoke-static {v11}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v11

    sub-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v7, v10

    add-int v7, v7, p3

    invoke-virtual {v2, p1, v6, v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->techMask:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v6

    add-int/2addr v1, v2

    :cond_11
    sget-object v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    iget v6, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iTechnologyID:I

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v2, v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->UnitsAttack:I

    if-lez v2, :cond_12

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->techMask:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    add-int/2addr v2, v1

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v6

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getWidth()I

    move-result v6

    if-gt v2, v6, :cond_12

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->techAttack:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/graphics/GL20;->glActiveTexture(I)V

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->techMaskSquare:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosX()I

    move-result v6

    add-int/2addr v6, v1

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->techOver:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v7

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->techMask:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v10

    sub-int/2addr v7, v10

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    add-int/2addr v6, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosY()I

    move-result v7

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->titleH()I

    move-result v10

    add-int/2addr v7, v10

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v7, v10

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->techOver:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->techMask:I

    invoke-static {v11}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v11

    sub-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v7, v10

    add-int v7, v7, p3

    invoke-virtual {v2, p1, v6, v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefault:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->techOver:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosX()I

    move-result v6

    add-int/2addr v6, v1

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->techOver:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v7

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->techMask:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v10

    sub-int/2addr v7, v10

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    add-int/2addr v6, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosY()I

    move-result v7

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->titleH()I

    move-result v10

    add-int/2addr v7, v10

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v7, v10

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->techOver:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->techMask:I

    invoke-static {v11}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v11

    sub-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v7, v10

    add-int v7, v7, p3

    invoke-virtual {v2, p1, v6, v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->techMask:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v6

    add-int/2addr v1, v2

    :cond_12
    sget-object v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    iget v6, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iTechnologyID:I

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v2, v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->UnitsDefense:I

    if-lez v2, :cond_13

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->techMask:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    add-int/2addr v2, v1

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v6

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getWidth()I

    move-result v6

    if-gt v2, v6, :cond_13

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->techDefense:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/graphics/GL20;->glActiveTexture(I)V

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->techMaskSquare:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosX()I

    move-result v6

    add-int/2addr v6, v1

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->techOver:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v7

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->techMask:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v10

    sub-int/2addr v7, v10

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    add-int/2addr v6, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosY()I

    move-result v7

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->titleH()I

    move-result v10

    add-int/2addr v7, v10

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v7, v10

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->techOver:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->techMask:I

    invoke-static {v11}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v11

    sub-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v7, v10

    add-int v7, v7, p3

    invoke-virtual {v2, p1, v6, v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefault:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->techOver:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosX()I

    move-result v6

    add-int/2addr v6, v1

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->techOver:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v7

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->techMask:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v10

    sub-int/2addr v7, v10

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    add-int/2addr v6, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosY()I

    move-result v7

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->titleH()I

    move-result v10

    add-int/2addr v7, v10

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v7, v10

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->techOver:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->techMask:I

    invoke-static {v11}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v11

    sub-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v7, v10

    add-int v7, v7, p3

    invoke-virtual {v2, p1, v6, v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->techMask:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v6

    add-int/2addr v1, v2

    :cond_13
    sget-object v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    iget v6, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iTechnologyID:I

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v2, v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->Legacy:I

    if-lez v2, :cond_14

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->techMask:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    add-int/2addr v2, v1

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v6

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getWidth()I

    move-result v6

    if-gt v2, v6, :cond_14

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->techLegacy:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/graphics/GL20;->glActiveTexture(I)V

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->techMaskSquare:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosX()I

    move-result v6

    add-int/2addr v6, v1

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->techOver:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v7

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->techMask:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v10

    sub-int/2addr v7, v10

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    add-int/2addr v6, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosY()I

    move-result v7

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->titleH()I

    move-result v10

    add-int/2addr v7, v10

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v7, v10

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->techOver:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->techMask:I

    invoke-static {v11}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v11

    sub-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v7, v10

    add-int v7, v7, p3

    invoke-virtual {v2, p1, v6, v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefault:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->techOver:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosX()I

    move-result v6

    add-int/2addr v6, v1

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->techOver:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v7

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->techMask:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v10

    sub-int/2addr v7, v10

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    add-int/2addr v6, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosY()I

    move-result v7

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->titleH()I

    move-result v10

    add-int/2addr v7, v10

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v7, v10

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->techOver:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->techMask:I

    invoke-static {v11}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v11

    sub-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v7, v10

    add-int v7, v7, p3

    invoke-virtual {v2, p1, v6, v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->techMask:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v6

    add-int/2addr v1, v2

    :cond_14
    iget-object v2, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->advantages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_16

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->techMask:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    add-int/2addr v2, v1

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v6

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getWidth()I

    move-result v6

    if-gt v2, v6, :cond_16

    move v2, v5

    :goto_7
    iget-object v6, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->advantages:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_16

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->techMask:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    add-int/2addr v6, v1

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v6, v7

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getWidth()I

    move-result v7

    if-gt v6, v7, :cond_15

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, v6}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    sget-object v6, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantagesImages:Ljava/util/List;

    sget-object v7, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    iget-object v10, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->advantages:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ImageID:[I

    aget v7, v7, v5

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    sget-object v6, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v6, v3}, Lcom/badlogic/gdx/graphics/GL20;->glActiveTexture(I)V

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->techMaskSquare:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v6

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosX()I

    move-result v7

    add-int/2addr v7, v1

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->techOver:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->techMask:I

    invoke-static {v11}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v11

    sub-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v7, v10

    add-int/2addr v7, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosY()I

    move-result v10

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->titleH()I

    move-result v11

    add-int/2addr v10, v11

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v10, v11

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->techOver:I

    invoke-static {v11}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v11

    sget v12, Laoc/kingdoms/lukasz/textures/Images;->techMask:I

    invoke-static {v12}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v12

    sub-int/2addr v11, v12

    div-int/lit8 v11, v11, 0x2

    sub-int/2addr v10, v11

    add-int v10, v10, p3

    invoke-virtual {v6, p1, v7, v10}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefault:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, v6}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->techOver:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v6

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosX()I

    move-result v7

    add-int/2addr v7, v1

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->techOver:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->techMask:I

    invoke-static {v11}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v11

    sub-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v7, v10

    add-int/2addr v7, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosY()I

    move-result v10

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->titleH()I

    move-result v11

    add-int/2addr v10, v11

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v10, v11

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->techOver:I

    invoke-static {v11}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v11

    sget v12, Laoc/kingdoms/lukasz/textures/Images;->techMask:I

    invoke-static {v12}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v12

    sub-int/2addr v11, v12

    div-int/lit8 v11, v11, 0x2

    sub-int/2addr v10, v11

    add-int v10, v10, p3

    invoke-virtual {v6, p1, v7, v10}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->techMask:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v6, v7

    add-int/2addr v1, v6

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_7

    :cond_16
    iget v2, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->fontID:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosX()I

    move-result v1

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v4

    add-int v4, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosY()I

    move-result v1

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v1, v5

    add-int v5, v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getIsHovered()Z

    move-result v1

    invoke-static {v9, v1}, Laoc/kingdoms/lukasz/menu/Colors;->getColorTopStats2(ZZ)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v6

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    iget-boolean v1, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->inTechTree:Z

    if-eqz v1, :cond_17

    iget v1, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->btnIMG:I

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->techResearched:I

    if-eq v1, v2, :cond_17

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_TECHNOLOGY:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->techIconWidth:I

    sub-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosY()I

    move-result v2

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    add-int v4, v2, p3

    sget v5, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->techIconWidth:I

    sget v6, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->techIconHeight:I

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    iget-object v3, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->sCost:Ljava/lang/String;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x3

    sub-int/2addr v1, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iCostWidth:I

    sub-int/2addr v1, v4

    sget v4, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->techIconWidth:I

    sub-int/2addr v1, v4

    add-int v4, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosY()I

    move-result v1

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v1, v5

    add-int v5, v1, p3

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT2:Lcom/badlogic/gdx/graphics/Color;

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    :cond_17
    iget-object v1, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->sQueue:Ljava/lang/String;

    if-eqz v1, :cond_18

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->statsRectBG:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getWidth()I

    move-result v3

    add-int/2addr v1, v3

    iget v3, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iQueueWidth:I

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x4

    sub-int/2addr v1, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    add-int v3, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getHeight()I

    move-result v4

    add-int/2addr v1, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iQueueHeight:I

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x4

    sub-int/2addr v1, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v1, v4

    add-int v4, v1, p3

    iget v1, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iQueueWidth:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x4

    add-int/2addr v5, v1

    iget v1, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iQueueHeight:I

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v1

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/textures/Image;IIIIF)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v5, 0x3f266666    # 0.65f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iQueueWidth:I

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x4

    sub-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iQueueHeight:I

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x4

    sub-int/2addr v2, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    iget v2, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iQueueWidth:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x4

    add-int/2addr v5, v2

    iget v2, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iQueueHeight:I

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v2

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iQueueWidth:I

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x4

    sub-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iQueueHeight:I

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x4

    sub-int/2addr v2, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    iget v2, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iQueueWidth:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x4

    add-int/2addr v5, v2

    iget v2, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iQueueHeight:I

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v2

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget v2, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->fontID:I

    iget-object v3, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->sQueue:Ljava/lang/String;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iQueueWidth:I

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x4

    sub-int/2addr v1, v4

    add-int v4, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getHeight()I

    move-result v5

    add-int/2addr v1, v5

    iget v5, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iQueueHeight:I

    mul-int/lit8 v5, v5, 0x3

    div-int/lit8 v5, v5, 0x4

    sub-int/2addr v1, v5

    add-int v5, v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getIsHovered()Z

    move-result v1

    invoke-static {v9, v1}, Laoc/kingdoms/lukasz/menu/Colors;->getColorTopStats2(ZZ)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v6

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    :cond_18
    return-void
.end method

.method public getCurrent()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iTechnologyID:I

    return v0
.end method

.method public getSFX()I
    .locals 1

    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_CLICK_TOP:I

    return v0
.end method

.method public init(IIIIZI)V
    .locals 17

    move-object/from16 v12, p0

    move/from16 v13, p2

    move/from16 v14, p5

    iput v13, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iTechnologyID:I

    move/from16 v0, p1

    iput v0, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->btnIMG:I

    sget-object v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v0, v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->ImageID:I

    iput v0, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iImageID:I

    iput-boolean v14, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->inTechTree:Z

    const-string v15, ""

    const/4 v11, 0x1

    if-ltz p6, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v1, p6, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->sQueue:Ljava/lang/String;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v2, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->sQueue:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int v0, v0

    iput v0, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iQueueWidth:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->height:F

    float-to-int v0, v0

    iput v0, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iQueueHeight:I

    :cond_0
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    iput v0, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->fontID:I

    sget-object v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget-object v1, v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->Name:Ljava/lang/String;

    iget v2, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->fontID:I

    iget v3, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iTextPositionX:I

    sget v6, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->iTechnologyWidth:I

    sget v7, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->iTechnologyHeight:I

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v4, p3

    move/from16 v5, p4

    move v14, v11

    move/from16 v11, v16

    invoke-virtual/range {v0 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->init(Ljava/lang/String;IIIIIIZZZZ)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iCivID:I

    invoke-static {v13, v1}, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->getResearchCost(II)F

    move-result v1

    invoke-static {v1, v14}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->sCost:Ljava/lang/String;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v2, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->sCost:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int v0, v0

    iput v0, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iCostWidth:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->height:F

    float-to-int v0, v0

    iput v0, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iCostHeight:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_TECHNOLOGY:I

    invoke-direct {v12, v0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getImageScale(I)F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_TECHNOLOGY:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    sput v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->techIconWidth:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_TECHNOLOGY:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->techIconHeight:I

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getIdeologiesSize()I

    move-result v2

    if-ge v1, v2, :cond_2

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getIdeology(I)Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;->REQUIRED_TECHNOLOGY:I

    if-ne v2, v13, :cond_1

    iget-object v2, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->ideologies:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v0

    :goto_1
    sget v2, Laoc/kingdoms/lukasz/map/AdvantagesManager;->iAdvantagesSize:I

    if-ge v1, v2, :cond_4

    sget-object v2, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget v2, v2, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->RequiredTechID:I

    if-ne v2, v13, :cond_3

    iget-object v2, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->advantages:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    const-string v1, "."

    const/16 v2, 0x64

    const/4 v3, 0x5

    move v4, v14

    if-eqz p5, :cond_5

    move v5, v0

    :goto_2
    iget v6, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iTextWidth:I

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getWidth()I

    move-result v7

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v8, v3

    sub-int/2addr v7, v8

    iget v8, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iCostWidth:I

    sub-int/2addr v7, v8

    sget v8, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->techIconWidth:I

    sub-int/2addr v7, v8

    if-lt v6, v7, :cond_6

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v3, :cond_6

    add-int/2addr v5, v4

    if-ge v5, v2, :cond_6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x3

    invoke-static {v4, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-virtual {v7, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v6}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->setText(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    move v5, v0

    :goto_3
    iget v6, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->iTextWidth:I

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getWidth()I

    move-result v7

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v8, v8, 0x3

    sub-int/2addr v7, v8

    if-lt v6, v7, :cond_6

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v3, :cond_6

    add-int/2addr v5, v4

    if-ge v5, v2, :cond_6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x3

    invoke-static {v4, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-virtual {v7, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v6}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->setText(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    return-void
.end method

.method public titleH()I
    .locals 2

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    return v0
.end method
