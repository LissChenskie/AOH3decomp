.class Lcom/badlogic/gdx/utils/Scaling$5;
.super Lcom/badlogic/gdx/utils/Scaling;
.source "Scaling.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/Scaling;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/badlogic/gdx/utils/Scaling;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(FFFF)Lcom/badlogic/gdx/math/Vector2;
    .locals 0

    div-float/2addr p4, p2

    sget-object p3, Lcom/badlogic/gdx/utils/Scaling$5;->temp:Lcom/badlogic/gdx/math/Vector2;

    mul-float/2addr p1, p4

    iput p1, p3, Lcom/badlogic/gdx/math/Vector2;->x:F

    sget-object p1, Lcom/badlogic/gdx/utils/Scaling$5;->temp:Lcom/badlogic/gdx/math/Vector2;

    mul-float/2addr p2, p4

    iput p2, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    sget-object p1, Lcom/badlogic/gdx/utils/Scaling$5;->temp:Lcom/badlogic/gdx/math/Vector2;

    return-object p1
.end method
