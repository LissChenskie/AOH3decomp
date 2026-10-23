.class Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager$5;
.super Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;
.source "DiplomacyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->declareWar(IIZLjava/util/List;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public update()V
    .locals 0

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->updateProvinceBorder()V

    return-void
.end method
