.class Laoc/kingdoms/lukasz/map/rebels/RevolutionManager$3;
.super Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;
.source "RevolutionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->addCiv(Ljava/lang/String;Ljava/util/List;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager$3;->this$0:Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;

    invoke-direct {p0, p2, p3}, Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public update()V
    .locals 3

    iget v0, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager$3;->id:I

    iget v1, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager$3;->id:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Laoc/kingdoms/lukasz/map/RulersManager;->loadRuler(ILjava/lang/String;Z)V

    return-void
.end method
