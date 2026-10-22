.class public Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveNoConnectionData;
.super Ljava/lang/Object;
.source "AI_MoveNoConnectionData.java"


# instance fields
.field public fromProvince:I

.field public toProvince:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveNoConnectionData;->fromProvince:I

    iput p2, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveNoConnectionData;->toProvince:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveNoConnectionData;

    iget v2, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveNoConnectionData;->fromProvince:I

    iget v3, p1, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveNoConnectionData;->fromProvince:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveNoConnectionData;->toProvince:I

    iget p1, p1, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveNoConnectionData;->toProvince:I

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveNoConnectionData;->fromProvince:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveNoConnectionData;->toProvince:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
