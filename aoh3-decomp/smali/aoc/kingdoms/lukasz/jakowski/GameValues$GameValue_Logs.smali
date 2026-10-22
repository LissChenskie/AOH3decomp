.class public Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Logs;
.super Ljava/lang/Object;
.source "GameValues.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/jakowski/GameValues;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GameValue_Logs"
.end annotation


# instance fields
.field public SAVE_LOGS_LIMIT:I

.field public SAVE_LOGS_TO_FILE:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Logs;->SAVE_LOGS_TO_FILE:Z

    const/16 v0, 0x3e7

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Logs;->SAVE_LOGS_LIMIT:I

    return-void
.end method
