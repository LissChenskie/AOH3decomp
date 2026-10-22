.class public Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;
.super Ljava/lang/Object;
.source "FBOProvinceNames.java"


# static fields
.field public static fboNumToGenerate_Names:I = 0x0

.field public static fboPosX:I = -0x1

.field public static fboPosY:I = -0x1

.field public static fboProvince_Names:Lcom/badlogic/gdx/graphics/glutils/FrameBuffer; = null

.field public static lastPosX:I = -0x1

.field public static lastPosY:I = -0x1

.field public static textureProvince_Names:Lcom/badlogic/gdx/graphics/Texture;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final disposeProvinceNamesFBO()V
    .locals 1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->fboProvince_Names:Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->dispose()V

    const/4 v0, 0x0

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->fboProvince_Names:Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

    :cond_0
    return-void
.end method

.method public static final disposeProvinceNamesTexture()V
    .locals 1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->textureProvince_Names:Lcom/badlogic/gdx/graphics/Texture;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    const/4 v0, 0x0

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->textureProvince_Names:Lcom/badlogic/gdx/graphics/Texture;

    :cond_0
    return-void
.end method

.method public static final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFFFIIIIZZ)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p14

    move/from16 v16, p15

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->textureProvince_Names:Lcom/badlogic/gdx/graphics/Texture;

    move/from16 v2, p1

    int-to-float v2, v2

    move/from16 v3, p2

    neg-int v3, v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    move/from16 v4, p3

    int-to-float v4, v4

    move/from16 v5, p4

    int-to-float v5, v5

    move/from16 v6, p5

    int-to-float v6, v6

    move/from16 v7, p6

    int-to-float v7, v7

    invoke-virtual/range {v0 .. v16}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFFFIIIIZZ)V

    return-void
.end method

.method public static final drawProvinceNames(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 17

    move-object/from16 v15, p0

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->PROVINCE_NAMES_ALPHA:F

    sget v2, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_PROVINCE_NAMES_ALPHA:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    const/4 v14, 0x0

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v15, v16

    invoke-static/range {v0 .. v15}, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFFFIIIIZZ)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public static final redrawnProvinceNames()V
    .locals 1

    const v0, -0x8c4c17

    sput v0, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->lastPosX:I

    return-void
.end method

.method public static final updateFBO()V
    .locals 2

    sget v0, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->lastPosX:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v1

    if-ne v0, v1, :cond_0

    sget v0, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->lastPosY:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v1

    if-ne v0, v1, :cond_0

    sget v0, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->fboNumToGenerate_Names:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->fboNumToGenerate_Names:I

    goto :goto_0

    :cond_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->lastPosX:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->lastPosY:I

    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->fboNumToGenerate_Names:I

    :goto_0
    return-void
.end method
