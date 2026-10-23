.class public Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData3Serializer;
.super Ljava/lang/Object;
.source "CivilizationEventsData3Serializer.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Json$Serializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/badlogic/gdx/utils/Json$Serializer<",
        "Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData3;",
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
.method public read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;Ljava/lang/Class;)Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData3;
    .locals 1

    new-instance p1, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData3;

    invoke-direct {p1}, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData3;-><init>()V

    const-string p3, "a"

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;I)I

    move-result p3

    iput p3, p1, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData3;->a:I

    const/4 p3, 0x0

    sget-object p3, Laoc/kingdoms/lukasz/menusEditor/RJR/ATsAGKCnv;->MdUjHBX:Ljava/lang/String;

    invoke-virtual {p2, p3, v0}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p1, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData3;->p:I

    return-object p1
.end method

.method public bridge synthetic read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData3Serializer;->read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;Ljava/lang/Class;)Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData3;

    move-result-object p1

    return-object p1
.end method

.method public write(Lcom/badlogic/gdx/utils/Json;Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData3;Ljava/lang/Class;)V
    .locals 1

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart()V

    iget p3, p2, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData3;->a:I

    if-eqz p3, :cond_0

    iget p3, p2, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData3;->a:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string v0, "a"

    invoke-virtual {p1, v0, p3}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    iget p3, p2, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData3;->p:I

    if-eqz p3, :cond_1

    iget p2, p2, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData3;->p:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x0

    sget-object p3, Laoc/kingdoms/lukasz/map/terrain/exjB/uiwPYaNhJS;->lKUJ:Ljava/lang/String;

    invoke-virtual {p1, p3, p2}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    return-void
.end method

.method public bridge synthetic write(Lcom/badlogic/gdx/utils/Json;Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 0

    check-cast p2, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData3;

    invoke-virtual {p0, p1, p2, p3}, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData3Serializer;->write(Lcom/badlogic/gdx/utils/Json;Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData3;Ljava/lang/Class;)V

    return-void
.end method
