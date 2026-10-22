.class Laoc/kingdoms/lukasz/menusInGame/InGame$14;
.super Laoc/kingdoms/lukasz/menu_element/Minimap;
.source "InGame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/InGame;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/InGame;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/InGame;II)V
    .locals 0

    iput-object p1, p0, Laoc/kingdoms/lukasz/menusInGame/InGame$14;->this$0:Laoc/kingdoms/lukasz/menusInGame/InGame;

    invoke-direct {p0, p2, p3}, Laoc/kingdoms/lukasz/menu_element/Minimap;-><init>(II)V

    return-void
.end method


# virtual methods
.method public getPosX()I
    .locals 2

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame$14;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getPosY()I
    .locals 2

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame$14;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/menusInGame/InGame;->iMinimapPosY:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getVisible()Z
    .locals 1

    invoke-super {p0}, Laoc/kingdoms/lukasz/menu_element/Minimap;->getVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getHideMenuZoomOut()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
