.class public Laoc/kingdoms/lukasz/jakowski/Steam/SteamPublishThread;
.super Ljava/lang/Thread;
.source "SteamPublishThread.java"


# static fields
.field public static key:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Steam/SteamPublishThread;->key:Ljava/lang/String;

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->createItem(Ljava/lang/String;)V

    return-void
.end method
