.class public Lcom/android/support/Main;
.super Ljava/lang/Object;
.source "Main.java"


# static fields
.field public static baseContext:Landroid/content/Context;

.field public static idk:I

.field public static lol:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "PDALIFE"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x5

    sput v0, Lcom/android/support/Main;->lol:I

    const/4 v0, 0x1

    sput v0, Lcom/android/support/Main;->idk:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native CheckOverlayPermission(Landroid/content/Context;)V
.end method

.method public static ServiceStart(Landroid/content/Context;)V
    .locals 3

    sput-object p0, Lcom/android/support/Main;->baseContext:Landroid/content/Context;

    new-instance v0, Lcom/android/support/DataExtractor;

    invoke-direct {v0}, Lcom/android/support/DataExtractor;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/support/DataExtractor;->ExtractData(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/support/Main;->tst()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static Start(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/support/CrashHandler;->init(Landroid/content/Context;Z)V

    sput-object p0, Lcom/android/support/Main;->baseContext:Landroid/content/Context;

    new-instance v1, Lcom/android/support/DataExtractor;

    invoke-direct {v1}, Lcom/android/support/DataExtractor;-><init>()V

    invoke-virtual {v1, p0}, Lcom/android/support/DataExtractor;->ExtractData(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/support/Main;->tst()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-static {p0}, Lcom/android/support/Main;->CheckOverlayPermission(Landroid/content/Context;)V

    return-void
.end method

.method public static StartWithoutPermission(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/support/CrashHandler;->init(Landroid/content/Context;Z)V

    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/support/Menu;

    invoke-direct {v0, p0}, Lcom/android/support/Menu;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/support/Menu;->SetWindowManagerActivity()V

    invoke-virtual {v0}, Lcom/android/support/Menu;->ShowMenu()V

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/android/support/Main;->CheckOverlayPermission(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method private static native tst()Ljava/lang/String;
.end method
