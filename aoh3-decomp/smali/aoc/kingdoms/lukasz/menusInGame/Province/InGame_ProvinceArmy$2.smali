.class Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy$2;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyGeneral;
.source "InGame_ProvinceArmy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;Ljava/lang/String;IIIIIIIIILjava/lang/String;I)V
    .locals 14

    move-object v13, p0

    move-object v0, p1

    iput-object v0, v13, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy$2;->this$0:Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;

    move-object v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    move/from16 v10, p11

    move-object/from16 v11, p12

    move/from16 v12, p13

    invoke-direct/range {v0 .. v12}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyGeneral;-><init>(Ljava/lang/String;IIIIIIIIILjava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .locals 4

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Generals()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Generals(Z)V

    goto :goto_1

    :cond_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iActiveID:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    sget-object v2, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->key:Ljava/lang/String;

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmyKeyID(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iActiveID:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    sput v0, Laoc/kingdoms/lukasz/menusInGame/InGame_Generals;->assignProvinceID:I

    sget-object v0, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->key:Ljava/lang/String;

    sput-object v0, Laoc/kingdoms/lukasz/menusInGame/InGame_Generals;->assignArmyKey:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    sput v0, Laoc/kingdoms/lukasz/menusInGame/InGame_Generals;->assignProvinceID:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "ArmyNotFound"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToast_Error(Ljava/lang/String;)V

    :goto_0
    sput-boolean v1, Laoc/kingdoms/lukasz/menusInGame/InGame_Generals;->backButton:Z

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Generals()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Generals(Z)V

    :goto_1
    return-void
.end method

.method public actionElementPPM()V
    .locals 0

    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->centerToArmy()V

    return-void
.end method
