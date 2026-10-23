.class public Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget$ProvValue;
.super Ljava/lang/Object;
.source "InGame_Budget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ProvValue"
.end annotation


# instance fields
.field public fValue:F

.field public iProvinceID:I

.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget;


# direct methods
.method public constructor <init>(Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget;IF)V
    .locals 0

    iput-object p1, p0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget$ProvValue;->this$0:Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget$ProvValue;->iProvinceID:I

    iput p3, p0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget$ProvValue;->fValue:F

    return-void
.end method
