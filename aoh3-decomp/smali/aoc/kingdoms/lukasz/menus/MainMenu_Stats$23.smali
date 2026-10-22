.class Laoc/kingdoms/lukasz/menus/MainMenu_Stats$23;
.super Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;
.source "MainMenu_Stats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menus/MainMenu_Stats;->beginClip(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menus/MainMenu_Stats;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menus/MainMenu_Stats;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Laoc/kingdoms/lukasz/menus/MainMenu_Stats$23;->this$0:Laoc/kingdoms/lukasz/menus/MainMenu_Stats;

    invoke-direct {p0, p2}, Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public update()V
    .locals 2

    invoke-static {}, Laoc/kingdoms/lukasz/menus/InitGame;->loadBackground()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Laoc/kingdoms/lukasz/menus/MainMenu;->bgTIME:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Laoc/kingdoms/lukasz/menus/MainMenu;->bgTIME_CHANGE:J

    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/menus/MainMenu;->bgAlpha:F

    return-void
.end method
