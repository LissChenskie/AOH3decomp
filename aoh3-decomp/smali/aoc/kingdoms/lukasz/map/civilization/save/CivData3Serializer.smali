.class public Laoc/kingdoms/lukasz/map/civilization/save/CivData3Serializer;
.super Ljava/lang/Object;
.source "CivData3Serializer.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Json$Serializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/badlogic/gdx/utils/Json$Serializer<",
        "Laoc/kingdoms/lukasz/map/civilization/save/CivData3;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;Ljava/lang/Class;)Laoc/kingdoms/lukasz/map/civilization/save/CivData3;
    .locals 0

    new-instance p1, Laoc/kingdoms/lukasz/map/civilization/save/CivData3;

    invoke-direct {p1}, Laoc/kingdoms/lukasz/map/civilization/save/CivData3;-><init>()V

    return-object p1
.end method

.method public bridge synthetic read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Laoc/kingdoms/lukasz/map/civilization/save/CivData3Serializer;->read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;Ljava/lang/Class;)Laoc/kingdoms/lukasz/map/civilization/save/CivData3;

    move-result-object p1

    return-object p1
.end method

.method public write(Lcom/badlogic/gdx/utils/Json;Laoc/kingdoms/lukasz/map/civilization/save/CivData3;Ljava/lang/Class;)V
    .locals 2

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart()V

    iget p3, p2, Laoc/kingdoms/lukasz/map/civilization/save/CivData3;->a:I

    if-eqz p3, :cond_0

    iget p3, p2, Laoc/kingdoms/lukasz/map/civilization/save/CivData3;->a:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string v0, "a"

    invoke-virtual {p1, v0, p3}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    iget p3, p2, Laoc/kingdoms/lukasz/map/civilization/save/CivData3;->w:F

    const/4 v0, 0x0

    cmpl-float p3, p3, v0

    if-eqz p3, :cond_1

    iget p3, p2, Laoc/kingdoms/lukasz/map/civilization/save/CivData3;->w:F

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    const-string v1, "w"

    invoke-virtual {p1, v1, p3}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    iget p3, p2, Laoc/kingdoms/lukasz/map/civilization/save/CivData3;->e:F

    cmpl-float p3, p3, v0

    if-eqz p3, :cond_2

    iget p3, p2, Laoc/kingdoms/lukasz/map/civilization/save/CivData3;->e:F

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    const-string v1, "e"

    invoke-virtual {p1, v1, p3}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    iget p3, p2, Laoc/kingdoms/lukasz/map/civilization/save/CivData3;->t:F

    cmpl-float p3, p3, v0

    if-eqz p3, :cond_3

    iget p3, p2, Laoc/kingdoms/lukasz/map/civilization/save/CivData3;->t:F

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    const-string v1, "t"

    invoke-virtual {p1, v1, p3}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    iget p3, p2, Laoc/kingdoms/lukasz/map/civilization/save/CivData3;->c:F

    cmpl-float p3, p3, v0

    if-eqz p3, :cond_4

    iget p2, p2, Laoc/kingdoms/lukasz/map/civilization/save/CivData3;->c:F

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const-string p3, "c"

    invoke-virtual {p1, p3, p2}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    return-void
.end method

.method public bridge synthetic write(Lcom/badlogic/gdx/utils/Json;Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 0

    check-cast p2, Laoc/kingdoms/lukasz/map/civilization/save/CivData3;

    invoke-virtual {p0, p1, p2, p3}, Laoc/kingdoms/lukasz/map/civilization/save/CivData3Serializer;->write(Lcom/badlogic/gdx/utils/Json;Laoc/kingdoms/lukasz/map/civilization/save/CivData3;Ljava/lang/Class;)V

    return-void
.end method
