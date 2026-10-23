.class Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEconomy$3;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonMain;
.source "EditorMapEconomy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEconomy;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEconomy;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEconomy;Ljava/lang/String;IIIIIZ)V
    .locals 9

    move-object v8, p0

    move-object v0, p1

    iput-object v0, v8, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEconomy$3;->this$0:Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEconomy;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMain;-><init>(Ljava/lang/String;IIIIIZ)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .locals 3

    iget-object v0, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEconomy$3;->this$0:Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEconomy;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEconomy;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v0

    iget-object v2, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEconomy$3;->this$0:Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEconomy;

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEconomy;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getCurrent()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setCurrent(I)V

    return-void
.end method
