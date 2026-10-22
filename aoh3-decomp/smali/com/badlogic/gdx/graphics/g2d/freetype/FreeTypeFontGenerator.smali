.class public Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;
.super Ljava/lang/Object;
.source "FreeTypeFontGenerator.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;,
        Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$Hinting;,
        Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;,
        Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$GlyphAndBitmap;
    }
.end annotation


# static fields
.field public static final DEFAULT_CHARS:Ljava/lang/String; = "\u0000ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890\"!`?\'.,;:()[]{}<>|/@\\^$\u20ac-%+=#_&~*\u007f\u0080\u0081\u0082\u0083\u0084\u0085\u0086\u0087\u0088\u0089\u008a\u008b\u008c\u008d\u008e\u008f\u0090\u0091\u0092\u0093\u0094\u0095\u0096\u0097\u0098\u0099\u009a\u009b\u009c\u009d\u009e\u009f\u00a0\u00a1\u00a2\u00a3\u00a4\u00a5\u00a6\u00a7\u00a8\u00a9\u00aa\u00ab\u00ac\u00ad\u00ae\u00af\u00b0\u00b1\u00b2\u00b3\u00b4\u00b5\u00b6\u00b7\u00b8\u00b9\u00ba\u00bb\u00bc\u00bd\u00be\u00bf\u00c0\u00c1\u00c2\u00c3\u00c4\u00c5\u00c6\u00c7\u00c8\u00c9\u00ca\u00cb\u00cc\u00cd\u00ce\u00cf\u00d0\u00d1\u00d2\u00d3\u00d4\u00d5\u00d6\u00d7\u00d8\u00d9\u00da\u00db\u00dc\u00dd\u00de\u00df\u00e0\u00e1\u00e2\u00e3\u00e4\u00e5\u00e6\u00e7\u00e8\u00e9\u00ea\u00eb\u00ec\u00ed\u00ee\u00ef\u00f0\u00f1\u00f2\u00f3\u00f4\u00f5\u00f6\u00f7\u00f8\u00f9\u00fa\u00fb\u00fc\u00fd\u00fe\u00ff"

.field public static final NO_MAXIMUM:I = -0x1

.field private static maxTextureSize:I = 0x400


# instance fields
.field bitmapped:Z

.field final face:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;

.field final library:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;

.field final name:Ljava/lang/String;

.field private pixelHeight:I

.field private pixelWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/files/FileHandle;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;-><init>(Lcom/badlogic/gdx/files/FileHandle;I)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/files/FileHandle;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->bitmapped:Z

    invoke-virtual {p1}, Lcom/badlogic/gdx/files/FileHandle;->nameWithoutExtension()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->name:Ljava/lang/String;

    invoke-static {}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->initFreeType()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;

    move-result-object v1

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->library:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;

    invoke-virtual {v1, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;->newFace(Lcom/badlogic/gdx/files/FileHandle;I)Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->face:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;

    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->checkForBitmapFont()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/16 p1, 0xf

    invoke-virtual {p0, v0, p1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->setPixelSizes(II)V

    return-void
.end method

.method private checkForBitmapFont()Z
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->face:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->getFaceFlags()I

    move-result v0

    sget v1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_FACE_FLAG_FIXED_SIZES:I

    and-int/2addr v1, v0

    sget v2, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_FACE_FLAG_FIXED_SIZES:I

    if-ne v1, v2, :cond_0

    sget v1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_FACE_FLAG_HORIZONTAL:I

    and-int/2addr v0, v1

    sget v1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_FACE_FLAG_HORIZONTAL:I

    if-ne v0, v1, :cond_0

    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->loadChar(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->face:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->getGlyph()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;->getFormat()I

    move-result v0

    const v1, 0x62697473

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->bitmapped:Z

    :cond_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->bitmapped:Z

    return v0
.end method

.method private getLoadingFlags(Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;)I
    .locals 2

    sget v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_LOAD_DEFAULT:I

    sget-object v1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$1;->$SwitchMap$com$badlogic$gdx$graphics$g2d$freetype$FreeTypeFontGenerator$Hinting:[I

    iget-object p1, p1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->hinting:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$Hinting;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$Hinting;->ordinal()I

    move-result p1

    aget p1, v1, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    sget p1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_LOAD_FORCE_AUTOHINT:I

    sget v1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_LOAD_TARGET_MONO:I

    goto :goto_0

    :pswitch_1
    sget p1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_LOAD_FORCE_AUTOHINT:I

    sget v1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_LOAD_TARGET_NORMAL:I

    goto :goto_0

    :pswitch_2
    sget p1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_LOAD_FORCE_AUTOHINT:I

    sget v1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_LOAD_TARGET_LIGHT:I

    :goto_0
    or-int/2addr p1, v1

    goto :goto_1

    :pswitch_3
    sget p1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_LOAD_TARGET_MONO:I

    goto :goto_1

    :pswitch_4
    sget p1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_LOAD_TARGET_NORMAL:I

    goto :goto_1

    :pswitch_5
    sget p1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_LOAD_TARGET_LIGHT:I

    goto :goto_1

    :pswitch_6
    sget p1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_LOAD_NO_HINTING:I

    :goto_1
    or-int/2addr v0, p1

    :goto_2
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getMaxTextureSize()I
    .locals 1

    sget v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->maxTextureSize:I

    return v0
.end method

.method private loadChar(I)Z
    .locals 2

    sget v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_LOAD_DEFAULT:I

    sget v1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_LOAD_FORCE_AUTOHINT:I

    or-int/2addr v0, v1

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->loadChar(II)Z

    move-result p1

    return p1
.end method

.method private loadChar(II)Z
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->face:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->loadChar(II)Z

    move-result p1

    return p1
.end method

.method public static setMaxTextureSize(I)V
    .locals 0

    sput p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->maxTextureSize:I

    return-void
.end method


# virtual methods
.method protected createGlyph(CLcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Stroker;FLcom/badlogic/gdx/graphics/g2d/PixmapPacker;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p5

    move-object/from16 v5, p6

    iget-object v6, v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->face:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;

    invoke-virtual {v6, v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->getCharIndex(I)I

    move-result v6

    const/4 v8, 0x0

    if-nez v6, :cond_0

    if-eqz v1, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    move v6, v8

    :goto_0
    const/4 v9, 0x0

    if-eqz v6, :cond_1

    return-object v9

    :cond_1
    invoke-direct {v0, v3}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->getLoadingFlags(Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;)I

    move-result v6

    invoke-direct {v0, v1, v6}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->loadChar(II)Z

    move-result v6

    if-nez v6, :cond_2

    return-object v9

    :cond_2
    iget-object v6, v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->face:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->getGlyph()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;

    move-result-object v6

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;->getGlyph()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Glyph;

    move-result-object v10

    :try_start_0
    iget-boolean v11, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->mono:Z

    if-eqz v11, :cond_3

    sget v11, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_RENDER_MODE_MONO:I

    goto :goto_1

    :cond_3
    sget v11, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_RENDER_MODE_NORMAL:I

    :goto_1
    invoke-virtual {v10, v11}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Glyph;->toBitmap(I)V
    :try_end_0
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v10}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Glyph;->getBitmap()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;

    move-result-object v9

    sget-object v11, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    iget-object v12, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v13, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->gamma:F

    invoke-virtual {v9, v11, v12, v13}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;->getPixmap(Lcom/badlogic/gdx/graphics/Pixmap$Format;Lcom/badlogic/gdx/graphics/Color;F)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v11

    invoke-virtual {v9}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;->getWidth()I

    move-result v12

    if-eqz v12, :cond_11

    invoke-virtual {v9}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;->getRows()I

    move-result v12

    if-eqz v12, :cond_11

    iget v12, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->borderWidth:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_6

    invoke-virtual {v10}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Glyph;->getTop()I

    move-result v12

    invoke-virtual {v10}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Glyph;->getLeft()I

    move-result v14

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;->getGlyph()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Glyph;

    move-result-object v15

    move-object/from16 v7, p4

    invoke-virtual {v15, v7, v8}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Glyph;->strokeBorder(Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Stroker;Z)V

    iget-boolean v7, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->mono:Z

    if-eqz v7, :cond_4

    sget v7, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_RENDER_MODE_MONO:I

    goto :goto_2

    :cond_4
    sget v7, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_RENDER_MODE_NORMAL:I

    :goto_2
    invoke-virtual {v15, v7}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Glyph;->toBitmap(I)V

    invoke-virtual {v15}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Glyph;->getLeft()I

    move-result v7

    sub-int/2addr v14, v7

    invoke-virtual {v15}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Glyph;->getTop()I

    move-result v7

    sub-int/2addr v12, v7

    neg-int v7, v12

    invoke-virtual {v15}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Glyph;->getBitmap()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;

    move-result-object v12

    sget-object v8, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    iget-object v13, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->borderColor:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v17, v15

    iget v15, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->borderGamma:F

    invoke-virtual {v12, v8, v13, v15}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;->getPixmap(Lcom/badlogic/gdx/graphics/Pixmap$Format;Lcom/badlogic/gdx/graphics/Color;F)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v8

    iget v12, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->renderCount:I

    const/4 v13, 0x0

    :goto_3
    if-ge v13, v12, :cond_5

    invoke-virtual {v8, v11, v14, v7}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;II)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual {v11}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    invoke-virtual {v10}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Glyph;->dispose()V

    move-object v11, v8

    move-object/from16 v10, v17

    :cond_6
    iget v7, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->shadowOffsetX:I

    if-nez v7, :cond_9

    iget v7, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->shadowOffsetY:I

    if-eqz v7, :cond_7

    goto :goto_5

    :cond_7
    iget v7, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->borderWidth:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-nez v7, :cond_8

    iget v7, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->renderCount:I

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    const/4 v8, 0x0

    :goto_4
    if-ge v8, v7, :cond_8

    const/4 v12, 0x0

    invoke-virtual {v11, v11, v12, v12}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;II)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_8
    const/4 v12, 0x0

    move-object/from16 v17, v9

    move-object/from16 p4, v10

    move v2, v12

    goto/16 :goto_a

    :cond_9
    :goto_5
    const/4 v12, 0x0

    invoke-virtual {v11}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v7

    invoke-virtual {v11}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v8

    iget v13, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->shadowOffsetX:I

    invoke-static {v13, v12}, Ljava/lang/Math;->max(II)I

    move-result v13

    iget v14, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->shadowOffsetY:I

    invoke-static {v14, v12}, Ljava/lang/Math;->max(II)I

    move-result v14

    iget v12, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->shadowOffsetX:I

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    add-int/2addr v12, v7

    iget v15, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->shadowOffsetY:I

    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v15

    add-int/2addr v15, v8

    move-object/from16 p4, v10

    new-instance v10, Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual {v11}, Lcom/badlogic/gdx/graphics/Pixmap;->getFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;

    move-result-object v2

    invoke-direct {v10, v12, v15, v2}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    iget-object v2, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->shadowColor:Lcom/badlogic/gdx/graphics/Color;

    iget v15, v2, Lcom/badlogic/gdx/graphics/Color;->a:F

    const/16 v16, 0x0

    cmpl-float v16, v15, v16

    if-eqz v16, :cond_c

    iget v5, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    const/high16 v16, 0x437f0000    # 255.0f

    mul-float v5, v5, v16

    float-to-int v5, v5

    int-to-byte v5, v5

    move-object/from16 v17, v9

    iget v9, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    mul-float v9, v9, v16

    float-to-int v9, v9

    int-to-byte v9, v9

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->b:F

    mul-float v2, v2, v16

    float-to-int v2, v2

    int-to-byte v2, v2

    invoke-virtual {v11}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixels()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v10}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixels()Ljava/nio/ByteBuffer;

    move-result-object v4

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v8, :cond_d

    add-int v16, v1, v14

    mul-int v16, v16, v12

    add-int v16, v16, v13

    move/from16 v18, v8

    const/4 v8, 0x0

    :goto_7
    if-ge v8, v7, :cond_b

    mul-int v19, v7, v1

    add-int v19, v19, v8

    mul-int/lit8 v19, v19, 0x4

    move/from16 v20, v7

    add-int/lit8 v7, v19, 0x3

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    if-nez v7, :cond_a

    move-object/from16 v21, v0

    move/from16 v19, v5

    goto :goto_8

    :cond_a
    add-int v19, v16, v8

    move-object/from16 v21, v0

    mul-int/lit8 v0, v19, 0x4

    invoke-virtual {v4, v0, v5}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move/from16 v19, v5

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v4, v5, v9}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v5, v0, 0x2

    invoke-virtual {v4, v5, v2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x3

    and-int/lit16 v5, v7, 0xff

    int-to-float v5, v5

    mul-float/2addr v5, v15

    float-to-int v5, v5

    int-to-byte v5, v5

    invoke-virtual {v4, v0, v5}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    :goto_8
    add-int/lit8 v8, v8, 0x1

    move/from16 v5, v19

    move/from16 v7, v20

    move-object/from16 v0, v21

    goto :goto_7

    :cond_b
    move-object/from16 v21, v0

    move/from16 v19, v5

    move/from16 v20, v7

    add-int/lit8 v1, v1, 0x1

    move/from16 v8, v18

    goto :goto_6

    :cond_c
    move-object/from16 v17, v9

    :cond_d
    iget v0, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->renderCount:I

    const/4 v12, 0x0

    :goto_9
    if-ge v12, v0, :cond_e

    iget v1, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->shadowOffsetX:I

    neg-int v1, v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v4, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->shadowOffsetY:I

    neg-int v4, v4

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {v10, v11, v1, v4}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;II)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    :cond_e
    const/4 v2, 0x0

    invoke-virtual {v11}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    move-object v11, v10

    :goto_a
    iget v0, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->padTop:I

    if-gtz v0, :cond_10

    iget v0, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->padLeft:I

    if-gtz v0, :cond_10

    iget v0, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->padBottom:I

    if-gtz v0, :cond_10

    iget v0, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->padRight:I

    if-lez v0, :cond_f

    goto :goto_b

    :cond_f
    move-object/from16 v10, p4

    goto :goto_c

    :cond_10
    :goto_b
    new-instance v0, Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual {v11}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v1

    iget v4, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->padLeft:I

    add-int/2addr v1, v4

    iget v4, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->padRight:I

    add-int/2addr v1, v4

    invoke-virtual {v11}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v4

    iget v5, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->padTop:I

    add-int/2addr v4, v5

    iget v5, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->padBottom:I

    add-int/2addr v4, v5

    invoke-virtual {v11}, Lcom/badlogic/gdx/graphics/Pixmap;->getFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;

    move-result-object v5

    invoke-direct {v0, v1, v4, v5}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Pixmap$Blending;->None:Lcom/badlogic/gdx/graphics/Pixmap$Blending;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/Pixmap;->setBlending(Lcom/badlogic/gdx/graphics/Pixmap$Blending;)V

    iget v1, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->padLeft:I

    iget v4, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->padTop:I

    invoke-virtual {v0, v11, v1, v4}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;II)V

    invoke-virtual {v11}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    move-object/from16 v10, p4

    move-object v11, v0

    goto :goto_c

    :cond_11
    move v2, v8

    move-object/from16 v17, v9

    :goto_c
    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;->getMetrics()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphMetrics;

    move-result-object v0

    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    invoke-direct {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;-><init>()V

    move/from16 v4, p1

    iput v4, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->id:I

    invoke-virtual {v11}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v4

    iput v4, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    invoke-virtual {v11}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v4

    iput v4, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    invoke-virtual {v10}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Glyph;->getLeft()I

    move-result v4

    iput v4, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xoffset:I

    iget-boolean v4, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->flip:Z

    if-eqz v4, :cond_12

    invoke-virtual {v10}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Glyph;->getTop()I

    move-result v4

    neg-int v4, v4

    move/from16 v5, p5

    float-to-int v5, v5

    add-int/2addr v4, v5

    iput v4, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->yoffset:I

    goto :goto_d

    :cond_12
    move/from16 v5, p5

    iget v4, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    invoke-virtual {v10}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Glyph;->getTop()I

    move-result v6

    sub-int/2addr v4, v6

    neg-int v4, v4

    float-to-int v5, v5

    sub-int/2addr v4, v5

    iput v4, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->yoffset:I

    :goto_d
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphMetrics;->getHoriAdvance()I

    move-result v0

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->toInt(I)I

    move-result v0

    iget v4, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->borderWidth:F

    float-to-int v4, v4

    add-int/2addr v0, v4

    iget v4, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->spaceX:I

    add-int/2addr v0, v4

    iput v0, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xadvance:I

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->bitmapped:Z

    if-eqz v4, :cond_15

    sget-object v4, Lcom/badlogic/gdx/graphics/Color;->CLEAR:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v11, v4}, Lcom/badlogic/gdx/graphics/Pixmap;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v11}, Lcom/badlogic/gdx/graphics/Pixmap;->fill()V

    invoke-virtual/range {v17 .. v17}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    sget-object v5, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/Color;->toIntBits()I

    move-result v5

    sget-object v6, Lcom/badlogic/gdx/graphics/Color;->CLEAR:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/Color;->toIntBits()I

    move-result v6

    move v12, v2

    :goto_e
    iget v7, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    if-ge v12, v7, :cond_15

    invoke-virtual/range {v17 .. v17}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;->getPitch()I

    move-result v7

    mul-int/2addr v7, v12

    move v8, v2

    :goto_f
    iget v9, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    iget v13, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xoffset:I

    add-int/2addr v9, v13

    if-ge v8, v9, :cond_14

    div-int/lit8 v9, v8, 0x8

    add-int/2addr v9, v7

    invoke-virtual {v4, v9}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v9

    rem-int/lit8 v13, v8, 0x8

    rsub-int/lit8 v13, v13, 0x7

    ushr-int/2addr v9, v13

    const/4 v13, 0x1

    and-int/2addr v9, v13

    if-ne v9, v13, :cond_13

    move v9, v5

    goto :goto_10

    :cond_13
    move v9, v6

    :goto_10
    invoke-virtual {v11, v8, v12, v9}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixel(III)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_f

    :cond_14
    add-int/lit8 v12, v12, 0x1

    goto :goto_e

    :cond_15
    move-object/from16 v2, p6

    invoke-virtual {v2, v11}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pack(Lcom/badlogic/gdx/graphics/Pixmap;)Lcom/badlogic/gdx/math/Rectangle;

    move-result-object v4

    invoke-virtual/range {p6 .. p6}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->getPages()Lcom/badlogic/gdx/utils/Array;

    move-result-object v5

    iget v5, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    iput v5, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->page:I

    iget v5, v4, Lcom/badlogic/gdx/math/Rectangle;->x:F

    float-to-int v5, v5

    iput v5, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->srcX:I

    iget v4, v4, Lcom/badlogic/gdx/math/Rectangle;->y:F

    float-to-int v4, v4

    iput v4, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->srcY:I

    iget-boolean v4, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->incremental:Z

    if-eqz v4, :cond_16

    move-object/from16 v4, p2

    iget-object v5, v4, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->regions:Lcom/badlogic/gdx/utils/Array;

    if-eqz v5, :cond_16

    iget-object v5, v4, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->regions:Lcom/badlogic/gdx/utils/Array;

    iget v5, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    iget v6, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->page:I

    if-gt v5, v6, :cond_16

    iget-object v4, v4, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->regions:Lcom/badlogic/gdx/utils/Array;

    iget-object v5, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->minFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iget-object v6, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->magFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iget-boolean v3, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->genMipMaps:Z

    invoke-virtual {v2, v4, v5, v6, v3}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->updateTextureRegions(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Z)V

    :cond_16
    invoke-virtual {v11}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    invoke-virtual {v10}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Glyph;->dispose()V

    return-object v1

    :catch_0
    move v4, v1

    invoke-virtual {v10}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Glyph;->dispose()V

    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Couldn\'t render char: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FreeTypeFontGenerator"

    invoke-interface {v1, v3, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-object v9
.end method

.method public dispose()V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->face:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->dispose()V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->library:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;->dispose()V

    return-void
.end method

.method public generateData(I)Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;-><init>()V

    iput p1, v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->size:I

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->generateData(Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;)Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;

    move-result-object p1

    return-object p1
.end method

.method public generateData(Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;)Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->generateData(Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;)Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;

    move-result-object p1

    return-object p1
.end method

.method public generateData(Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;)Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;
    .locals 24

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v7, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->name:Ljava/lang/String;

    iget-object v0, v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->characters:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v10

    array-length v11, v10

    iget-boolean v12, v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->incremental:Z

    invoke-direct/range {p0 .. p1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->getLoadingFlags(Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;)I

    move-result v13

    iget v0, v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->size:I

    const/4 v14, 0x0

    invoke-virtual {v7, v14, v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->setPixelSizes(II)V

    iget-object v0, v7, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->face:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->getSize()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Size;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Size;->getMetrics()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$SizeMetrics;

    move-result-object v0

    iget-boolean v1, v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->flip:Z

    iput-boolean v1, v9, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->flipped:Z

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$SizeMetrics;->getAscender()I

    move-result v1

    invoke-static {v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->toInt(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, v9, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->ascent:F

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$SizeMetrics;->getDescender()I

    move-result v1

    invoke-static {v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->toInt(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, v9, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->descent:F

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$SizeMetrics;->getHeight()I

    move-result v0

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->toInt(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, v9, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->lineHeight:F

    iget v15, v9, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->ascent:F

    iget-boolean v0, v7, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->bitmapped:Z

    const/4 v1, 0x0

    const/16 v6, 0x20

    if-eqz v0, :cond_2

    iget v0, v9, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->lineHeight:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    move v0, v6

    :goto_0
    iget-object v2, v7, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->face:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->getNumGlyphs()I

    move-result v2

    add-int/2addr v2, v6

    if-ge v0, v2, :cond_2

    invoke-direct {v7, v0, v13}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->loadChar(II)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v7, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->face:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->getGlyph()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;->getMetrics()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphMetrics;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphMetrics;->getHeight()I

    move-result v2

    invoke-static {v2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->toInt(I)I

    move-result v2

    int-to-float v2, v2

    iget v3, v9, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->lineHeight:F

    cmpl-float v3, v2, v3

    if-lez v3, :cond_0

    goto :goto_1

    :cond_0
    iget v2, v9, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->lineHeight:F

    :goto_1
    iput v2, v9, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->lineHeight:F

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget v0, v9, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->lineHeight:F

    iget v2, v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->spaceY:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    iput v0, v9, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->lineHeight:F

    invoke-direct {v7, v6, v13}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->loadChar(II)Z

    move-result v0

    if-nez v0, :cond_4

    const/16 v0, 0x6c

    invoke-direct {v7, v0, v13}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->loadChar(II)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    iget-object v0, v7, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->face:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->getMaxAdvanceWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, v9, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->spaceXadvance:F

    goto :goto_3

    :cond_4
    :goto_2
    iget-object v0, v7, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->face:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->getGlyph()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;->getMetrics()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphMetrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphMetrics;->getHoriAdvance()I

    move-result v0

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->toInt(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, v9, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->spaceXadvance:F

    :goto_3
    iget-object v0, v9, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->xChars:[C

    array-length v2, v0

    move v3, v14

    :goto_4
    if-ge v3, v2, :cond_6

    aget-char v4, v0, v3

    invoke-direct {v7, v4, v13}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->loadChar(II)Z

    move-result v4

    if-nez v4, :cond_5

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_5
    iget-object v0, v7, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->face:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->getGlyph()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;->getMetrics()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphMetrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphMetrics;->getHeight()I

    move-result v0

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->toInt(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, v9, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->xHeight:F

    :cond_6
    iget v0, v9, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->xHeight:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_27

    iget-object v0, v9, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->capChars:[C

    array-length v2, v0

    move v3, v14

    :goto_5
    if-ge v3, v2, :cond_8

    aget-char v4, v0, v3

    invoke-direct {v7, v4, v13}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->loadChar(II)Z

    move-result v4

    if-nez v4, :cond_7

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_7
    iget-object v0, v7, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->face:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->getGlyph()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;->getMetrics()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphMetrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphMetrics;->getHeight()I

    move-result v0

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->toInt(I)I

    move-result v0

    iget v2, v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->shadowOffsetY:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/2addr v0, v2

    int-to-float v0, v0

    iput v0, v9, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->capHeight:F

    :cond_8
    iget-boolean v0, v7, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->bitmapped:Z

    if-nez v0, :cond_a

    iget v0, v9, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->capHeight:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_9

    goto :goto_6

    :cond_9
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "No cap character found in font"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    :goto_6
    iget v0, v9, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->ascent:F

    iget v2, v9, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->capHeight:F

    sub-float/2addr v0, v2

    iput v0, v9, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->ascent:F

    iget v0, v9, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->lineHeight:F

    neg-float v0, v0

    iput v0, v9, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->down:F

    iget-boolean v0, v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->flip:Z

    if-eqz v0, :cond_b

    iget v0, v9, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->ascent:F

    neg-float v0, v0

    iput v0, v9, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->ascent:F

    iget v0, v9, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->down:F

    neg-float v0, v0

    iput v0, v9, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->down:F

    :cond_b
    iget-object v0, v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->packer:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;

    const/16 v16, 0x1

    if-nez v0, :cond_f

    if-eqz v12, :cond_c

    sget v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->maxTextureSize:I

    new-instance v2, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy;

    invoke-direct {v2}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy;-><init>()V

    :goto_7
    move/from16 v19, v0

    move-object/from16 v23, v2

    goto :goto_8

    :cond_c
    iget v0, v9, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->lineHeight:F

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    mul-int/2addr v0, v0

    mul-int/2addr v0, v11

    int-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v0, v2

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->nextPowerOfTwo(I)I

    move-result v0

    sget v2, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->maxTextureSize:I

    if-lez v2, :cond_d

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_d
    new-instance v2, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$SkylineStrategy;

    invoke-direct {v2}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$SkylineStrategy;-><init>()V

    goto :goto_7

    :goto_8
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;

    sget-object v20, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    const/16 v21, 0x1

    const/16 v22, 0x0

    move-object/from16 v17, v0

    move/from16 v18, v19

    invoke-direct/range {v17 .. v23}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;IZLcom/badlogic/gdx/graphics/g2d/PixmapPacker$PackStrategy;)V

    iget-object v2, v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->setTransparentColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->getTransparentColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    iput v1, v2, Lcom/badlogic/gdx/graphics/Color;->a:F

    iget v2, v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->borderWidth:F

    cmpl-float v2, v2, v1

    if-lez v2, :cond_e

    iget-object v2, v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->borderColor:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->setTransparentColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->getTransparentColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    iput v1, v2, Lcom/badlogic/gdx/graphics/Color;->a:F

    :cond_e
    move-object v5, v0

    move/from16 v17, v16

    goto :goto_9

    :cond_f
    move-object v5, v0

    move/from16 v17, v14

    :goto_9
    if-eqz v12, :cond_10

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    add-int/lit8 v2, v11, 0x20

    invoke-direct {v0, v2}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, v9, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->glyphs:Lcom/badlogic/gdx/utils/Array;

    :cond_10
    iget v0, v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->borderWidth:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_13

    iget-object v0, v7, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->library:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;->createStroker()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Stroker;

    move-result-object v0

    iget v1, v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->borderWidth:F

    const/high16 v2, 0x42800000    # 64.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget-boolean v2, v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->borderStraight:Z

    if-eqz v2, :cond_11

    sget v2, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_STROKER_LINECAP_BUTT:I

    goto :goto_a

    :cond_11
    sget v2, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_STROKER_LINECAP_ROUND:I

    :goto_a
    iget-boolean v3, v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->borderStraight:Z

    if-eqz v3, :cond_12

    sget v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_STROKER_LINEJOIN_MITER_FIXED:I

    goto :goto_b

    :cond_12
    sget v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_STROKER_LINEJOIN_ROUND:I

    :goto_b
    invoke-virtual {v0, v1, v2, v3, v14}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Stroker;->set(IIII)V

    goto :goto_c

    :cond_13
    const/4 v0, 0x0

    :goto_c
    move-object v3, v0

    new-array v4, v11, [I

    move v2, v14

    :goto_d
    if-ge v2, v11, :cond_17

    aget-char v0, v10, v2

    invoke-direct {v7, v0, v13}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->loadChar(II)Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, v7, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->face:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->getGlyph()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;->getMetrics()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphMetrics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphMetrics;->getHeight()I

    move-result v1

    invoke-static {v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->toInt(I)I

    move-result v1

    goto :goto_e

    :cond_14
    move v1, v14

    :goto_e
    aput v1, v4, v2

    if-nez v0, :cond_15

    const/4 v1, 0x0

    move-object/from16 v0, p0

    move/from16 v18, v2

    move-object/from16 v2, p2

    move-object/from16 v19, v3

    move-object/from16 v3, p1

    move-object/from16 v20, v4

    move-object/from16 v4, v19

    move-object/from16 v21, v5

    move v5, v15

    move-object/from16 v6, v21

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->createGlyph(CLcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Stroker;FLcom/badlogic/gdx/graphics/g2d/PixmapPacker;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object v0

    if-eqz v0, :cond_16

    iget v1, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    if-eqz v1, :cond_16

    iget v1, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    if-eqz v1, :cond_16

    invoke-virtual {v9, v14, v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->setGlyph(ILcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;)V

    iput-object v0, v9, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->missingGlyph:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    if-eqz v12, :cond_16

    iget-object v1, v9, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->glyphs:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_f

    :cond_15
    move/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    :cond_16
    :goto_f
    add-int/lit8 v2, v18, 0x1

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    move-object/from16 v5, v21

    const/16 v6, 0x20

    goto :goto_d

    :cond_17
    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move v13, v11

    :goto_10
    if-lez v13, :cond_1b

    aget v0, v20, v14

    move/from16 v18, v14

    move/from16 v1, v16

    :goto_11
    if-ge v1, v13, :cond_19

    aget v2, v20, v1

    if-le v2, v0, :cond_18

    move/from16 v18, v1

    move v0, v2

    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_19
    aget-char v6, v10, v18

    invoke-virtual {v9, v6}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->getGlyph(C)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object v0

    if-nez v0, :cond_1a

    move-object/from16 v0, p0

    move v1, v6

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    move-object/from16 v4, v19

    move v5, v15

    move v14, v6

    move-object/from16 v6, v21

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->createGlyph(CLcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Stroker;FLcom/badlogic/gdx/graphics/g2d/PixmapPacker;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {v9, v14, v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->setGlyph(ILcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;)V

    if-eqz v12, :cond_1a

    iget-object v1, v9, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->glyphs:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_1a
    add-int/lit8 v13, v13, -0x1

    aget v0, v20, v13

    aput v0, v20, v18

    aget-char v0, v10, v18

    aget-char v1, v10, v13

    aput-char v1, v10, v18

    aput-char v0, v10, v13

    const/4 v14, 0x0

    goto :goto_10

    :cond_1b
    move-object/from16 v0, v19

    if-eqz v0, :cond_1c

    if-nez v12, :cond_1c

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Stroker;->dispose()V

    :cond_1c
    if-eqz v12, :cond_1d

    iput-object v7, v9, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->generator:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;

    iput-object v8, v9, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->parameter:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;

    iput-object v0, v9, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->stroker:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Stroker;

    move-object/from16 v0, v21

    iput-object v0, v9, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->packer:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;

    goto :goto_12

    :cond_1d
    move-object/from16 v0, v21

    :goto_12
    iget-boolean v1, v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->kerning:Z

    iget-object v2, v7, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->face:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->hasKerning()Z

    move-result v2

    and-int/2addr v1, v2

    iput-boolean v1, v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->kerning:Z

    iget-boolean v1, v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->kerning:Z

    if-eqz v1, :cond_23

    const/4 v1, 0x0

    :goto_13
    if-ge v1, v11, :cond_23

    aget-char v2, v10, v1

    invoke-virtual {v9, v2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->getGlyph(C)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object v3

    if-nez v3, :cond_1f

    :cond_1e
    const/4 v15, 0x0

    goto :goto_16

    :cond_1f
    iget-object v4, v7, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->face:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->getCharIndex(I)I

    move-result v4

    move v5, v1

    :goto_14
    if-ge v5, v11, :cond_1e

    aget-char v6, v10, v5

    invoke-virtual {v9, v6}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->getGlyph(C)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object v12

    if-nez v12, :cond_20

    const/4 v15, 0x0

    goto :goto_15

    :cond_20
    iget-object v13, v7, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->face:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;

    invoke-virtual {v13, v6}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->getCharIndex(I)I

    move-result v13

    iget-object v14, v7, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->face:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;

    const/4 v15, 0x0

    invoke-virtual {v14, v4, v13, v15}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->getKerning(III)I

    move-result v14

    if-eqz v14, :cond_21

    invoke-static {v14}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->toInt(I)I

    move-result v14

    invoke-virtual {v3, v6, v14}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->setKerning(II)V

    :cond_21
    iget-object v6, v7, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->face:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;

    invoke-virtual {v6, v13, v4, v15}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->getKerning(III)I

    move-result v6

    if-eqz v6, :cond_22

    invoke-static {v6}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->toInt(I)I

    move-result v6

    invoke-virtual {v12, v2, v6}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->setKerning(II)V

    :cond_22
    :goto_15
    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    :goto_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_23
    if-eqz v17, :cond_24

    new-instance v1, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v1, v9, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->regions:Lcom/badlogic/gdx/utils/Array;

    iget-object v1, v9, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->regions:Lcom/badlogic/gdx/utils/Array;

    iget-object v2, v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->minFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iget-object v3, v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->magFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iget-boolean v4, v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->genMipMaps:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->updateTextureRegions(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Z)V

    :cond_24
    const/16 v0, 0x20

    invoke-virtual {v9, v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->getGlyph(C)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object v1

    if-nez v1, :cond_25

    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    invoke-direct {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;-><init>()V

    iget v2, v9, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->spaceXadvance:F

    float-to-int v2, v2

    iget v3, v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->spaceX:I

    add-int/2addr v2, v3

    iput v2, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xadvance:I

    iput v0, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->id:I

    invoke-virtual {v9, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->setGlyph(ILcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;)V

    :cond_25
    iget v0, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    if-nez v0, :cond_26

    iget v0, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xadvance:I

    int-to-float v0, v0

    iget v2, v9, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->padRight:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    :cond_26
    return-object v9

    :cond_27
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "No x-height character found in font"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public generateFont(Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->generateFont(Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object p1

    return-object p1
.end method

.method public generateFont(Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    .locals 7

    iget-object v0, p2, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->regions:Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->packer:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    new-instance v3, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v3}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v3, p2, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->regions:Lcom/badlogic/gdx/utils/Array;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->generateData(Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;)Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->packer:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;

    iget-object v3, p2, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->regions:Lcom/badlogic/gdx/utils/Array;

    iget-object v4, p1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->minFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iget-object v5, p1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->magFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iget-boolean v6, p1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->genMipMaps:Z

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->updateTextureRegions(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Z)V

    :cond_2
    iget-object v0, p2, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->regions:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p2, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeBitmapFontData;->regions:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p0, p2, v0, v2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->newBitmapFont(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;Lcom/badlogic/gdx/utils/Array;Z)Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object p2

    iget-object p1, p1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->packer:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;

    if-nez p1, :cond_3

    move v1, v2

    :cond_3
    invoke-virtual {p2, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setOwnsTexture(Z)V

    return-object p2

    :cond_4
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string p2, "Unable to create a font with no texture regions."

    invoke-direct {p1, p2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public generateGlyphAndBitmap(IIZ)Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$GlyphAndBitmap;
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->setPixelSizes(II)V

    iget-object p2, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->face:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->getSize()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Size;

    move-result-object p2

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Size;->getMetrics()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$SizeMetrics;

    move-result-object p2

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$SizeMetrics;->getAscender()I

    move-result p2

    invoke-static {p2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->toInt(I)I

    move-result p2

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->face:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->getCharIndex(I)I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->loadChar(I)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->face:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->getGlyph()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;

    move-result-object v1

    iget-boolean v3, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->bitmapped:Z

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;->getBitmap()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;

    move-result-object v2

    goto :goto_0

    :cond_1
    sget v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_RENDER_MODE_NORMAL:I

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;->renderGlyph(I)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;->getBitmap()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;

    move-result-object v2

    :goto_0
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;->getMetrics()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphMetrics;

    move-result-object v3

    new-instance v4, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    invoke-direct {v4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;-><init>()V

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;->getWidth()I

    move-result v5

    iput v5, v4, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;->getRows()I

    move-result v5

    iput v5, v4, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    goto :goto_1

    :cond_3
    iput v0, v4, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    iput v0, v4, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    :goto_1
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;->getBitmapLeft()I

    move-result v5

    iput v5, v4, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xoffset:I

    if-eqz p3, :cond_4

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;->getBitmapTop()I

    move-result p3

    neg-int p3, p3

    add-int/2addr p3, p2

    goto :goto_2

    :cond_4
    iget p3, v4, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;->getBitmapTop()I

    move-result v1

    sub-int/2addr p3, v1

    neg-int p3, p3

    sub-int/2addr p3, p2

    :goto_2
    iput p3, v4, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->yoffset:I

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphMetrics;->getHoriAdvance()I

    move-result p2

    invoke-static {p2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->toInt(I)I

    move-result p2

    iput p2, v4, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xadvance:I

    iput v0, v4, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->srcX:I

    iput v0, v4, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->srcY:I

    iput p1, v4, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->id:I

    new-instance p1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$GlyphAndBitmap;

    invoke-direct {p1, p0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$GlyphAndBitmap;-><init>(Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;)V

    iput-object v4, p1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$GlyphAndBitmap;->glyph:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    iput-object v2, p1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$GlyphAndBitmap;->bitmap:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;

    return-object p1

    :cond_5
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string p2, "Unable to load character!"

    invoke-direct {p1, p2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public hasGlyph(I)Z
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->face:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->getCharIndex(I)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected newBitmapFont(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;Lcom/badlogic/gdx/utils/Array;Z)Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g2d/TextureRegion;",
            ">;Z)",
            "Lcom/badlogic/gdx/graphics/g2d/BitmapFont;"
        }
    .end annotation

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-direct {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;Lcom/badlogic/gdx/utils/Array;Z)V

    return-object v0
.end method

.method public scaleForPixelHeight(I)I
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->setPixelSizes(II)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->face:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->getSize()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Size;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Size;->getMetrics()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$SizeMetrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$SizeMetrics;->getAscender()I

    move-result v1

    invoke-static {v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->toInt(I)I

    move-result v1

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$SizeMetrics;->getDescender()I

    move-result v0

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->toInt(I)I

    move-result v0

    mul-int/2addr p1, p1

    sub-int/2addr v1, v0

    div-int/2addr p1, v1

    return p1
.end method

.method public scaleForPixelWidth(II)I
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->face:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->getSize()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Size;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Size;->getMetrics()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$SizeMetrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$SizeMetrics;->getMaxAdvance()I

    move-result v1

    invoke-static {v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->toInt(I)I

    move-result v1

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$SizeMetrics;->getAscender()I

    move-result v2

    invoke-static {v2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->toInt(I)I

    move-result v2

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$SizeMetrics;->getDescender()I

    move-result v0

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->toInt(I)I

    move-result v0

    sub-int/2addr v2, v0

    mul-int/2addr v2, p1

    mul-int/2addr v1, p2

    div-int/2addr v2, v1

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->setPixelSizes(II)V

    return v2
.end method

.method public scaleToFitSquare(III)I
    .locals 0

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->scaleForPixelHeight(I)I

    move-result p2

    invoke-virtual {p0, p1, p3}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->scaleForPixelWidth(II)I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method setPixelSizes(II)V
    .locals 1

    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->pixelWidth:I

    iput p2, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->pixelHeight:I

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->bitmapped:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->face:Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;->setPixelSizes(II)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string p2, "Couldn\'t set size for font"

    invoke-direct {p1, p2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->name:Ljava/lang/String;

    return-object v0
.end method
