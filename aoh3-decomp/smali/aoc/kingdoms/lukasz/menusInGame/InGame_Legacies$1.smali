.class Laoc/kingdoms/lukasz/menusInGame/InGame_Legacies$1;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;
.source "InGame_Legacies.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/InGame_Legacies;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/InGame_Legacies;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Legacies;IIII)V
    .locals 0

    iput-object p1, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_Legacies$1;->this$0:Laoc/kingdoms/lukasz/menusInGame/InGame_Legacies;

    invoke-direct {p0, p2, p3, p4, p5}, Laoc/kingdoms/lukasz/menu_element/button/ButtonLegacy;-><init>(IIII)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .locals 6

    sget v0, Laoc/kingdoms/lukasz/menusInGame/InGame_Legacies;->iActiveCivID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_Legacies$1;->currentLvl:I

    add-int/lit8 v0, v0, 0x1

    sget-object v1, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v2, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_Legacies$1;->legacyID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->CostLegacy:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Legacies$1;->getCurrent()I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/menusInGame/InGame_Legacies;->UNLOCK_LEGACY_ID:I

    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/InGame_Legacies;->unlockLegacy()V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "Max"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    sget-object v4, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget v5, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_Legacies$1;->legacyID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->Name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v3, v4}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->legacy:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/Toast;

    const/16 v3, 0x1770

    invoke-direct {v2, v0, v5, v3}, Laoc/kingdoms/lukasz/menu_element/Toast;-><init>(Ljava/util/List;II)V

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToast(Laoc/kingdoms/lukasz/menu_element/Toast;)V

    :cond_1
    :goto_0
    return-void
.end method
