.class Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2$15;
.super Laoc/kingdoms/lukasz/menu_element/SpaceHorizontal;
.source "InGame_CourtOptions2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;III)V
    .locals 0

    iput-object p1, p0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2$15;->this$0:Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;

    invoke-direct {p0, p2, p3, p4}, Laoc/kingdoms/lukasz/menu_element/SpaceHorizontal;-><init>(III)V

    return-void
.end method


# virtual methods
.method public getVisible()Z
    .locals 1

    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->SANDBOX:Z

    return v0
.end method
