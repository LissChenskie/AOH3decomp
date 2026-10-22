.class public Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;
.super Ljava/lang/Object;
.source "Flag_Overlay_GameData.java"


# instance fields
.field public iHeight:I

.field public iOverlayID:I

.field public iPosX:I

.field public iPosY:I

.field public iWidth:I

.field public oColor:Lcom/badlogic/gdx/graphics/Color;


# direct methods
.method protected constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;->iOverlayID:I

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    iput-object v1, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;->oColor:Lcom/badlogic/gdx/graphics/Color;

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;->iPosX:I

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;->iPosY:I

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;->iWidth:I

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;->iHeight:I

    iput p1, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;->iOverlayID:I

    return-void
.end method
