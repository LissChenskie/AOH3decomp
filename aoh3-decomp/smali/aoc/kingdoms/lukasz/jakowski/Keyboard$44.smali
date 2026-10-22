.class Laoc/kingdoms/lukasz/jakowski/Keyboard$44;
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

    iput-object p1, p0, Laoc/kingdoms/lukasz/jakowski/Keyboard$44;->this$0:Laoc/kingdoms/lukasz/jakowski/Keyboard;

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

    sget p1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p1

    iget-object p1, p1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardMessage:Ljava/lang/String;

    iput-object v0, p1, Laoc/kingdoms/lukasz/map/Ruler;->Name:Ljava/lang/String;

    return-void
.end method

.method public delete()V
    .locals 3

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

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardMessage:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardMessage:Ljava/lang/String;

    :goto_0
    sget v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardMessage:Ljava/lang/String;

    iput-object v1, v0, Laoc/kingdoms/lukasz/map/Ruler;->Name:Ljava/lang/String;

    return-void
.end method

.method public save()V
    .locals 2

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardMessage:Ljava/lang/String;

    iput-object v1, v0, Laoc/kingdoms/lukasz/map/Ruler;->Name:Ljava/lang/String;

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Keyboard$44;->this$0:Laoc/kingdoms/lukasz/jakowski/Keyboard;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/Keyboard;->hideKeyboard()V

    return-void
.end method
