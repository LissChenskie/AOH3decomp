.class Laoc/kingdoms/lukasz/map/allianceHRE/HREManager$1;
.super Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;
.source "HREManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/map/allianceHRE/HREManager;->uniteHRE(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public update()V
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/allianceHRE/HREManager$1;->id:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->disposeFlag()V

    iget v0, p0, Laoc/kingdoms/lukasz/map/allianceHRE/HREManager$1;->id:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->loadFlag()Z

    return-void
.end method
