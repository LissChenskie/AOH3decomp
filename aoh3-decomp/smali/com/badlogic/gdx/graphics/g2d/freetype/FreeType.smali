.class public Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;
.super Ljava/lang/Object;
.source "FreeType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Stroker;,
        Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphMetrics;,
        Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Bitmap;,
        Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Glyph;,
        Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$GlyphSlot;,
        Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$SizeMetrics;,
        Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Size;,
        Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;,
        Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;,
        Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Pointer;
    }
.end annotation


# static fields
.field public static FT_ENCODING_ADOBE_CUSTOM:I = 0x0

.field public static FT_ENCODING_ADOBE_EXPERT:I = 0x0

.field public static FT_ENCODING_ADOBE_LATIN_1:I = 0x0

.field public static FT_ENCODING_ADOBE_STANDARD:I = 0x0

.field public static FT_ENCODING_APPLE_ROMAN:I = 0x0

.field public static FT_ENCODING_BIG5:I = 0x0

.field public static FT_ENCODING_GB2312:I = 0x0

.field public static FT_ENCODING_JOHAB:I = 0x0

.field public static FT_ENCODING_MS_SYMBOL:I = 0x0

.field public static FT_ENCODING_NONE:I = 0x0

.field public static FT_ENCODING_OLD_LATIN_2:I = 0x0

.field public static FT_ENCODING_SJIS:I = 0x0

.field public static FT_ENCODING_UNICODE:I = 0x0

.field public static FT_ENCODING_WANSUNG:I = 0x0

.field public static FT_FACE_FLAG_CID_KEYED:I = 0x0

.field public static FT_FACE_FLAG_EXTERNAL_STREAM:I = 0x0

.field public static FT_FACE_FLAG_FAST_GLYPHS:I = 0x0

.field public static FT_FACE_FLAG_FIXED_SIZES:I = 0x0

.field public static FT_FACE_FLAG_FIXED_WIDTH:I = 0x0

.field public static FT_FACE_FLAG_GLYPH_NAMES:I = 0x0

.field public static FT_FACE_FLAG_HINTER:I = 0x0

.field public static FT_FACE_FLAG_HORIZONTAL:I = 0x0

.field public static FT_FACE_FLAG_KERNING:I = 0x0

.field public static FT_FACE_FLAG_MULTIPLE_MASTERS:I = 0x0

.field public static FT_FACE_FLAG_SCALABLE:I = 0x0

.field public static FT_FACE_FLAG_SFNT:I = 0x0

.field public static FT_FACE_FLAG_TRICKY:I = 0x0

.field public static FT_FACE_FLAG_VERTICAL:I = 0x0

.field public static FT_KERNING_DEFAULT:I = 0x0

.field public static FT_KERNING_UNFITTED:I = 0x0

.field public static FT_KERNING_UNSCALED:I = 0x0

.field public static FT_LOAD_CROP_BITMAP:I = 0x0

.field public static FT_LOAD_DEFAULT:I = 0x0

.field public static FT_LOAD_FORCE_AUTOHINT:I = 0x0

.field public static FT_LOAD_IGNORE_GLOBAL_ADVANCE_WIDTH:I = 0x0

.field public static FT_LOAD_IGNORE_TRANSFORM:I = 0x0

.field public static FT_LOAD_LINEAR_DESIGN:I = 0x0

.field public static FT_LOAD_MONOCHROME:I = 0x0

.field public static FT_LOAD_NO_AUTOHINT:I = 0x0

.field public static FT_LOAD_NO_BITMAP:I = 0x0

.field public static FT_LOAD_NO_HINTING:I = 0x0

.field public static FT_LOAD_NO_RECURSE:I = 0x0

.field public static FT_LOAD_NO_SCALE:I = 0x0

.field public static FT_LOAD_PEDANTIC:I = 0x0

.field public static FT_LOAD_RENDER:I = 0x0

.field public static FT_LOAD_TARGET_LCD:I = 0x0

.field public static FT_LOAD_TARGET_LCD_V:I = 0x0

.field public static FT_LOAD_TARGET_LIGHT:I = 0x0

.field public static FT_LOAD_TARGET_MONO:I = 0x0

.field public static FT_LOAD_TARGET_NORMAL:I = 0x0

.field public static FT_LOAD_VERTICAL_LAYOUT:I = 0x0

.field public static FT_PIXEL_MODE_GRAY:I = 0x2

.field public static FT_PIXEL_MODE_GRAY2:I = 0x3

.field public static FT_PIXEL_MODE_GRAY4:I = 0x4

.field public static FT_PIXEL_MODE_LCD:I = 0x5

.field public static FT_PIXEL_MODE_LCD_V:I = 0x6

.field public static FT_PIXEL_MODE_MONO:I = 0x1

.field public static FT_PIXEL_MODE_NONE:I

.field public static FT_RENDER_MODE_LCD:I

.field public static FT_RENDER_MODE_LCD_V:I

.field public static FT_RENDER_MODE_LIGHT:I

.field public static FT_RENDER_MODE_MAX:I

.field public static FT_RENDER_MODE_MONO:I

.field public static FT_RENDER_MODE_NORMAL:I

.field public static FT_STROKER_LINECAP_BUTT:I

.field public static FT_STROKER_LINECAP_ROUND:I

.field public static FT_STROKER_LINECAP_SQUARE:I

.field public static FT_STROKER_LINEJOIN_BEVEL:I

.field public static FT_STROKER_LINEJOIN_MITER:I

.field public static FT_STROKER_LINEJOIN_MITER_FIXED:I

.field public static FT_STROKER_LINEJOIN_MITER_VARIABLE:I

.field public static FT_STROKER_LINEJOIN_ROUND:I

.field public static FT_STYLE_FLAG_BOLD:I

.field public static FT_STYLE_FLAG_ITALIC:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/16 v0, 0x73

    const/16 v1, 0x79

    const/16 v2, 0x6d

    const/16 v3, 0x62

    invoke-static {v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->encode(CCCC)I

    move-result v1

    sput v1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_ENCODING_MS_SYMBOL:I

    const/16 v1, 0x63

    const/16 v4, 0x75

    const/16 v5, 0x6e

    const/16 v6, 0x69

    invoke-static {v4, v5, v6, v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->encode(CCCC)I

    move-result v1

    sput v1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_ENCODING_UNICODE:I

    const/16 v1, 0x6a

    invoke-static {v0, v1, v6, v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->encode(CCCC)I

    move-result v4

    sput v4, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_ENCODING_SJIS:I

    const/16 v4, 0x67

    const/16 v7, 0x20

    invoke-static {v4, v3, v7, v7}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->encode(CCCC)I

    move-result v8

    sput v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_ENCODING_GB2312:I

    const/16 v8, 0x35

    invoke-static {v3, v6, v4, v8}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->encode(CCCC)I

    move-result v3

    sput v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_ENCODING_BIG5:I

    const/16 v3, 0x77

    const/16 v4, 0x61

    invoke-static {v3, v4, v5, v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->encode(CCCC)I

    move-result v0

    sput v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_ENCODING_WANSUNG:I

    const/16 v0, 0x6f

    const/16 v3, 0x68

    invoke-static {v1, v0, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->encode(CCCC)I

    move-result v0

    sput v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_ENCODING_JOHAB:I

    const/16 v0, 0x41

    const/16 v1, 0x44

    const/16 v3, 0x4f

    const/16 v6, 0x42

    invoke-static {v0, v1, v3, v6}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->encode(CCCC)I

    move-result v3

    sput v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_ENCODING_ADOBE_STANDARD:I

    const/16 v3, 0x45

    invoke-static {v0, v1, v6, v3}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->encode(CCCC)I

    move-result v3

    sput v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_ENCODING_ADOBE_EXPERT:I

    const/16 v3, 0x43

    invoke-static {v0, v1, v6, v3}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->encode(CCCC)I

    move-result v0

    sput v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_ENCODING_ADOBE_CUSTOM:I

    const/16 v0, 0x31

    const/16 v1, 0x6c

    const/16 v3, 0x74

    invoke-static {v1, v4, v3, v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->encode(CCCC)I

    move-result v0

    sput v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_ENCODING_ADOBE_LATIN_1:I

    const/16 v0, 0x32

    invoke-static {v1, v4, v3, v0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->encode(CCCC)I

    move-result v0

    sput v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_ENCODING_OLD_LATIN_2:I

    const/16 v0, 0x72

    invoke-static {v4, v0, v2, v5}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->encode(CCCC)I

    move-result v0

    sput v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_ENCODING_APPLE_ROMAN:I

    const/4 v0, 0x1

    sput v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_FACE_FLAG_SCALABLE:I

    const/4 v1, 0x2

    sput v1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_FACE_FLAG_FIXED_SIZES:I

    const/4 v2, 0x4

    sput v2, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_FACE_FLAG_FIXED_WIDTH:I

    const/16 v3, 0x8

    sput v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_FACE_FLAG_SFNT:I

    const/16 v4, 0x10

    sput v4, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_FACE_FLAG_HORIZONTAL:I

    sput v7, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_FACE_FLAG_VERTICAL:I

    const/16 v5, 0x40

    sput v5, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_FACE_FLAG_KERNING:I

    const/16 v6, 0x80

    sput v6, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_FACE_FLAG_FAST_GLYPHS:I

    const/16 v8, 0x100

    sput v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_FACE_FLAG_MULTIPLE_MASTERS:I

    const/16 v8, 0x200

    sput v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_FACE_FLAG_GLYPH_NAMES:I

    const/16 v8, 0x400

    sput v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_FACE_FLAG_EXTERNAL_STREAM:I

    const/16 v8, 0x800

    sput v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_FACE_FLAG_HINTER:I

    const/16 v8, 0x1000

    sput v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_FACE_FLAG_CID_KEYED:I

    const/16 v8, 0x2000

    sput v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_FACE_FLAG_TRICKY:I

    sput v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_STYLE_FLAG_ITALIC:I

    sput v1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_STYLE_FLAG_BOLD:I

    const/4 v8, 0x0

    sput v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_LOAD_DEFAULT:I

    sput v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_LOAD_NO_SCALE:I

    sput v1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_LOAD_NO_HINTING:I

    sput v2, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_LOAD_RENDER:I

    sput v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_LOAD_NO_BITMAP:I

    sput v4, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_LOAD_VERTICAL_LAYOUT:I

    sput v7, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_LOAD_FORCE_AUTOHINT:I

    sput v5, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_LOAD_CROP_BITMAP:I

    sput v6, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_LOAD_PEDANTIC:I

    const/16 v3, 0x200

    sput v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_LOAD_IGNORE_GLOBAL_ADVANCE_WIDTH:I

    const/16 v3, 0x400

    sput v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_LOAD_NO_RECURSE:I

    const/16 v3, 0x800

    sput v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_LOAD_IGNORE_TRANSFORM:I

    const/16 v3, 0x1000

    sput v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_LOAD_MONOCHROME:I

    const/16 v3, 0x2000

    sput v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_LOAD_LINEAR_DESIGN:I

    const v3, 0x8000

    sput v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_LOAD_NO_AUTOHINT:I

    sput v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_LOAD_TARGET_NORMAL:I

    const/high16 v3, 0x10000

    sput v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_LOAD_TARGET_LIGHT:I

    const/high16 v3, 0x20000

    sput v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_LOAD_TARGET_MONO:I

    const/high16 v3, 0x30000

    sput v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_LOAD_TARGET_LCD:I

    const/high16 v3, 0x40000

    sput v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_LOAD_TARGET_LCD_V:I

    sput v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_RENDER_MODE_NORMAL:I

    sput v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_RENDER_MODE_LIGHT:I

    sput v1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_RENDER_MODE_MONO:I

    const/4 v3, 0x3

    sput v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_RENDER_MODE_LCD:I

    sput v2, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_RENDER_MODE_LCD_V:I

    const/4 v2, 0x5

    sput v2, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_RENDER_MODE_MAX:I

    sput v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_KERNING_DEFAULT:I

    sput v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_KERNING_UNFITTED:I

    sput v1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_KERNING_UNSCALED:I

    sput v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_STROKER_LINECAP_BUTT:I

    sput v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_STROKER_LINECAP_ROUND:I

    sput v1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_STROKER_LINECAP_SQUARE:I

    sput v8, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_STROKER_LINEJOIN_ROUND:I

    sput v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_STROKER_LINEJOIN_BEVEL:I

    sput v1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_STROKER_LINEJOIN_MITER_VARIABLE:I

    sput v1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_STROKER_LINEJOIN_MITER:I

    const/4 v0, 0x3

    sput v0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->FT_STROKER_LINEJOIN_MITER_FIXED:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static encode(CCCC)I
    .locals 0

    shl-int/lit8 p0, p0, 0x18

    shl-int/lit8 p1, p1, 0x10

    or-int/2addr p0, p1

    shl-int/lit8 p1, p2, 0x8

    or-int/2addr p0, p1

    or-int/2addr p0, p3

    return p0
.end method

.method static native getLastErrorCode()I
.end method

.method public static initFreeType()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;
    .locals 4

    new-instance v0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;-><init>()V

    const-string v1, "gdx-freetype"

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->load(Ljava/lang/String;)V

    invoke-static {}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->initFreeTypeJni()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;

    invoke-direct {v2, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;-><init>(J)V

    return-object v2

    :cond_0
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Couldn\'t initialize FreeType library, FreeType error code: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->getLastErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static native initFreeTypeJni()J
.end method

.method public static toInt(I)I
    .locals 0

    add-int/lit8 p0, p0, 0x3f

    and-int/lit8 p0, p0, -0x40

    shr-int/lit8 p0, p0, 0x6

    return p0
.end method
