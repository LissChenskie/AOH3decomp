.class public Laoc/kingdoms/lukasz/jakowski/Keyboard;
.super Ljava/lang/Object;
.source "Keyboard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;,
        Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;
    }
.end annotation


# static fields
.field public static VERTICAL_LINE_UPDATE_TIME:I = 0x177

.field public static keyboardAction:Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action; = null

.field public static keyboardActionType:Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType; = null

.field public static keyboardMessage:Ljava/lang/String; = ""

.field public static keyboardMode:Z

.field public static keyboardVerticalLine:Z

.field public static verticalLineTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->verticalLineTime:J

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->NONE:Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardActionType:Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getKeyboardVerticalLine()Ljava/lang/String;
    .locals 1

    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardVerticalLine:Z

    if-eqz v0, :cond_0

    const-string v0, "|"

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public static updateKeyboardVerticalLine()V
    .locals 4

    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardMode:Z

    if-eqz v0, :cond_0

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->verticalLineTime:J

    sget v2, Laoc/kingdoms/lukasz/jakowski/Keyboard;->VERTICAL_LINE_UPDATE_TIME:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardVerticalLine:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardVerticalLine:Z

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->verticalLineTime:J

    :cond_0
    return-void
.end method


# virtual methods
.method public final hideKeyboard()V
    .locals 2

    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardMode:Z

    if-eqz v0, :cond_1

    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardAction:Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;

    if-eqz v0, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardActionType:Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->NONE:Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;

    if-eq v0, v1, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardActionType:Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->NONE:Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardActionType:Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->CONSOLE:Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;

    if-eq v0, v1, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardAction:Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;

    invoke-interface {v0}, Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;->save()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    sput-boolean v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardMode:Z

    const-string v1, ""

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardMessage:Ljava/lang/String;

    sput-boolean v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardVerticalLine:Z

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->NONE:Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardActionType:Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;

    new-instance v1, Laoc/kingdoms/lukasz/jakowski/Keyboard$53;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/jakowski/Keyboard$53;-><init>(Laoc/kingdoms/lukasz/jakowski/Keyboard;)V

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardAction:Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v1

    if-nez v1, :cond_1

    :try_start_1
    sget-object v1, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/Input;->setOnscreenKeyboardVisible(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void
.end method

.method public final showKeyboard(Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    sput-boolean v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardMode:Z

    sput-object p2, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardMessage:Ljava/lang/String;

    sget-wide v1, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v1, Laoc/kingdoms/lukasz/jakowski/Keyboard;->verticalLineTime:J

    sput-boolean v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardVerticalLine:Z

    sput-object p1, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardActionType:Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result p2

    if-nez p2, :cond_0

    :try_start_0
    sget-object p2, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    sget-object v1, Lcom/badlogic/gdx/Input$OnscreenKeyboardType;->Default:Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

    invoke-interface {p2, v0, v1}, Lcom/badlogic/gdx/Input;->setOnscreenKeyboardVisible(ZLcom/badlogic/gdx/Input$OnscreenKeyboardType;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Keyboard$54;->$SwitchMap$aoc$kingdoms$lukasz$jakowski$Keyboard$KeyboardActionType:[I

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->ordinal()I

    move-result p1

    aget p1, p2, p1

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    new-instance p1, Laoc/kingdoms/lukasz/jakowski/Keyboard$52;

    invoke-direct {p1, p0}, Laoc/kingdoms/lukasz/jakowski/Keyboard$52;-><init>(Laoc/kingdoms/lukasz/jakowski/Keyboard;)V

    sput-object p1, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardAction:Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;

    return-void

    :pswitch_1
    new-instance p1, Laoc/kingdoms/lukasz/jakowski/Keyboard$51;

    invoke-direct {p1, p0}, Laoc/kingdoms/lukasz/jakowski/Keyboard$51;-><init>(Laoc/kingdoms/lukasz/jakowski/Keyboard;)V

    sput-object p1, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardAction:Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;

    return-void

    :pswitch_2
    new-instance p1, Laoc/kingdoms/lukasz/jakowski/Keyboard$50;

    invoke-direct {p1, p0}, Laoc/kingdoms/lukasz/jakowski/Keyboard$50;-><init>(Laoc/kingdoms/lukasz/jakowski/Keyboard;)V

    sput-object p1, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardAction:Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;

    return-void

    :pswitch_3
    new-instance p1, Laoc/kingdoms/lukasz/jakowski/Keyboard$49;

    invoke-direct {p1, p0}, Laoc/kingdoms/lukasz/jakowski/Keyboard$49;-><init>(Laoc/kingdoms/lukasz/jakowski/Keyboard;)V

    sput-object p1, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardAction:Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;

    return-void

    :pswitch_4
    new-instance p1, Laoc/kingdoms/lukasz/jakowski/Keyboard$48;

    invoke-direct {p1, p0}, Laoc/kingdoms/lukasz/jakowski/Keyboard$48;-><init>(Laoc/kingdoms/lukasz/jakowski/Keyboard;)V

    sput-object p1, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardAction:Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;

    return-void

    :pswitch_5
    new-instance p1, Laoc/kingdoms/lukasz/jakowski/Keyboard$47;

    invoke-direct {p1, p0}, Laoc/kingdoms/lukasz/jakowski/Keyboard$47;-><init>(Laoc/kingdoms/lukasz/jakowski/Keyboard;)V

    sput-object p1, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardAction:Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;

    return-void

    :pswitch_6
    new-instance p1, Laoc/kingdoms/lukasz/jakowski/Keyboard$46;

    invoke-direct {p1, p0}, Laoc/kingdoms/lukasz/jakowski/Keyboard$46;-><init>(Laoc/kingdoms/lukasz/jakowski/Keyboard;)V

    sput-object p1, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardAction:Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;

    return-void

    :pswitch_7
    new-instance p1, Laoc/kingdoms/lukasz/jakowski/Keyboard$45;

    invoke-direct {p1, p0}, Laoc/kingdoms/lukasz/jakowski/Keyboard$45;-><init>(Laoc/kingdoms/lukasz/jakowski/Keyboard;)V

    sput-object p1, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardAction:Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;

    return-void

    :pswitch_8
    new-instance p1, Laoc/kingdoms/lukasz/jakowski/Keyboard$44;

    invoke-direct {p1, p0}, Laoc/kingdoms/lukasz/jakowski/Keyboard$44;-><init>(Laoc/kingdoms/lukasz/jakowski/Keyboard;)V

    sput-object p1, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardAction:Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;

    return-void

    :pswitch_9
    new-instance p1, Laoc/kingdoms/lukasz/jakowski/Keyboard$43;

    invoke-direct {p1, p0}, Laoc/kingdoms/lukasz/jakowski/Keyboard$43;-><init>(Laoc/kingdoms/lukasz/jakowski/Keyboard;)V

    sput-object p1, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardAction:Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;

    return-void

    :pswitch_a
    new-instance p1, Laoc/kingdoms/lukasz/jakowski/Keyboard$42;

    invoke-direct {p1, p0}, Laoc/kingdoms/lukasz/jakowski/Keyboard$42;-><init>(Laoc/kingdoms/lukasz/jakowski/Keyboard;)V

    sput-object p1, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardAction:Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;

    return-void

    :pswitch_b
    new-instance p1, Laoc/kingdoms/lukasz/jakowski/Keyboard$41;

    invoke-direct {p1, p0}, Laoc/kingdoms/lukasz/jakowski/Keyboard$41;-><init>(Laoc/kingdoms/lukasz/jakowski/Keyboard;)V

    sput-object p1, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardAction:Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;

    return-void

    :pswitch_c
    new-instance p1, Laoc/kingdoms/lukasz/jakowski/Keyboard$40;

    invoke-direct {p1, p0}, Laoc/kingdoms/lukasz/jakowski/Keyboard$40;-><init>(Laoc/kingdoms/lukasz/jakowski/Keyboard;)V

    sput-object p1, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardAction:Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;

    return-void

    :pswitch_d
    new-instance p1, Laoc/kingdoms/lukasz/jakowski/Keyboard$39;

    invoke-direct {p1, p0}, Laoc/kingdoms/lukasz/jakowski/Keyboard$39;-><init>(Laoc/kingdoms/lukasz/jakowski/Keyboard;)V

    sput-object p1, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardAction:Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;

    return-void

    :pswitch_e
    new-instance p1, Laoc/kingdoms/lukasz/jakowski/Keyboard$38;

    invoke-direct {p1, p0}, Laoc/kingdoms/lukasz/jakowski/Keyboard$38;-><init>(Laoc/kingdoms/lukasz/jakowski/Keyboard;)V

    sput-object p1, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardAction:Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;

    return-void

    :pswitch_f
    new-instance p1, Laoc/kingdoms/lukasz/jakowski/Keyboard$37;

    invoke-direct {p1, p0}, Laoc/kingdoms/lukasz/jakowski/Keyboard$37;-><init>(Laoc/kingdoms/lukasz/jakowski/Keyboard;)V

    sput-object p1, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardAction:Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;

    return-void

    :pswitch_10
    new-instance p1, Laoc/kingdoms/lukasz/jakowski/Keyboard$36;

    invoke-direct {p1, p0}, Laoc/kingdoms/lukasz/jakowski/Keyboard$36;-><init>(Laoc/kingdoms/lukasz/jakowski/Keyboard;)V

    sput-object p1, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardAction:Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;

    return-void

    :pswitch_11
    new-instance p1, Laoc/kingdoms/lukasz/jakowski/Keyboard$35;

    invoke-direct {p1, p0}, Laoc/kingdoms/lukasz/jakowski/Keyboard$35;-><init>(Laoc/kingdoms/lukasz/jakowski/Keyboard;)V

    sput-object p1, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardAction:Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;

    return-void

    :pswitch_12
    new-instance p1, Laoc/kingdoms/lukasz/jakowski/Keyboard$34;

    invoke-direct {p1, p0}, Laoc/kingdoms/lukasz/jakowski/Keyboard$34;-><init>(Laoc/kingdoms/lukasz/jakowski/Keyboard;)V

    sput-object p1, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardAction:Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;

    return-void

    :pswitch_13
    new-instance p1, Laoc/kingdoms/lukasz/jakowski/Keyboard$33;

    invoke-direct {p1, p0}, Laoc/kingdoms/lukasz/jakowski/Keyboard$33;-><init>(Laoc/kingdoms/lukasz/jakowski/Keyboard;)V

    sput-object p1, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardAction:Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;

    return-void

    :pswitch_14
    new-instance p1, Laoc/kingdoms/lukasz/jakowski/Keyboard$32;

    invoke-direct {p1, p0}, Laoc/kingdoms/lukasz/jakowski/Keyboard$32;-><init>(Laoc/kingdoms/lukasz/jakowski/Keyboard;)V

    sput-object p1, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardAction:Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;

    return-void

    :pswitch_15
    new-instance p1, Laoc/kingdoms/lukasz/jakowski/Keyboard$31;

    invoke-direct {p1, p0}, Laoc/kingdoms/lukasz/jakowski/Keyboard$31;-><init>(Laoc/kingdoms/lukasz/jakowski/Keyboard;)V

    sput-object p1, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardAction:Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;

    return-void

    :pswitch_16
    new-instance p1, Laoc/kingdoms/lukasz/jakowski/Keyboard$30;

    invoke-direct {p1, p0}, Laoc/kingdoms/lukasz/jakowski/Keyboard$30;-><init>(Laoc/kingdoms/lukasz/jakowski/Keyboard;)V

    sput-object p1, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardAction:Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;

    return-void

    :pswitch_17
    new-instance p1, Laoc/kingdoms/lukasz/jakowski/Keyboard$29;

    invoke-direct {p1, p0}, Laoc/kingdoms/lukasz/jakowski/Keyboard$29;-><init>(Laoc/kingdoms/lukasz/jakowski/Keyboard;)V

    sput-object p1, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardAction:Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;

    return-void

    :pswitch_18
    new-instance p1, Laoc/kingdoms/lukasz/jakowski/Keyboard$28;

    invoke-direct {p1, p0}, Laoc/kingdoms/lukasz/jakowski/Keyboard$28;-><init>(Laoc/kingdoms/lukasz/jakowski/Keyboard;)V

    sput-object p1, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardAction:Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;

    return-void

    :pswitch_19
    new-instance p1, Laoc/kingdoms/lukasz/jakowski/Keyboard$27;

    invoke-direct {p1, p0}, Laoc/kingdoms/lukasz/jakowski/Keyboard$27;-><init>(Laoc/kingdoms/lukasz/jakowski/Keyboard;)V

    sput-object p1, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardAction:Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;

    return-void

    :pswitch_1a
    new-instance p1, Laoc/kingdoms/lukasz/jakowski/Keyboard$26;

    invoke-direct {p1, p0}, Laoc/kingdoms/lukasz/jakowski/Keyboard$26;-><init>(Laoc/kingdoms/lukasz/jakowski/Keyboard;)V

    sput-object p1, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardAction:Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;

    return-void

    :pswitch_1b
    new-instance p1, Laoc/kingdoms/lukasz/jakowski/Keyboard$25;

    invoke-direct {p1, p0}, Laoc/kingdoms/lukasz/jakowski/Keyboard$25;-><init>(Laoc/kingdoms/lukasz/jakowski/Keyboard;)V

    sput-object p1, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardAction:Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;

    return-void

    :pswitch_1c
    new-instance p1, Laoc/kingdoms/lukasz/jakowski/Keyboard$24;

    invoke-direct {p1, p0}, Laoc/kingdoms/lukasz/jakowski/Keyboard$24;-><init>(Laoc/kingdoms/lukasz/jakowski/Keyboard;)V

    sput-object p1, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardAction:Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;

    return-void

    :pswitch_1d
    new-instance p1, Laoc/kingdoms/lukasz/jakowski/Keyboard$23;

    invoke-direct {p1, p0}, Laoc/kingdoms/lukasz/jakowski/Keyboard$23;-><init>(Laoc/kingdoms/lukasz/jakowski/Keyboard;)V

    sput-object p1, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardAction:Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;

    return-void

    :pswitch_1e
    new-instance p1, Laoc/kingdoms/lukasz/jakowski/Keyboard$22;

    invoke-direct {p1, p0}, Laoc/kingdoms/lukasz/jakowski/Keyboard$22;-><init>(Laoc/kingdoms/lukasz/jakowski/Keyboard;)V

    sput-object p1, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardAction:Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;

    return-void

    :pswitch_1f
    new-instance p1, Laoc/kingdoms/lukasz/jakowski/Keyboard$21;

    invoke-direct {p1, p0}, Laoc/kingdoms/lukasz/jakowski/Keyboard$21;-><init>(Laoc/kingdoms/lukasz/jakowski/Keyboard;)V

    sput-object p1, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardAction:Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;

    return-void

    :pswitch_20
    new-instance p1, Laoc/kingdoms/lukasz/jakowski/Keyboard$20;

    invoke-direct {p1, p0}, Laoc/kingdoms/lukasz/jakowski/Keyboard$20;-><init>(Laoc/kingdoms/lukasz/jakowski/Keyboard;)V

    sput-object p1, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardAction:Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;

    return-void

    :pswitch_21
    new-instance p1, Laoc/kingdoms/lukasz/jakowski/Keyboard$19;

    invoke-direct {p1, p0}, Laoc/kingdoms/lukasz/jakowski/Keyboard$19;-><init>(Laoc/kingdoms/lukasz/jakowski/Keyboard;)V

    sput-object p1, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardAction:Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;

    return-void

    :pswitch_22
    new-instance p1, Laoc/kingdoms/lukasz/jakowski/Keyboard$18;

    invoke-direct {p1, p0}, Laoc/kingdoms/lukasz/jakowski/Keyboard$18;-><init>(Laoc/kingdoms/lukasz/jakowski/Keyboard;)V

    sput-object p1, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardAction:Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;

    return-void

    :pswitch_23
    new-instance p1, Laoc/kingdoms/lukasz/jakowski/Keyboard$17;

    invoke-direct {p1, p0}, Laoc/kingdoms/lukasz/jakowski/Keyboard$17;-><init>(Laoc/kingdoms/lukasz/jakowski/Keyboard;)V

    sput-object p1, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardAction:Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;

    return-void

    :pswitch_24
    new-instance p1, Laoc/kingdoms/lukasz/jakowski/Keyboard$16;

    invoke-direct {p1, p0}, Laoc/kingdoms/lukasz/jakowski/Keyboard$16;-><init>(Laoc/kingdoms/lukasz/jakowski/Keyboard;)V

    sput-object p1, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardAction:Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;

    return-void

    :pswitch_25
    new-instance p1, Laoc/kingdoms/lukasz/jakowski/Keyboard$15;

    invoke-direct {p1, p0}, Laoc/kingdoms/lukasz/jakowski/Keyboard$15;-><init>(Laoc/kingdoms/lukasz/jakowski/Keyboard;)V

    sput-object p1, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardAction:Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;

    return-void

    :pswitch_26
    new-instance p1, Laoc/kingdoms/lukasz/jakowski/Keyboard$14;

    invoke-direct {p1, p0}, Laoc/kingdoms/lukasz/jakowski/Keyboard$14;-><init>(Laoc/kingdoms/lukasz/jakowski/Keyboard;)V

    sput-object p1, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardAction:Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;

    return-void

    :pswitch_27
    new-instance p1, Laoc/kingdoms/lukasz/jakowski/Keyboard$13;

    invoke-direct {p1, p0}, Laoc/kingdoms/lukasz/jakowski/Keyboard$13;-><init>(Laoc/kingdoms/lukasz/jakowski/Keyboard;)V

    sput-object p1, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardAction:Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;

    return-void

    :pswitch_28
    new-instance p1, Laoc/kingdoms/lukasz/jakowski/Keyboard$12;

    invoke-direct {p1, p0}, Laoc/kingdoms/lukasz/jakowski/Keyboard$12;-><init>(Laoc/kingdoms/lukasz/jakowski/Keyboard;)V

    sput-object p1, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardAction:Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;

    return-void

    :pswitch_29
    new-instance p1, Laoc/kingdoms/lukasz/jakowski/Keyboard$11;

    invoke-direct {p1, p0}, Laoc/kingdoms/lukasz/jakowski/Keyboard$11;-><init>(Laoc/kingdoms/lukasz/jakowski/Keyboard;)V

    sput-object p1, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardAction:Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;

    return-void

    :pswitch_2a
    new-instance p1, Laoc/kingdoms/lukasz/jakowski/Keyboard$10;

    invoke-direct {p1, p0}, Laoc/kingdoms/lukasz/jakowski/Keyboard$10;-><init>(Laoc/kingdoms/lukasz/jakowski/Keyboard;)V

    sput-object p1, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardAction:Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;

    return-void

    :pswitch_2b
    new-instance p1, Laoc/kingdoms/lukasz/jakowski/Keyboard$9;

    invoke-direct {p1, p0}, Laoc/kingdoms/lukasz/jakowski/Keyboard$9;-><init>(Laoc/kingdoms/lukasz/jakowski/Keyboard;)V

    sput-object p1, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardAction:Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;

    return-void

    :pswitch_2c
    new-instance p1, Laoc/kingdoms/lukasz/jakowski/Keyboard$8;

    invoke-direct {p1, p0}, Laoc/kingdoms/lukasz/jakowski/Keyboard$8;-><init>(Laoc/kingdoms/lukasz/jakowski/Keyboard;)V

    sput-object p1, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardAction:Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;

    return-void

    :pswitch_2d
    new-instance p1, Laoc/kingdoms/lukasz/jakowski/Keyboard$7;

    invoke-direct {p1, p0}, Laoc/kingdoms/lukasz/jakowski/Keyboard$7;-><init>(Laoc/kingdoms/lukasz/jakowski/Keyboard;)V

    sput-object p1, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardAction:Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;

    return-void

    :pswitch_2e
    new-instance p1, Laoc/kingdoms/lukasz/jakowski/Keyboard$6;

    invoke-direct {p1, p0}, Laoc/kingdoms/lukasz/jakowski/Keyboard$6;-><init>(Laoc/kingdoms/lukasz/jakowski/Keyboard;)V

    sput-object p1, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardAction:Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;

    return-void

    :pswitch_2f
    new-instance p1, Laoc/kingdoms/lukasz/jakowski/Keyboard$5;

    invoke-direct {p1, p0}, Laoc/kingdoms/lukasz/jakowski/Keyboard$5;-><init>(Laoc/kingdoms/lukasz/jakowski/Keyboard;)V

    sput-object p1, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardAction:Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;

    return-void

    :pswitch_30
    new-instance p1, Laoc/kingdoms/lukasz/jakowski/Keyboard$4;

    invoke-direct {p1, p0}, Laoc/kingdoms/lukasz/jakowski/Keyboard$4;-><init>(Laoc/kingdoms/lukasz/jakowski/Keyboard;)V

    sput-object p1, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardAction:Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;

    return-void

    :pswitch_31
    new-instance p1, Laoc/kingdoms/lukasz/jakowski/Keyboard$3;

    invoke-direct {p1, p0}, Laoc/kingdoms/lukasz/jakowski/Keyboard$3;-><init>(Laoc/kingdoms/lukasz/jakowski/Keyboard;)V

    sput-object p1, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardAction:Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;

    return-void

    :pswitch_32
    new-instance p1, Laoc/kingdoms/lukasz/jakowski/Keyboard$2;

    invoke-direct {p1, p0}, Laoc/kingdoms/lukasz/jakowski/Keyboard$2;-><init>(Laoc/kingdoms/lukasz/jakowski/Keyboard;)V

    sput-object p1, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardAction:Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;

    return-void

    :pswitch_33
    new-instance p1, Laoc/kingdoms/lukasz/jakowski/Keyboard$1;

    invoke-direct {p1, p0}, Laoc/kingdoms/lukasz/jakowski/Keyboard$1;-><init>(Laoc/kingdoms/lukasz/jakowski/Keyboard;)V

    sput-object p1, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardAction:Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
