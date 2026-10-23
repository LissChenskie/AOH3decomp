.class Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions$1;
.super Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_FlagCenter2;
.source "InGame_CourtOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions;Ljava/lang/String;ZZI)V
    .locals 0

    iput-object p1, p0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions$1;->this$0:Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions;

    invoke-direct {p0, p2, p3, p4, p5}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_FlagCenter2;-><init>(Ljava/lang/String;ZZI)V

    return-void
.end method


# virtual methods
.method public action()V
    .locals 1

    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_FlagCenter2;->action()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->setOrderOfMenu_InGameCourt()V

    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIILaoc/kingdoms/lukasz/menu_element/Status;)V
    .locals 7

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v3, p2, v0

    sget p2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 p2, p2, 0x2

    add-int v5, p4, p2

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move-object v6, p5

    invoke-super/range {v1 .. v6}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_FlagCenter2;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIILaoc/kingdoms/lukasz/menu_element/Status;)V

    return-void
.end method

.method public getFlagCivID()I
    .locals 1

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    return v0
.end method

.method public getTime()J
    .locals 2

    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->lTime2:J

    return-wide v0
.end method
