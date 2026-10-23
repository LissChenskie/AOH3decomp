.class Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$37;
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

    if-ltz p1, :cond_1

    sget p1, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result p1

    if-nez p1, :cond_1

    sget-boolean p1, Laoc/kingdoms/lukasz/jakowski/CFG;->selectMode:Z

    if-eqz p1, :cond_0

    sget-object p1, Laoc/kingdoms/lukasz/map/FormableCivManager;->activeFormableCiv:Laoc/kingdoms/lukasz/map/FormableCivManager$FormableCiv;

    sget p2, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-virtual {p1, p2}, Laoc/kingdoms/lukasz/map/FormableCivManager$FormableCiv;->addProvince(I)V

    goto :goto_0

    :cond_0
    sget-object p1, Laoc/kingdoms/lukasz/map/FormableCivManager;->activeFormableCiv:Laoc/kingdoms/lukasz/map/FormableCivManager$FormableCiv;

    sget p2, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-virtual {p1, p2}, Laoc/kingdoms/lukasz/map/FormableCivManager$FormableCiv;->removeProvince(I)V

    :cond_1
    :goto_0
    return-void
.end method
