.class Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$1;
.super Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;
.source "Diplomacy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->updateRivals(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$1;->this$0:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-direct {p0, p2, p3}, Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public update()V
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy$1;->id:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_Rivals;->chooseRivals(I)V

    return-void
.end method
