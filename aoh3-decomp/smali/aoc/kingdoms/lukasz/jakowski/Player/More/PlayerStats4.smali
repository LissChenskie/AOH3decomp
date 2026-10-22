.class public Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats4;
.super Ljava/lang/Object;
.source "PlayerStats4.java"


# instance fields
.field public flagsGenerated:Z

.field public unionTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats4;->unionTags:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats4;->flagsGenerated:Z

    return-void
.end method
