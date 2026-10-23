.class public Laoc/kingdoms/lukasz/map/civilization/save/CivData4Serializer;
.super Ljava/lang/Object;
.source "CivData4Serializer.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Json$Serializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/badlogic/gdx/utils/Json$Serializer<",
        "Laoc/kingdoms/lukasz/map/civilization/save/CivData4;",
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
.method public read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;Ljava/lang/Class;)Laoc/kingdoms/lukasz/map/civilization/save/CivData4;
    .locals 0

    new-instance p1, Laoc/kingdoms/lukasz/map/civilization/save/CivData4;

    invoke-direct {p1}, Laoc/kingdoms/lukasz/map/civilization/save/CivData4;-><init>()V

    return-object p1
.end method

.method public bridge synthetic read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Laoc/kingdoms/lukasz/map/civilization/save/CivData4Serializer;->read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;Ljava/lang/Class;)Laoc/kingdoms/lukasz/map/civilization/save/CivData4;

    move-result-object p1

    return-object p1
.end method

.method public write(Lcom/badlogic/gdx/utils/Json;Laoc/kingdoms/lukasz/map/civilization/save/CivData4;Ljava/lang/Class;)V
    .locals 2

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart()V

    iget p3, p2, Laoc/kingdoms/lukasz/map/civilization/save/CivData4;->c:I

    if-eqz p3, :cond_0

    iget p3, p2, Laoc/kingdoms/lukasz/map/civilization/save/CivData4;->c:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string v0, "c"

    invoke-virtual {p1, v0, p3}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    iget p3, p2, Laoc/kingdoms/lukasz/map/civilization/save/CivData4;->g:I

    if-eqz p3, :cond_1

    iget p3, p2, Laoc/kingdoms/lukasz/map/civilization/save/CivData4;->g:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string v0, "g"

    invoke-virtual {p1, v0, p3}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    iget p3, p2, Laoc/kingdoms/lukasz/map/civilization/save/CivData4;->m:I

    if-eqz p3, :cond_2

    iget p3, p2, Laoc/kingdoms/lukasz/map/civilization/save/CivData4;->m:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string v0, "m"

    invoke-virtual {p1, v0, p3}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    iget p3, p2, Laoc/kingdoms/lukasz/map/civilization/save/CivData4;->s:I

    if-eqz p3, :cond_3

    iget p3, p2, Laoc/kingdoms/lukasz/map/civilization/save/CivData4;->s:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string v0, "s"

    invoke-virtual {p1, v0, p3}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    iget p3, p2, Laoc/kingdoms/lukasz/map/civilization/save/CivData4;->n:I

    if-eqz p3, :cond_4

    iget p3, p2, Laoc/kingdoms/lukasz/map/civilization/save/CivData4;->n:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string v0, "n"

    invoke-virtual {p1, v0, p3}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    iget p3, p2, Laoc/kingdoms/lukasz/map/civilization/save/CivData4;->u:I

    if-eqz p3, :cond_5

    iget p3, p2, Laoc/kingdoms/lukasz/map/civilization/save/CivData4;->u:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string v0, "u"

    invoke-virtual {p1, v0, p3}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5
    iget p3, p2, Laoc/kingdoms/lukasz/map/civilization/save/CivData4;->b:I

    if-eqz p3, :cond_6

    iget p3, p2, Laoc/kingdoms/lukasz/map/civilization/save/CivData4;->b:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string v0, "b"

    invoke-virtual {p1, v0, p3}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_6
    iget p3, p2, Laoc/kingdoms/lukasz/map/civilization/save/CivData4;->t:I

    const/4 v0, 0x1

    if-eq p3, v0, :cond_7

    iget p3, p2, Laoc/kingdoms/lukasz/map/civilization/save/CivData4;->t:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string v1, "t"

    invoke-virtual {p1, v1, p3}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_7
    iget p3, p2, Laoc/kingdoms/lukasz/map/civilization/save/CivData4;->r:I

    if-eq p3, v0, :cond_8

    iget p3, p2, Laoc/kingdoms/lukasz/map/civilization/save/CivData4;->r:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string v1, "r"

    invoke-virtual {p1, v1, p3}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_8
    iget p3, p2, Laoc/kingdoms/lukasz/map/civilization/save/CivData4;->y:I

    if-eq p3, v0, :cond_9

    iget p3, p2, Laoc/kingdoms/lukasz/map/civilization/save/CivData4;->y:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string v0, "y"

    invoke-virtual {p1, v0, p3}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_9
    iget p3, p2, Laoc/kingdoms/lukasz/map/civilization/save/CivData4;->e:I

    const/4 v0, -0x1

    if-eq p3, v0, :cond_a

    iget p3, p2, Laoc/kingdoms/lukasz/map/civilization/save/CivData4;->e:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string v0, "e"

    invoke-virtual {p1, v0, p3}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_a
    iget p3, p2, Laoc/kingdoms/lukasz/map/civilization/save/CivData4;->d:I

    if-eqz p3, :cond_b

    iget p3, p2, Laoc/kingdoms/lukasz/map/civilization/save/CivData4;->d:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string v0, "d"

    invoke-virtual {p1, v0, p3}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_b
    iget p3, p2, Laoc/kingdoms/lukasz/map/civilization/save/CivData4;->v:I

    if-eqz p3, :cond_c

    iget p2, p2, Laoc/kingdoms/lukasz/map/civilization/save/CivData4;->v:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "v"

    invoke-virtual {p1, p3, p2}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    return-void
.end method

.method public bridge synthetic write(Lcom/badlogic/gdx/utils/Json;Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 0

    check-cast p2, Laoc/kingdoms/lukasz/map/civilization/save/CivData4;

    invoke-virtual {p0, p1, p2, p3}, Laoc/kingdoms/lukasz/map/civilization/save/CivData4Serializer;->write(Lcom/badlogic/gdx/utils/Json;Laoc/kingdoms/lukasz/map/civilization/save/CivData4;Ljava/lang/Class;)V

    return-void
.end method
