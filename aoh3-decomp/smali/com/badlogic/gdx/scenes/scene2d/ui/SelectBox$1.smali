.class Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$1;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;
.source "SelectBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;Lcom/badlogic/gdx/utils/Array;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    invoke-direct {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;-><init>(Lcom/badlogic/gdx/utils/Array;)V

    return-void
.end method


# virtual methods
.method public fireChangeEvent()Z
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    iget-boolean v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->selectedPrefWidth:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->invalidateHierarchy()V

    :cond_0
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->fireChangeEvent()Z

    move-result v0

    return v0
.end method
