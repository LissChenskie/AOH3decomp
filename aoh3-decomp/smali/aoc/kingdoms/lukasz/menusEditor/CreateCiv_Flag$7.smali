.class Laoc/kingdoms/lukasz/menusEditor/CreateCiv_Flag$7;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonGame;
.source "CreateCiv_Flag.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusEditor/CreateCiv_Flag;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusEditor/CreateCiv_Flag;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusEditor/CreateCiv_Flag;Ljava/lang/String;IIIIIIZ)V
    .locals 10

    move-object v9, p0

    move-object v0, p1

    iput-object v0, v9, Laoc/kingdoms/lukasz/menusEditor/CreateCiv_Flag$7;->this$0:Laoc/kingdoms/lukasz/menusEditor/CreateCiv_Flag;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame;-><init>(Ljava/lang/String;IIIIIIZ)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .locals 0

    return-void
.end method

.method protected drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 3

    sget-object p4, Laoc/kingdoms/lukasz/jakowski/Game;->flagManager:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusEditor/CreateCiv_Flag$7;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusEditor/CreateCiv_Flag$7;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x22

    add-int/2addr v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusEditor/CreateCiv_Flag$7;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusEditor/CreateCiv_Flag$7;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x16

    add-int/2addr v1, p3

    invoke-virtual {p4, p1, v0, v1}, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->drawDivision_FlagFrameSize(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    sget-object p4, Laoc/kingdoms/lukasz/jakowski/Game;->flagManager:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusEditor/CreateCiv_Flag$7;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusEditor/CreateCiv_Flag$7;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x22

    add-int/2addr v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusEditor/CreateCiv_Flag$7;->getPosY()I

    move-result p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusEditor/CreateCiv_Flag$7;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p2, v1

    add-int/lit8 p2, p2, -0x16

    add-int/2addr p2, p3

    iget p3, p0, Laoc/kingdoms/lukasz/menusEditor/CreateCiv_Flag$7;->iCurrent:I

    invoke-virtual {p4, p1, v0, p2, p3}, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->drawOverlay_FlagFrameSize(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    return-void
.end method
