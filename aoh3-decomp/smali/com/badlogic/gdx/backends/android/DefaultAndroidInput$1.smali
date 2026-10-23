.class Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$1;
.super Lcom/badlogic/gdx/utils/Pool;
.source "DefaultAndroidInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/utils/Pool<",
        "Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;II)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$1;->this$0:Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;

    invoke-direct {p0, p2, p3}, Lcom/badlogic/gdx/utils/Pool;-><init>(II)V

    return-void
.end method


# virtual methods
.method protected newObject()Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;

    invoke-direct {v0}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newObject()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$1;->newObject()Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$KeyEvent;

    move-result-object v0

    return-object v0
.end method
