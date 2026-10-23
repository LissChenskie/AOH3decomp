.class public Laoc/kingdoms/lukasz/jakowski/AndroidLauncher;
.super Lcom/badlogic/gdx/backends/android/AndroidApplication;
.source "AndroidLauncher.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-static {p0}, Lcom/android/support/Main;->ServiceStart(Landroid/content/Context;)V

    invoke-super {p0, p1}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    invoke-direct {p1}, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;-><init>()V

    new-instance v0, Laoc/kingdoms/lukasz/jakowski/AA_Game;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/AA_Game;-><init>()V

    invoke-virtual {p0, v0, p1}, Laoc/kingdoms/lukasz/jakowski/AndroidLauncher;->initialize(Lcom/badlogic/gdx/ApplicationListener;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;)V

    return-void
.end method
