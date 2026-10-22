.class Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment$16;
.super Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG;
.source "InGame_RightGovernment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment;Ljava/lang/String;ZZI)V
    .locals 0

    iput-object p1, p0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment$16;->this$0:Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment;

    invoke-direct {p0, p2, p3, p4, p5}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG;-><init>(Ljava/lang/String;ZZI)V

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIILaoc/kingdoms/lukasz/menu_element/Status;)V
    .locals 7

    iget v0, p0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment$16;->imageID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment$16;->getHeight()I

    move-result v0

    sub-int v4, p3, v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment$16;->getHeight()I

    move-result v6

    move-object v2, p1

    move v3, p2

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    invoke-virtual/range {p0 .. p5}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment$16;->drawGradient(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIILaoc/kingdoms/lukasz/menu_element/Status;)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    div-int/lit8 v0, v0, 0x2

    add-int v3, p2, v0

    move-object v1, p0

    move v4, p3

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment$16;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIILaoc/kingdoms/lukasz/menu_element/Status;)V

    return-void
.end method

.method public getTime()J
    .locals 2

    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment;->lTime2:J

    return-wide v0
.end method
