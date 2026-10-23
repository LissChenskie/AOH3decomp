.class public Laoc/kingdoms/lukasz/jakowski/AA_Game;
.super Lcom/badlogic/gdx/ApplicationAdapter;
.source "AA_Game.java"


# instance fields
.field private renderer:Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;

.field private touch:Laoc/kingdoms/lukasz/jakowski/Touch;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/badlogic/gdx/ApplicationAdapter;-><init>()V

    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Touch;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/Touch;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/AA_Game;->touch:Laoc/kingdoms/lukasz/jakowski/Touch;

    return-void
.end method

.method static synthetic access$000(Laoc/kingdoms/lukasz/jakowski/AA_Game;)Laoc/kingdoms/lukasz/jakowski/Touch;
    .locals 0

    iget-object p0, p0, Laoc/kingdoms/lukasz/jakowski/AA_Game;->touch:Laoc/kingdoms/lukasz/jakowski/Touch;

    return-object p0
.end method

.method private static final initGame_LoadImages()V
    .locals 4

    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    sget-object v1, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    const-string v3, "ui/picker/sv.png"

    invoke-static {v3, v0, v1, v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->addImage(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/textures/Images;->pickerSV:I

    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    sget-object v1, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    const-string v3, "ui/picker/hue.png"

    invoke-static {v3, v0, v1, v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->addImage(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/textures/Images;->pickerHUE:I

    const-string v0, "ui/picker/pos.png"

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/textures/Images;->pickerSVPos:I

    const-string v0, "ui/picker/edge.png"

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/textures/Images;->pickerEdge:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ui/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "scroll/position.png"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/textures/Images;->scroll_position:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "scroll/position_active.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/textures/Images;->scroll_position_active:I

    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    sget-object v1, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->Repeat:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    const-string v3, "ui/patterns/0.png"

    invoke-static {v3, v0, v1, v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->addImage(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/textures/Images;->patt:I

    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    sget-object v1, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->Repeat:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    const-string v3, "ui/patterns/1.png"

    invoke-static {v3, v0, v1, v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->addImage(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/textures/Images;->patt2:I

    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    sget-object v1, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->Repeat:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    const/4 v3, 0x0

    sget-object v3, Landroidx/core/internal/oiV/CoLRpi;->kEvtgFXABfOKtY:Ljava/lang/String;

    invoke-static {v3, v0, v1, v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->addImage(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/textures/Images;->patt3:I

    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    sget-object v1, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->Repeat:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    const-string v3, "ui/patterns/3.png"

    invoke-static {v3, v0, v1, v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->addImage(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/textures/Images;->patt4:I

    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    sget-object v1, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->Repeat:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    const-string v3, "ui/patterns/4.png"

    invoke-static {v3, v0, v1, v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->addImage(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/textures/Images;->pattOccupied:I

    const-string v0, "ui/gradients/gradientVertical.png"

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    const-string v0, "ui/gradients/gradientHorizontal.png"

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/textures/Images;->gradientHorizontal:I

    const-string v0, "ui/gradients/gradientHorizontal2.png"

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/textures/Images;->gradientHorizontal2:I

    const-string v0, "ui/gradients/gradientHorizontal3.png"

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/textures/Images;->gradientHorizontal3:I

    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    sget-object v1, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    const-string v2, "ui/gradients/gradientFull.png"

    invoke-static {v2, v0, v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->loadImage(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    sput-object v0, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    const-string v0, "ui/gradients/gradientFull2.png"

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/textures/Images;->gradientFull2:I

    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    sget-object v1, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    const-string v2, "ui/gradients/gradientXY.png"

    invoke-static {v2, v0, v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->loadImage(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    sput-object v0, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    const-string v0, "ui/gradients/gradientXYVertical.png"

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/textures/Images;->gradientXYVertical:I

    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    sget-object v1, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    const-string v2, "ui/lines/line_32_off1.png"

    invoke-static {v2, v0, v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->loadImage(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    sput-object v0, Laoc/kingdoms/lukasz/textures/Images;->line_32_off1:Laoc/kingdoms/lukasz/textures/Image;

    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    sget-object v1, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->Repeat:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    const-string v3, "ui/patterns/line_131.png"

    invoke-static {v3, v0, v1, v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->addImage(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/textures/Images;->line_131:I

    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    sget-object v1, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->Repeat:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    const-string v3, "ui/patterns/line_131_vertical.png"

    invoke-static {v3, v0, v1, v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->addImage(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$Format;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/textures/Images;->line_131_vertical:I

    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/CFG;->XXHDPI:Z

    if-eqz v0, :cond_0

    const-string v0, "gfx/logo/gameLogo_XXH.png"

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/textures/Images;->logo:I

    goto :goto_0

    :cond_0
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/CFG;->XHDPI:Z

    if-eqz v0, :cond_1

    const-string v0, "gfx/logo/gameLogo_XH.png"

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/textures/Images;->logo:I

    goto :goto_0

    :cond_1
    const-string v0, "gfx/logo/gameLogo.png"

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/textures/Images;->logo:I

    :goto_0
    return-void
.end method

.method private initInput()V
    .locals 2

    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    new-instance v1, Laoc/kingdoms/lukasz/jakowski/AA_Game$1;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/jakowski/AA_Game$1;-><init>(Laoc/kingdoms/lukasz/jakowski/AA_Game;)V

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Input;->setInputProcessor(Lcom/badlogic/gdx/InputProcessor;)V

    return-void
.end method


# virtual methods
.method public create()V
    .locals 4

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/FileManager;->initLoadInterface()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v1

    sget-object v2, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v2}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;-><init>(II)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/AA_Game;->renderer:Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;

    :try_start_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->loadLowSettings()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_0
    :try_start_1
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->loadSettings()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_1
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/AA_Game;->initUIScale()V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->init()V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->loadSubscribedItems()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->userStats:Lcom/codedisaster/steamworks/SteamUserStats;

    invoke-virtual {v0}, Lcom/codedisaster/steamworks/SteamUserStats;->requestCurrentStats()Z

    :cond_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->loadLanguage()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const/4 v1, 0x0

    sget-object v1, Lcom/badlogic/gdx/net/otUh/aBEBOpwLZcQFCZ;->EEqTlGskQgB:Ljava/lang/String;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->FONT_MAIN_SIZE:I

    const-string v2, "A"

    invoke-static {v0, v2, v1}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->loadFont(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    sput v0, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/AA_Game;->initGame()V

    invoke-direct {p0}, Laoc/kingdoms/lukasz/jakowski/AA_Game;->initInput()V

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v0

    sget-object v2, Lcom/badlogic/gdx/Application$ApplicationType;->Desktop:Lcom/badlogic/gdx/Application$ApplicationType;

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    move v0, v1

    goto :goto_2

    :cond_1
    move v0, v3

    :goto_2
    sput-boolean v0, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop:Z

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v0

    sget-object v2, Lcom/badlogic/gdx/Application$ApplicationType;->Android:Lcom/badlogic/gdx/Application$ApplicationType;

    if-eq v0, v2, :cond_3

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v0

    sget-object v2, Lcom/badlogic/gdx/Application$ApplicationType;->iOS:Lcom/badlogic/gdx/Application$ApplicationType;

    if-ne v0, v2, :cond_2

    goto :goto_3

    :cond_2
    move v0, v3

    goto :goto_4

    :cond_3
    :goto_3
    move v0, v1

    :goto_4
    sput-boolean v0, Laoc/kingdoms/lukasz/jakowski/CFG;->isAndroid:Z

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v0

    sget-object v2, Lcom/badlogic/gdx/Application$ApplicationType;->iOS:Lcom/badlogic/gdx/Application$ApplicationType;

    if-ne v0, v2, :cond_4

    goto :goto_5

    :cond_4
    move v1, v3

    :goto_5
    sput-boolean v1, Laoc/kingdoms/lukasz/jakowski/CFG;->isiOS:Z

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->updateDrawProvinces()V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->getUIScale()I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/CFG;->UIScale:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->initDefinedScales()V

    return-void
.end method

.method public dispose()V
    .locals 2

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/AA_Game;->renderer:Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->dispose()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/Map;->dispose()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    const/4 v1, 0x0

    iput-boolean v1, v0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->running:Z

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadUpdate:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Update;

    iput-boolean v1, v0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Update;->running:Z

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadTurns:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;

    iput-boolean v1, v0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->running:Z

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadEvents:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Events;

    iput-boolean v1, v0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Events;->running:Z

    return-void
.end method

.method protected final initGame()V
    .locals 4

    new-instance v0, Laoc/kingdoms/lukasz/map/map/Map;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/map/Map;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/map/MapBG;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/Map;->lMaps:Ljava/util/List;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/Map;->getActiveMapID()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/map/Map_Data;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->ExtraMapScale:I

    int-to-float v1, v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapExtraScale:F

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/Map;->lMaps:Ljava/util/List;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/Map;->getActiveMapID()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/map/Map_Data;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->DefaultMapScale:I

    int-to-float v1, v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapExtraScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    const-string v0, "gfx/imageNotFound.png"

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/textures/Images;->imageNotFound:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ui/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "buttons/buttonMenu.png"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/textures/Images;->buttonMenu:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "buttons/buttonMenuH.png"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/textures/Images;->buttonMenuH:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "buttons/close.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->addImage(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/textures/Images;->btn_close:I

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->buttonMenu:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/CFG;->XXHDPI:Z

    if-eqz v0, :cond_0

    const/16 v0, 0xa0

    goto :goto_0

    :cond_0
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/CFG;->XHDPI:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x78

    goto :goto_0

    :cond_1
    const/16 v0, 0x5a

    :goto_0
    sput v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/GameValues;->initGameValue()V

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    const/high16 v2, 0x42880000    # 68.0f

    div-float/2addr v0, v2

    div-float/2addr v0, v1

    sput v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GUI_SCALE:F

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->value:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue;->PADDING:I

    int-to-float v0, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GUI_SCALE:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GUI_SCALE:F

    sub-float/2addr v1, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    int-to-float v0, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GUI_SCALE:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I

    int-to-float v0, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GUI_SCALE:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT4:I

    int-to-float v0, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GUI_SCALE:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT4:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->LEFT_MENU_WIDTH:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->LEFT_MENU_WIDTH:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    div-int/lit8 v2, v2, 0x4

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/CFG;->LEFT_MENU_WIDTH:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->LEFT_MENU_WIDTH:I

    int-to-float v0, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GUI_SCALE:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/CFG;->LEFT_MENU_WIDTH:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->LEFT_MENU_WIDTH2:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->LEFT_MENU_WIDTH2:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    div-int/lit8 v2, v2, 0x3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/CFG;->LEFT_MENU_WIDTH2:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->LEFT_MENU_WIDTH2:I

    int-to-float v0, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GUI_SCALE:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/CFG;->LEFT_MENU_WIDTH2:I

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/AA_Game;->initGame_LoadImages()V

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->pieChartRenderer:Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Renderer;

    new-instance v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    new-instance v0, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/AmbienceManager;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->ambienceManager:Laoc/kingdoms/lukasz/jakowski/AmbienceManager;

    new-instance v0, Laoc/kingdoms/lukasz/menu/HoverManager;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/menu/HoverManager;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->hoverManager:Laoc/kingdoms/lukasz/menu/HoverManager;

    new-instance v0, Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->INIT_GAME_MENU:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setViewIDWithoutAnimation(Laoc/kingdoms/lukasz/menu/View;)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->initColorPicker()V

    new-instance v0, Laoc/kingdoms/lukasz/jakowski/AnimationManager;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/AnimationManager;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->animationManager:Laoc/kingdoms/lukasz/jakowski/AnimationManager;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->animationManager:Laoc/kingdoms/lukasz/jakowski/AnimationManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/AnimationManager;->loadAnimations()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/Map;->updateWorldMap()V

    return-void
.end method

.method public initUIScale()V
    .locals 4

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->UI_SCALE:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gez v0, :cond_6

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isAndroid()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getPpiX()F

    move-result v0

    const/high16 v3, 0x43960000    # 300.0f

    cmpl-float v0, v0, v3

    if-gez v0, :cond_1

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    const/16 v3, 0x4b0

    if-ge v0, v3, :cond_1

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    if-lt v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    sput-boolean v0, Laoc/kingdoms/lukasz/jakowski/CFG;->XHDPI:Z

    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getPpiX()F

    move-result v0

    const/high16 v3, 0x43be0000    # 380.0f

    cmpl-float v0, v0, v3

    if-gez v0, :cond_3

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    const/16 v3, 0x708

    if-ge v0, v3, :cond_3

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    if-lt v0, v3, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :cond_3
    :goto_2
    sput-boolean v1, Laoc/kingdoms/lukasz/jakowski/CFG;->XXHDPI:Z

    goto :goto_4

    :cond_4
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v0

    if-eqz v0, :cond_9

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    const/16 v3, 0x960

    if-lt v0, v3, :cond_5

    goto :goto_3

    :cond_5
    move v1, v2

    :goto_3
    sput-boolean v1, Laoc/kingdoms/lukasz/jakowski/CFG;->XHDPI:Z

    goto :goto_4

    :cond_6
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->UI_SCALE:I

    if-ne v0, v1, :cond_7

    sput-boolean v1, Laoc/kingdoms/lukasz/jakowski/CFG;->XHDPI:Z

    sput-boolean v2, Laoc/kingdoms/lukasz/jakowski/CFG;->XXHDPI:Z

    goto :goto_4

    :cond_7
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->UI_SCALE:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_8

    sput-boolean v2, Laoc/kingdoms/lukasz/jakowski/CFG;->XHDPI:Z

    sput-boolean v1, Laoc/kingdoms/lukasz/jakowski/CFG;->XXHDPI:Z

    goto :goto_4

    :cond_8
    sput-boolean v2, Laoc/kingdoms/lukasz/jakowski/CFG;->XHDPI:Z

    sput-boolean v2, Laoc/kingdoms/lukasz/jakowski/CFG;->XXHDPI:Z

    :cond_9
    :goto_4
    return-void
.end method

.method public render()V
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/AA_Game;->renderer:Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->render()V

    return-void
.end method

.method public resize(II)V
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/AA_Game;->renderer:Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;

    invoke-virtual {v0, p1, p2}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->resize(II)V

    return-void
.end method
