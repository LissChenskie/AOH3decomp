.class Laoc/kingdoms/lukasz/menu_element/button/ButtonRecruitingArmy$1;
.super Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;
.source "ButtonRecruitingArmy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menu_element/button/ButtonRecruitingArmy;->drawButtonBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menu_element/button/ButtonRecruitingArmy;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menu_element/button/ButtonRecruitingArmy;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonRecruitingArmy$1;->this$0:Laoc/kingdoms/lukasz/menu_element/button/ButtonRecruitingArmy;

    invoke-direct {p0, p2}, Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public update()V
    .locals 2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_ProvinceInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_ProvinceInfo(Z)V

    :cond_0
    return-void
.end method
