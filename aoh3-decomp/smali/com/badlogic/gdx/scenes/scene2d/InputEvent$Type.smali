.class public final enum Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;
.super Ljava/lang/Enum;
.source "InputEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

.field public static final enum enter:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

.field public static final enum exit:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

.field public static final enum keyDown:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

.field public static final enum keyTyped:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

.field public static final enum keyUp:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

.field public static final enum mouseMoved:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

.field public static final enum scrolled:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

.field public static final enum touchDown:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

.field public static final enum touchDragged:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

.field public static final enum touchUp:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    const-string v1, "touchDown"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->touchDown:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    const-string v2, "touchUp"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->touchUp:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    const-string v3, "touchDragged"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->touchDragged:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    const-string v4, "mouseMoved"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->mouseMoved:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    const-string v5, "enter"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->enter:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    const-string v6, "exit"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->exit:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    const-string v7, "scrolled"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->scrolled:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    new-instance v7, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    const-string v8, "keyDown"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->keyDown:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    new-instance v8, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    const-string v9, "keyUp"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->keyUp:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    new-instance v9, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    const-string v10, "keyTyped"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->keyTyped:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    filled-new-array/range {v0 .. v9}, [Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->$VALUES:[Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;
    .locals 1

    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    return-object p0
.end method

.method public static values()[Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->$VALUES:[Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    invoke-virtual {v0}, [Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    return-object v0
.end method
