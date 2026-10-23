.class Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Religion$10;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Religion;
.source "InGame_Court_Religion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Religion;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Religion;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Religion;Ljava/lang/String;IIIIIII)V
    .locals 10

    move-object v9, p0

    move-object v0, p1

    iput-object v0, v9, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Religion$10;->this$0:Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Religion;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Religion;-><init>(Ljava/lang/String;IIIIIII)V

    return-void
.end method


# virtual methods
.method protected drawButtonBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Religion;->drawButtonBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    iget p1, p0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Religion$10;->id:I

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/Province;->getReligion()I

    move-result p1

    iget p2, p0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Religion$10;->imageID:I

    if-eq p1, p2, :cond_0

    new-instance p1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Religion$10$1;

    const-string p2, "rebuildConvertReligion"

    invoke-direct {p1, p0, p2}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Religion$10$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Religion$10;Ljava/lang/String;)V

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    :cond_0
    return-void
.end method
