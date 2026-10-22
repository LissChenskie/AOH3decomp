.class Laoc/kingdoms/lukasz/jakowski/SoundsManager$4;
.super Ljava/lang/Object;
.source "SoundsManager.java"

# interfaces
.implements Lcom/badlogic/gdx/audio/Music$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/jakowski/SoundsManager;->loadNextMusic(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/jakowski/SoundsManager;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/jakowski/SoundsManager;)V
    .locals 0

    iput-object p1, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager$4;->this$0:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Lcom/badlogic/gdx/audio/Music;)V
    .locals 0

    iget-object p1, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager$4;->this$0:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->loadNextMusic()V

    return-void
.end method
