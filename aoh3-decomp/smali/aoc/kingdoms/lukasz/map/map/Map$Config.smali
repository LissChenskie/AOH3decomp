.class public Laoc/kingdoms/lukasz/map/map/Map$Config;
.super Ljava/lang/Object;
.source "Map.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/map/map/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Config"
.end annotation


# instance fields
.field private Age_of_History:Ljava/lang/String;

.field private Map:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Laoc/kingdoms/lukasz/map/map/Map$Config;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Laoc/kingdoms/lukasz/map/map/Map$Config;->Map:Ljava/util/ArrayList;

    return-object p0
.end method
