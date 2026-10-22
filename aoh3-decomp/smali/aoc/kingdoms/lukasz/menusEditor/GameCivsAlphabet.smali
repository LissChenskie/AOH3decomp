.class public Laoc/kingdoms/lukasz/menusEditor/GameCivsAlphabet;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "GameCivsAlphabet.java"


# instance fields
.field private lCharacters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private nSearch:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 22

    move-object/from16 v9, p0

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v9, Laoc/kingdoms/lukasz/menusEditor/GameCivsAlphabet;->lCharacters:Ljava/util/List;

    const-string v0, ""

    iput-object v0, v9, Laoc/kingdoms/lukasz/menusEditor/GameCivsAlphabet;->nSearch:Ljava/lang/String;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Laoc/kingdoms/lukasz/menusEditor/GameCivsAlphabet$1;

    const-string v2, ""

    const/4 v3, 0x1

    const/4 v4, -0x1

    const/4 v6, 0x0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v7, v0, 0x2

    const/4 v8, 0x1

    const/4 v5, 0x0

    move-object v0, v11

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusEditor/GameCivsAlphabet$1;-><init>(Laoc/kingdoms/lukasz/menusEditor/GameCivsAlphabet;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    const/4 v11, 0x1

    sub-int/2addr v0, v11

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v0

    const/4 v12, 0x0

    add-int/lit8 v13, v0, 0x0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->keyboard:Laoc/kingdoms/lukasz/jakowski/Keyboard;

    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardMode:Z

    if-eqz v0, :cond_0

    new-instance v14, Laoc/kingdoms/lukasz/menusEditor/GameCivsAlphabet$2;

    const-string v2, ""

    const/4 v3, 0x1

    const/4 v4, -0x1

    const/4 v6, 0x0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v7, v0, 0x2

    const/4 v8, 0x1

    move-object v0, v14

    move-object/from16 v1, p0

    move v5, v13

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusEditor/GameCivsAlphabet$2;-><init>(Laoc/kingdoms/lukasz/menusEditor/GameCivsAlphabet;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v10, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v14, Laoc/kingdoms/lukasz/menusEditor/GameCivsAlphabet$3;

    const-string v2, ""

    const/4 v3, 0x1

    const/4 v4, -0x1

    const/4 v6, 0x0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v7, v0, 0x2

    const/4 v8, 0x1

    move-object v0, v14

    move-object/from16 v1, p0

    move v5, v13

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusEditor/GameCivsAlphabet$3;-><init>(Laoc/kingdoms/lukasz/menusEditor/GameCivsAlphabet;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v10, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v11

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v0

    add-int/2addr v13, v0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->keyboard:Laoc/kingdoms/lukasz/jakowski/Keyboard;

    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardMode:Z

    if-nez v0, :cond_1

    sget-object v0, Laoc/kingdoms/lukasz/menusEditor/GameCivs;->chosen_AlphabetCharachter:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    new-instance v14, Laoc/kingdoms/lukasz/menusEditor/GameCivsAlphabet$4;

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v6, 0x0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v7, v0, 0x2

    const/4 v8, 0x1

    move-object v0, v14

    move-object/from16 v1, p0

    move v5, v13

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusEditor/GameCivsAlphabet$4;-><init>(Laoc/kingdoms/lukasz/menusEditor/GameCivsAlphabet;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v10, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    new-instance v14, Laoc/kingdoms/lukasz/menusEditor/GameCivsAlphabet$5;

    const-string v2, ""

    const/4 v3, 0x1

    const/4 v4, -0x1

    const/4 v6, 0x0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v7, v0, 0x2

    const/4 v8, 0x1

    move-object v0, v14

    move-object/from16 v1, p0

    move v5, v13

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusEditor/GameCivsAlphabet$5;-><init>(Laoc/kingdoms/lukasz/menusEditor/GameCivsAlphabet;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v10, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v11

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v0

    add-int/2addr v13, v0

    const-string v0, "game/Civilizations.txt"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    move v2, v12

    :goto_2
    if-ge v2, v1, :cond_5

    move v3, v12

    :goto_3
    iget-object v4, v9, Laoc/kingdoms/lukasz/menusEditor/GameCivsAlphabet;->lCharacters:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    iget-object v4, v9, Laoc/kingdoms/lukasz/menusEditor/GameCivsAlphabet;->lCharacters:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Character;

    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C

    move-result v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    aget-object v6, v0, v2

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v4, v5, :cond_2

    move v3, v12

    goto :goto_4

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    move v3, v11

    :goto_4
    if-eqz v3, :cond_4

    iget-object v3, v9, Laoc/kingdoms/lukasz/menusEditor/GameCivsAlphabet;->lCharacters:Ljava/util/List;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    aget-object v5, v0, v2

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    move v0, v12

    :goto_5
    iget-object v1, v9, Laoc/kingdoms/lukasz/menusEditor/GameCivsAlphabet;->lCharacters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v11

    if-ge v0, v1, :cond_8

    add-int/lit8 v1, v0, 0x1

    move v2, v1

    :goto_6
    iget-object v3, v9, Laoc/kingdoms/lukasz/menusEditor/GameCivsAlphabet;->lCharacters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_7

    iget-object v3, v9, Laoc/kingdoms/lukasz/menusEditor/GameCivsAlphabet;->lCharacters:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Character;

    invoke-virtual {v3}, Ljava/lang/Character;->charValue()C

    move-result v3

    iget-object v4, v9, Laoc/kingdoms/lukasz/menusEditor/GameCivsAlphabet;->lCharacters:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Character;

    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C

    move-result v4

    if-le v3, v4, :cond_6

    iget-object v3, v9, Laoc/kingdoms/lukasz/menusEditor/GameCivsAlphabet;->lCharacters:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Character;

    invoke-virtual {v3}, Ljava/lang/Character;->charValue()C

    move-result v3

    iget-object v4, v9, Laoc/kingdoms/lukasz/menusEditor/GameCivsAlphabet;->lCharacters:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Character;

    invoke-interface {v4, v0, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v9, Laoc/kingdoms/lukasz/menusEditor/GameCivsAlphabet;->lCharacters:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v4, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_7
    move v0, v1

    goto :goto_5

    :cond_8
    move v0, v12

    :goto_7
    iget-object v1, v9, Laoc/kingdoms/lukasz/menusEditor/GameCivsAlphabet;->lCharacters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_a

    sget-object v1, Laoc/kingdoms/lukasz/menusEditor/GameCivs;->chosen_AlphabetCharachter:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "]"

    const-string v3, "["

    if-lez v1, :cond_9

    iget-object v1, v9, Laoc/kingdoms/lukasz/menusEditor/GameCivsAlphabet;->lCharacters:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    sget-object v4, Laoc/kingdoms/lukasz/menusEditor/GameCivs;->chosen_AlphabetCharachter:Ljava/lang/String;

    invoke-virtual {v4, v12}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v1, v4, :cond_9

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMainReverse;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v9, Laoc/kingdoms/lukasz/menusEditor/GameCivsAlphabet;->lCharacters:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, -0x1

    const/16 v19, 0x0

    sget v20, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    const/16 v21, 0x1

    move-object v14, v1

    move/from16 v18, v13

    invoke-direct/range {v14 .. v21}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMainReverse;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v11

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v1

    goto :goto_8

    :cond_9
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonMain;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v9, Laoc/kingdoms/lukasz/menusEditor/GameCivsAlphabet;->lCharacters:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    const/16 v17, -0x1

    const/16 v19, 0x0

    sget v20, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    const/16 v21, 0x1

    move-object v14, v1

    move/from16 v18, v13

    invoke-direct/range {v14 .. v21}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMain;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v11

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v1

    :goto_8
    add-int/2addr v13, v1

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_7

    :cond_a
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v0

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move-object v6, v10

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/menusEditor/GameCivsAlphabet;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;Z)V

    return-void
.end method


# virtual methods
.method public actionElement(I)V
    .locals 4

    const-string v0, ""

    if-eqz p1, :cond_6

    const/4 v1, 0x1

    if-eq p1, v1, :cond_5

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    sget-object v1, Laoc/kingdoms/lukasz/menusEditor/GameCivs;->chosen_AlphabetCharachter:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Laoc/kingdoms/lukasz/menusEditor/GameCivs;->sSearch:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    sget-object v1, Laoc/kingdoms/lukasz/menusEditor/GameCivs;->chosen_AlphabetCharachter:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    sget-object v1, Laoc/kingdoms/lukasz/menusEditor/GameCivs;->chosen_AlphabetCharachter:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    iget-object v2, p0, Laoc/kingdoms/lukasz/menusEditor/GameCivsAlphabet;->lCharacters:Ljava/util/List;

    add-int/lit8 v3, p1, -0x3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Character;

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    if-eq v1, v2, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Laoc/kingdoms/lukasz/menusEditor/GameCivsAlphabet;->lCharacters:Ljava/util/List;

    add-int/lit8 p1, p1, -0x3

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Laoc/kingdoms/lukasz/menusEditor/GameCivs;->chosen_AlphabetCharachter:Ljava/lang/String;

    sput-object v0, Laoc/kingdoms/lukasz/menusEditor/GameCivs;->sSearch:Ljava/lang/String;

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v0, Laoc/kingdoms/lukasz/menu/View;->EDITOR_GAMECIVS:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {p1, v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->setViewID(Laoc/kingdoms/lukasz/menu/View;)V

    :cond_1
    return-void

    :cond_2
    sget-object p1, Laoc/kingdoms/lukasz/menusEditor/GameCivs;->chosen_AlphabetCharachter:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-gtz p1, :cond_3

    sget-object p1, Laoc/kingdoms/lukasz/menusEditor/GameCivs;->sSearch:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-gtz p1, :cond_3

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->keyboard:Laoc/kingdoms/lukasz/jakowski/Keyboard;

    sget-boolean p1, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardMode:Z

    if-eqz p1, :cond_4

    :cond_3
    sput-object v0, Laoc/kingdoms/lukasz/menusEditor/GameCivs;->chosen_AlphabetCharachter:Ljava/lang/String;

    sput-object v0, Laoc/kingdoms/lukasz/menusEditor/GameCivs;->sSearch:Ljava/lang/String;

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v0, Laoc/kingdoms/lukasz/menu/View;->EDITOR_GAMECIVS:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {p1, v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->setViewID(Laoc/kingdoms/lukasz/menu/View;)V

    :cond_4
    return-void

    :cond_5
    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->keyboard:Laoc/kingdoms/lukasz/jakowski/Keyboard;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->SEARCH_GAMECIVS:Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;

    sget-object v1, Laoc/kingdoms/lukasz/menusEditor/GameCivs;->sSearch:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Laoc/kingdoms/lukasz/jakowski/Keyboard;->showKeyboard(Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;Ljava/lang/String;)V

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildEditorGameCivs()V

    return-void

    :cond_6
    new-instance p1, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;

    invoke-direct {p1}, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;-><init>()V

    sput-object p1, Laoc/kingdoms/lukasz/menusEditor/GameCivsEdit;->nCiv:Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;

    sget-object p1, Laoc/kingdoms/lukasz/menusEditor/GameCivsEdit;->nCiv:Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;

    iput-object v0, p1, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;->Tag:Ljava/lang/String;

    sget-object p1, Laoc/kingdoms/lukasz/menusEditor/GameCivsEdit;->nCiv:Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    iput v1, p1, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;->iR:I

    sget-object p1, Laoc/kingdoms/lukasz/menusEditor/GameCivsEdit;->nCiv:Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    iput v1, p1, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;->iG:I

    sget-object p1, Laoc/kingdoms/lukasz/menusEditor/GameCivsEdit;->nCiv:Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    iput v1, p1, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;->iB:I

    sget-object p1, Laoc/kingdoms/lukasz/menusEditor/GameCivsEdit;->nCiv:Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;

    iput-object v0, p1, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;->Wiki:Ljava/lang/String;

    sget-object p1, Laoc/kingdoms/lukasz/menu/View;->EDITOR_GAMECIVS:Laoc/kingdoms/lukasz/menu/View;

    sput-object p1, Laoc/kingdoms/lukasz/menusEditor/GameCivsEdit;->goBackTo:Laoc/kingdoms/lukasz/menu/View;

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v0, Laoc/kingdoms/lukasz/menu/View;->EDITOR_GAMECIVS_EDIT:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {p1, v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->setViewID(Laoc/kingdoms/lukasz/menu/View;)V

    return-void
.end method
