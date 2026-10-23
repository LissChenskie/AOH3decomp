.class Laoc/kingdoms/lukasz/jakowski/Keyboard$6;
.super Ljava/lang/Object;
.source "Keyboard.java"

# interfaces
.implements Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/jakowski/Keyboard;->showKeyboard(Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/jakowski/Keyboard;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/jakowski/Keyboard;)V
    .locals 0

    iput-object p1, p0, Laoc/kingdoms/lukasz/jakowski/Keyboard$6;->this$0:Laoc/kingdoms/lukasz/jakowski/Keyboard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public actionType(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardMessage:Ljava/lang/String;

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardMessage:Ljava/lang/String;

    sput-object p1, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo;->renameProvince:Ljava/lang/String;

    sget-object p1, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo;->renameProvince:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x2

    if-le p1, v0, :cond_1

    sget p1, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo;->iProvinceID:I

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/Province;->getCitiesSize()I

    move-result p1

    if-lez p1, :cond_0

    sget p1, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo;->iProvinceID:I

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCity(I)Laoc/kingdoms/lukasz/map/map/City;

    move-result-object p1

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo;->iProvinceID:I

    sget-object v1, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo;->renameProvince:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Laoc/kingdoms/lukasz/map/map/City;->setCityName(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    sget p1, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo;->iProvinceID:I

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p1

    sget-object v0, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo;->renameProvince:Ljava/lang/String;

    invoke-virtual {p1, v0}, Laoc/kingdoms/lukasz/map/province/Province;->setProvinceName(Ljava/lang/String;)V

    new-instance p1, Laoc/kingdoms/lukasz/jakowski/Keyboard$6$1;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "rebuildProvNameData"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo;->iProvinceID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo;->iProvinceID:I

    invoke-direct {p1, p0, v0, v1}, Laoc/kingdoms/lukasz/jakowski/Keyboard$6$1;-><init>(Laoc/kingdoms/lukasz/jakowski/Keyboard$6;Ljava/lang/String;I)V

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    :cond_1
    :goto_0
    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInGame_ProvinceInfo_updateLanguage()V

    return-void
.end method

.method public delete()V
    .locals 4

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardMessage:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardMessage:Ljava/lang/String;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardMessage:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardMessage:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardMessage:Ljava/lang/String;

    :goto_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardMessage:Ljava/lang/String;

    sput-object v0, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo;->renameProvince:Ljava/lang/String;

    sget-object v0, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo;->renameProvince:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x2

    if-le v0, v2, :cond_2

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo;->iProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCitiesSize()I

    move-result v0

    if-lez v0, :cond_1

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo;->iProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCity(I)Laoc/kingdoms/lukasz/map/map/City;

    move-result-object v0

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo;->iProvinceID:I

    sget-object v2, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo;->renameProvince:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/map/map/City;->setCityName(ILjava/lang/String;)V

    goto :goto_1

    :cond_1
    sget v0, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo;->iProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo;->renameProvince:Ljava/lang/String;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->setProvinceName(Ljava/lang/String;)V

    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Keyboard$6$2;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "rebuildProvNameData"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo;->iProvinceID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo;->iProvinceID:I

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/jakowski/Keyboard$6$2;-><init>(Laoc/kingdoms/lukasz/jakowski/Keyboard$6;Ljava/lang/String;I)V

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    :cond_2
    :goto_1
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInGame_ProvinceInfo_updateLanguage()V

    return-void
.end method

.method public save()V
    .locals 3

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardMessage:Ljava/lang/String;

    sput-object v0, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo;->renameProvince:Ljava/lang/String;

    sget-object v0, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo;->renameProvince:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_1

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo;->iProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCitiesSize()I

    move-result v0

    if-lez v0, :cond_0

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo;->iProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCity(I)Laoc/kingdoms/lukasz/map/map/City;

    move-result-object v0

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo;->iProvinceID:I

    sget-object v2, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo;->renameProvince:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/map/map/City;->setCityName(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    sget v0, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo;->iProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo;->renameProvince:Ljava/lang/String;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->setProvinceName(Ljava/lang/String;)V

    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Keyboard$6$3;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "rebuildProvNameData"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo;->iProvinceID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo;->iProvinceID:I

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/jakowski/Keyboard$6$3;-><init>(Laoc/kingdoms/lukasz/jakowski/Keyboard$6;Ljava/lang/String;I)V

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    :cond_1
    :goto_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->redrawnProvinceNames()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInGame_ProvinceInfo_updateLanguage()V

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Keyboard$6;->this$0:Laoc/kingdoms/lukasz/jakowski/Keyboard;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/Keyboard;->hideKeyboard()V

    return-void
.end method
