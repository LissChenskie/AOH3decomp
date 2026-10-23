.class public Laoc/kingdoms/lukasz/jakowski/FileManager;
.super Ljava/lang/Object;
.source "FileManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/jakowski/FileManager$LoadInterface;
    }
.end annotation


# static fields
.field public static IS_MAC:Z

.field public static loadInterface:Laoc/kingdoms/lukasz/jakowski/FileManager$LoadInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSaveType(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;
    .locals 1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadInterface:Laoc/kingdoms/lukasz/jakowski/FileManager$LoadInterface;

    invoke-interface {v0, p0}, Laoc/kingdoms/lukasz/jakowski/FileManager$LoadInterface;->getSaveType(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object p0

    return-object p0
.end method

.method public static initLoadInterface()V
    .locals 1

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/FileManager;->IS_MAC:Z

    if-eqz v0, :cond_0

    new-instance v0, Laoc/kingdoms/lukasz/jakowski/FileManager$1;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager$1;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadInterface:Laoc/kingdoms/lukasz/jakowski/FileManager$LoadInterface;

    goto :goto_0

    :cond_0
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/FileManager$2;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager$2;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadInterface:Laoc/kingdoms/lukasz/jakowski/FileManager$LoadInterface;

    goto :goto_0

    :cond_1
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/FileManager$3;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager$3;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadInterface:Laoc/kingdoms/lukasz/jakowski/FileManager$LoadInterface;

    :goto_0
    return-void
.end method

.method public static loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;
    .locals 1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadInterface:Laoc/kingdoms/lukasz/jakowski/FileManager$LoadInterface;

    invoke-interface {v0, p0}, Laoc/kingdoms/lukasz/jakowski/FileManager$LoadInterface;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object p0

    return-object p0
.end method
