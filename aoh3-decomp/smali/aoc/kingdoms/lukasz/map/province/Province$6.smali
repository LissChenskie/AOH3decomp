.class Laoc/kingdoms/lukasz/map/province/Province$6;
.super Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;
.source "Province.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/map/province/Province;->setCivID(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/map/province/Province;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/map/province/Province;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Laoc/kingdoms/lukasz/map/province/Province$6;->this$0:Laoc/kingdoms/lukasz/map/province/Province;

    invoke-direct {p0, p2, p3}, Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public update()V
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province$6;->id:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateCivStability()V

    return-void
.end method
