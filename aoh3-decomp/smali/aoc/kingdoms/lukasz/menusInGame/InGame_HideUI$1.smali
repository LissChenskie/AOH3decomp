.class Laoc/kingdoms/lukasz/menusInGame/InGame_HideUI$1;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonTopDate;
.source "InGame_HideUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/InGame_HideUI;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/InGame_HideUI;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/InGame_HideUI;Ljava/lang/String;II)V
    .locals 0

    iput-object p1, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_HideUI$1;->this$0:Laoc/kingdoms/lukasz/menusInGame/InGame_HideUI;

    invoke-direct {p0, p2, p3, p4}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopDate;-><init>(Ljava/lang/String;II)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .locals 2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    iget-boolean v1, v1, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->play:Z

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, v0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->play:Z

    return-void
.end method

.method protected drawButtonBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 0

    return-void
.end method

.method public getPosX()I
    .locals 2

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/InGame;->getDatePadding()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_HideUI$1;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getSFX()I
    .locals 1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->play:Z

    if-eqz v0, :cond_0

    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_CLICK_TOP:I

    goto :goto_0

    :cond_0
    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->PLAY:I

    :goto_0
    return v0
.end method
