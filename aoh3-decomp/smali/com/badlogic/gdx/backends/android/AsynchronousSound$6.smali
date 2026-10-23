.class Lcom/badlogic/gdx/backends/android/AsynchronousSound$6;
.super Ljava/lang/Object;
.source "AsynchronousSound.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/backends/android/AsynchronousSound;->loop(FFF)J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/backends/android/AsynchronousSound;

.field final synthetic val$pan:F

.field final synthetic val$pitch:F

.field final synthetic val$volume:F


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/backends/android/AsynchronousSound;FFF)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AsynchronousSound$6;->this$0:Lcom/badlogic/gdx/backends/android/AsynchronousSound;

    iput p2, p0, Lcom/badlogic/gdx/backends/android/AsynchronousSound$6;->val$volume:F

    iput p3, p0, Lcom/badlogic/gdx/backends/android/AsynchronousSound$6;->val$pitch:F

    iput p4, p0, Lcom/badlogic/gdx/backends/android/AsynchronousSound$6;->val$pan:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AsynchronousSound$6;->this$0:Lcom/badlogic/gdx/backends/android/AsynchronousSound;

    invoke-static {v0}, Lcom/badlogic/gdx/backends/android/AsynchronousSound;->access$000(Lcom/badlogic/gdx/backends/android/AsynchronousSound;)Lcom/badlogic/gdx/audio/Sound;

    move-result-object v0

    iget v1, p0, Lcom/badlogic/gdx/backends/android/AsynchronousSound$6;->val$volume:F

    iget v2, p0, Lcom/badlogic/gdx/backends/android/AsynchronousSound$6;->val$pitch:F

    iget v3, p0, Lcom/badlogic/gdx/backends/android/AsynchronousSound$6;->val$pan:F

    invoke-interface {v0, v1, v2, v3}, Lcom/badlogic/gdx/audio/Sound;->loop(FFF)J

    return-void
.end method
