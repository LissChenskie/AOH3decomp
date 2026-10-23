.class Laoc/kingdoms/lukasz/jakowski/Keyboard$2;
.super Ljava/lang/Object;
.source "Keyboard.java"

# interfaces
.implements Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/jakowski/Keyboard;->showKeyboard(Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/jakowski/Keyboard;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/jakowski/Keyboard;)V
    .locals 0

    iput-object p1, p0, Laoc/kingdoms/lukasz/jakowski/Keyboard$2;->this$0:Laoc/kingdoms/lukasz/jakowski/Keyboard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public actionType(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardMessage:Ljava/lang/String;

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardMessage:Ljava/lang/String;

    sput-object p1, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs;->sSearch:Ljava/lang/String;

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_CourtSearchCivs()V

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Court(Z)V

    const-wide/16 v0, 0x0

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->lTime:J

    return-void
.end method

.method public delete()V
    .locals 4

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardMessage:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardMessage:Ljava/lang/String;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardMessage:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardMessage:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    sget-object v0, Laoc/kingdoms/lukasz/map/technology/Bhs/fiRhHJntP;->hiLxECO:Ljava/lang/String;

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardMessage:Ljava/lang/String;

    :goto_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardMessage:Ljava/lang/String;

    sput-object v0, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs;->sSearch:Ljava/lang/String;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_CourtSearchCivs()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Court(Z)V

    const-wide/16 v0, 0x0

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->lTime:J

    return-void
.end method

.method public save()V
    .locals 2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardMessage:Ljava/lang/String;

    sput-object v0, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldCivs;->sSearch:Ljava/lang/String;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Court()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_CourtSearchCivs()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Court(Z)V

    const-wide/16 v0, 0x0

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->lTime:J

    :cond_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Keyboard$2;->this$0:Laoc/kingdoms/lukasz/jakowski/Keyboard;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/Keyboard;->hideKeyboard()V

    return-void
.end method
