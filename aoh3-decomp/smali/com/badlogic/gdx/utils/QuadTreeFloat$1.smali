.class Lcom/badlogic/gdx/utils/QuadTreeFloat$1;
.super Lcom/badlogic/gdx/utils/Pool;
.source "QuadTreeFloat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/QuadTreeFloat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/utils/Pool;-><init>(II)V

    return-void
.end method


# virtual methods
.method protected newObject()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/utils/QuadTreeFloat;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/QuadTreeFloat;-><init>()V

    return-object v0
.end method
