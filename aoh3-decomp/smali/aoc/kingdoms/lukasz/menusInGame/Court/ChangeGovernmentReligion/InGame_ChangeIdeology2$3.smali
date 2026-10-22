.class Laoc/kingdoms/lukasz/menusInGame/Court/ChangeGovernmentReligion/InGame_ChangeIdeology2$3;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonGame;
.source "InGame_ChangeIdeology2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/Court/ChangeGovernmentReligion/InGame_ChangeIdeology2;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/Court/ChangeGovernmentReligion/InGame_ChangeIdeology2;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/Court/ChangeGovernmentReligion/InGame_ChangeIdeology2;Ljava/lang/String;IIIIIZ)V
    .locals 9

    move-object v8, p0

    move-object v0, p1

    iput-object v0, v8, Laoc/kingdoms/lukasz/menusInGame/Court/ChangeGovernmentReligion/InGame_ChangeIdeology2$3;->this$0:Laoc/kingdoms/lukasz/menusInGame/Court/ChangeGovernmentReligion/InGame_ChangeIdeology2;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame;-><init>(Ljava/lang/String;IIIIIZ)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .locals 0

    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Court/ChangeGovernmentReligion/InGame_ChangeIdeology2;->confirm()V

    return-void
.end method

.method public buildElementHover()V
    .locals 4

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/ChangeGovernmentReligion/InGame_ChangeIdeology2;->toIdeologyID:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getHoverIdeology(IZZ)Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    move-result-object v0

    iput-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/Court/ChangeGovernmentReligion/InGame_ChangeIdeology2$3;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    return-void
.end method
