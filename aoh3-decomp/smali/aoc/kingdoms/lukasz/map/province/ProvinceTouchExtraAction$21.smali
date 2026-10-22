.class Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$21;
.super Ljava/lang/Object;
.source "ProvinceTouchExtraAction.java"

# interfaces
.implements Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$ExtraAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction;->updateActionUp_SetActiveProvinceID_ExtraAction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public extraAction(IIII)V
    .locals 0

    sget p1, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    if-ltz p1, :cond_3

    sget p1, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p1

    iget p1, p1, Laoc/kingdoms/lukasz/map/province/Province;->wonderID:I

    if-ltz p1, :cond_3

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Wonder()Z

    move-result p1

    if-eqz p1, :cond_0

    sget p1, Laoc/kingdoms/lukasz/menusInGame/InGame_Wonder;->iProvinceID:I

    sget p2, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    if-eq p1, p2, :cond_1

    sget p1, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    sput p1, Laoc/kingdoms/lukasz/menusInGame/InGame_Wonder;->iProvinceID:I

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Wonder()V

    const-wide/16 p1, 0x0

    sput-wide p1, Laoc/kingdoms/lukasz/menusInGame/InGame_Wonder;->lTime:J

    goto :goto_0

    :cond_0
    sget p1, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    sput p1, Laoc/kingdoms/lukasz/menusInGame/InGame_Wonder;->iProvinceID:I

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Wonder()V

    :cond_1
    :goto_0
    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Court()Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Civ()Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/menu/MenuManager;->hideCourtCiv()V

    :cond_3
    return-void
.end method
