.class public Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_OverlayImage;
.super Ljava/lang/Object;
.source "Flag_OverlayImage.java"


# instance fields
.field public iOverlayID:I

.field public imageOverlay:Laoc/kingdoms/lukasz/textures/Image;


# direct methods
.method public constructor <init>(I)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_OverlayImage;->iOverlayID:I

    new-instance v0, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v1, Lcom/badlogic/gdx/graphics/Texture;

    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "gfx/editorFlags/overlays/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->flagManager:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->lOverlays:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay;

    iget-object p1, p1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay;->sName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, ".png"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object p1, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v0, v1, p1}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_OverlayImage;->imageOverlay:Laoc/kingdoms/lukasz/textures/Image;

    return-void
.end method
