.class Lcom/badlogic/gdx/assets/AssetManager$RefCountedContainer;
.super Ljava/lang/Object;
.source "AssetManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/assets/AssetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RefCountedContainer"
.end annotation


# instance fields
.field object:Ljava/lang/Object;

.field refCount:I


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/assets/AssetManager$RefCountedContainer;->refCount:I

    return-void
.end method
