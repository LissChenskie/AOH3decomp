.class public Laoc/kingdoms/lukasz/menus/CloudsMenu$CloudAnimation;
.super Ljava/lang/Object;
.source "CloudsMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/menus/CloudsMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CloudAnimation"
.end annotation


# instance fields
.field fAlpha:F

.field fRotation:F

.field iCloudID:I

.field iPosX:I

.field iPosY:I

.field final synthetic this$0:Laoc/kingdoms/lukasz/menus/CloudsMenu;


# direct methods
.method public constructor <init>(Laoc/kingdoms/lukasz/menus/CloudsMenu;III)V
    .locals 0

    iput-object p1, p0, Laoc/kingdoms/lukasz/menus/CloudsMenu$CloudAnimation;->this$0:Laoc/kingdoms/lukasz/menus/CloudsMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Laoc/kingdoms/lukasz/menus/CloudsMenu$CloudAnimation;->iCloudID:I

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->cloudsAnimation:Laoc/kingdoms/lukasz/map/clouds/CloudsManager;

    iget-object p1, p1, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->imageCloud:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    sub-int/2addr p3, p1

    iput p3, p0, Laoc/kingdoms/lukasz/menus/CloudsMenu$CloudAnimation;->iPosX:I

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->cloudsAnimation:Laoc/kingdoms/lukasz/map/clouds/CloudsManager;

    iget-object p1, p1, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->imageCloud:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    sub-int/2addr p4, p1

    iput p4, p0, Laoc/kingdoms/lukasz/menus/CloudsMenu$CloudAnimation;->iPosY:I

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    const/16 p2, 0xfa

    invoke-virtual {p1, p2}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float/2addr p1, p2

    const p2, 0x3dcccccd    # 0.1f

    add-float/2addr p1, p2

    iput p1, p0, Laoc/kingdoms/lukasz/menus/CloudsMenu$CloudAnimation;->fAlpha:F

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    const/16 p2, 0x168

    invoke-virtual {p1, p2}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Laoc/kingdoms/lukasz/menus/CloudsMenu$CloudAnimation;->fRotation:F

    return-void
.end method
